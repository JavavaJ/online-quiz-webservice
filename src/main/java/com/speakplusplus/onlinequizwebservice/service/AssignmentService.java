package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.dto.*;
import com.speakplusplus.onlinequizwebservice.model.core.Assignment;
import com.speakplusplus.onlinequizwebservice.model.core.Question;
import com.speakplusplus.onlinequizwebservice.model.core.Quiz;
import com.speakplusplus.onlinequizwebservice.model.core.User;
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

    @Transactional
    public CheckedAssignmentDTO checkAssignment(SubmitAssignmentDTO submitAssignmentDTO) {
        List<Long> questionIds = submitAssignmentDTO.getSelections()
            .stream()
            .map(QuestionSelectionDTO::getQid)
            .collect(Collectors.toList());

        List<Question> questions = questionService.getQuestionsByIds(questionIds);
        Map<Long, Question> id2question = questions
            .stream()
            .collect(Collectors.toMap(Question::getId, Function.identity()));

        Map<Long, String> id2selection = submitAssignmentDTO
            .getSelections()
            .stream()
            .collect(Collectors.toMap(QuestionSelectionDTO::getQid, QuestionSelectionDTO::getSelection));

        int correctAnswersNum = 0;
        for (QuestionSelectionDTO questionSelectionDTO : submitAssignmentDTO.getSelections()) {
            Long qid = questionSelectionDTO.getQid();
            String rightAns = id2question.get(qid)
                .getRightAn()
                .toLowerCase();
            String selection = id2selection.get(qid)
                .toLowerCase();

            if (selection.equals(rightAns)) {
                correctAnswersNum++;
            }
        }

        CheckedAssignmentDTO checkedAssignmentDTO = new CheckedAssignmentDTO();
        checkedAssignmentDTO.setId(submitAssignmentDTO.getId());
        checkedAssignmentDTO.setName(submitAssignmentDTO.getName());
        checkedAssignmentDTO.setTotalAnswers(submitAssignmentDTO.getSelections().size());
        checkedAssignmentDTO.setCorrectAnswers(correctAnswersNum);

        return checkedAssignmentDTO;
    }
}
