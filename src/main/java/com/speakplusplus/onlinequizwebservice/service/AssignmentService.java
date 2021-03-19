package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.dto.*;
import com.speakplusplus.onlinequizwebservice.model.core.*;
import com.speakplusplus.onlinequizwebservice.repo.AssignmentRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AssignmentService {

    private final QuestionService questionService;
    private final UserService userService;
    private final AssignmentRepo assignmentRepo;
    private final QuizService quizService;
    private final StudyGroupService groupService;

    @Transactional
    public Assignment saveAssignment(Assignment assignment) {
        return assignmentRepo.save(assignment);
    }

    @Transactional
    public Long saveAssignment(AssignDTO assignDTO) {
        Assignment assignment = new Assignment();

        assignment.setName(assignDTO.getName());
        Quiz quiz = quizService.getQuiz(assignDTO.getQuizId());
        assignment.setQuiz(quiz);

        Collection<User> students = userService
            .getUsersByEmails(assignDTO.getStudentEmails());

        assignment.setStudents(new ArrayList<>(students));

        Assignment savedOne = assignmentRepo.save(assignment);
        return savedOne.getId();
    }

    @Transactional
    public Long saveAssignment(AssignToGroupDTO dto) {
        Assignment assignment = new Assignment();
        assignment.setName(dto.getName());
        Quiz quiz = quizService.getQuiz(dto.getQuizId());
        assignment.setQuiz(quiz);

        StudyGroup group = groupService.getGroupById(dto.getGroupId());
        assignment.setStudents(new ArrayList<>(group.getStudents()));

        Assignment savedOne = assignmentRepo.save(assignment);
        return savedOne.getId();
    }

    @Transactional
    public Assignment getAssignment(Long id) {
        Optional<Assignment> assignmentOptional = assignmentRepo.findById(id);
        return assignmentOptional.orElseThrow(() ->
            new RuntimeException("Assignment with id: " + id + " is not found."));
    }

    @Transactional
    public List<AssignmentFullDTO> getUserAssignments(Long userId) {
        User user = userService.getUserById(userId);
        List<User> userList = Collections.singletonList(user);
        List<Assignment> assignments = assignmentRepo.findByStudentsIn(userList); // todo students may be many
        return assignments.stream()
            .map(this::castAssignmentToFullDTO)
            .collect(Collectors.toList());
    }

    @Transactional
    public List<AssignmentFullDTO> getTeacherAssignments(User teacher) {
        List<Assignment> assignments = assignmentRepo
            .findByQuiz_Teacher_Id(teacher.getId());
        return assignments.stream()
            .map(this::castAssignmentToFullDTO)
            .collect(Collectors.toList());
    }


    private AssignmentFullDTO castAssignmentToFullDTO(Assignment assignment) {
        AssignmentFullDTO assignmentFullDTO = new AssignmentFullDTO();

        assignmentFullDTO.setId(assignment.getId());
        assignmentFullDTO.setName(assignment.getName());

        Quiz quiz = assignment.getQuiz();
        QuizFullDto quizFullDto = quizService.mapQuizToFullDTO(quiz);

        assignmentFullDTO.setQuizFullDto(quizFullDto);
        return assignmentFullDTO;
    }


}
