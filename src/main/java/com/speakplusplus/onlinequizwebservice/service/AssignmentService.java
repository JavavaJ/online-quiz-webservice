package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.dto.AssignmentDTO;
import com.speakplusplus.onlinequizwebservice.dto.AssignmentFullDTO;
import com.speakplusplus.onlinequizwebservice.model.Assignment;
import com.speakplusplus.onlinequizwebservice.model.Question;
import com.speakplusplus.onlinequizwebservice.model.User;
import com.speakplusplus.onlinequizwebservice.repo.AssignmentRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AssignmentService {

    private final QuestionService questionService;
    private final UserService userService;
    private final AssignmentRepo assignmentRepo;
    private final ApplicationContext applicationContext;

    private AssignmentService assignmentService;


    @Transactional
    public Assignment saveAssignment(Assignment assignment) {
        return assignmentRepo.save(assignment);
    }

    @Transactional
    public Long saveAssignment(AssignmentDTO assignmentDTO) {
        Assignment assignment = castDTOtoAssignment(assignmentDTO);
        Assignment savedAssignment = assignmentService.saveAssignment(assignment);
        return savedAssignment.getId();
    }

    @Transactional
    public Assignment getAssignment(Long id) {
        Optional<Assignment> assignmentOptional = assignmentRepo.findById(id);
        return assignmentOptional.orElseThrow(() ->
            new RuntimeException("Assignment with id: " + id + " is not found."));
    }

    @Transactional
    public List<Question> getQuestionListById(Long id) {
        return assignmentRepo.findQuestionsById(id);
    }

    @Transactional
    public List<AssignmentFullDTO> getUserAssignments(Long userId) {
        User user = userService.getUserById(userId);
        List<User> userList = Collections.singletonList(user);
        List<Assignment> assignments = assignmentRepo.findByStudentsIn(userList);
        return assignments.stream()
            .map(this::castAssignmentToFullDTO)
            .collect(Collectors.toList());
    }

    @PostConstruct
    public void init() {
        assignmentService = applicationContext.getBean(AssignmentService.class);
    }

    private Assignment castDTOtoAssignment(AssignmentDTO assignmentDTO) {
        User teacher = userService.getUserById(assignmentDTO.getTeacherId());
        List<User> students = userService.getUsersByIds(assignmentDTO.getStudentIds());
        List<Question> questions = questionService.getQuestionsByIds(assignmentDTO.getQuestionsIds());

        Assignment assignment = new Assignment();

        assignment.setTeacher(teacher);
        assignment.setStudents(students);
        assignment.setQuestions(questions);
        return assignment;
    }

    private AssignmentFullDTO castAssignmentToFullDTO(Assignment assignment) {
        AssignmentFullDTO assignmentFullDTO = new AssignmentFullDTO();

        assignmentFullDTO.setId(assignment.getId());
        assignmentFullDTO.setTeacherId(assignment.getTeacher()
            .getId());

        assignmentFullDTO.setQuestions(assignment.getQuestions());
        return assignmentFullDTO;
    }

}
