package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.dto.CheckedAssignmentDTO;
import com.speakplusplus.onlinequizwebservice.dto.QuestionSelectionDTO;
import com.speakplusplus.onlinequizwebservice.dto.SubmitAssignmentDTO;
import com.speakplusplus.onlinequizwebservice.exception.EntityNotFoundException;
import com.speakplusplus.onlinequizwebservice.model.AnsweredQuestion;
import com.speakplusplus.onlinequizwebservice.model.AssignmentReport;
import com.speakplusplus.onlinequizwebservice.model.core.Question;
import com.speakplusplus.onlinequizwebservice.model.core.Quiz;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import com.speakplusplus.onlinequizwebservice.repo.AssignmentRepo;
import com.speakplusplus.onlinequizwebservice.repo.AssignmentReportRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AssignmentReportService {

    private final AssignmentService assignmentService;
    private final AssignmentReportRepo assignmentReportRepo;
    private final AssignmentRepo assignmentRepo;
    private final AnsweredQuestionService answeredQuestionService;
    private final QuestionService questionService;

    @Transactional
    public AssignmentReport getReport(Long id) {
        Optional<AssignmentReport> report = assignmentReportRepo.findById(id);
        return report.orElseThrow(() ->
            new EntityNotFoundException(AssignmentReport.class, id));
    }

    @Transactional
    public AssignmentReport processSubmit(SubmitAssignmentDTO submitDTO, User student) { // todo change return type
        Long assignmentId = submitDTO.getId();

        AssignmentReport assignmentReport = new AssignmentReport();
        assignmentReport.setAssignmentId(assignmentId);
        assignmentReport.setName(submitDTO.getName());
        assignmentReport.setStudent(student);

        User teacher = assignmentRepo.findTeacherByAssignmentId(assignmentId);

        assignmentReport.setTeacher(teacher);

        List<AnsweredQuestion> answeredQuestions = answeredQuestionService.saveAll(submitDTO.getSelections());
        assignmentReport.setAnsweredQuestions(answeredQuestions);

        List<Question> questions = answeredQuestions.stream()
            .map(AnsweredQuestion::getQuestion)
            .collect(Collectors.toList());

        int correctAnswersNum = getCorrectAnswersNum(submitDTO, questions);

        // set correct and total answers
        assignmentReport.setCorrectAnswers(correctAnswersNum);
        assignmentReport.setTotalAnswers(questions.size());

        return assignmentReportRepo.save(assignmentReport);
    }

    private int getCorrectAnswersNum(SubmitAssignmentDTO submitDTO, List<Question> questions) {
        Map<Long, Question> id2question = questions
            .stream()
            .collect(Collectors.toMap(Question::getId, Function.identity()));

        Map<Long, String> id2selection = submitDTO
            .getSelections()
            .stream()
            .collect(Collectors.toMap(QuestionSelectionDTO::getQid, QuestionSelectionDTO::getSelection));

        int correctAnswersNum = 0;
        for (QuestionSelectionDTO questionSelectionDTO : submitDTO.getSelections()) {
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
        return correctAnswersNum;
    }

    public CheckedAssignmentDTO mapAssignmentReportToCheckedAssignmentDTO(AssignmentReport assignmentReport) {
        CheckedAssignmentDTO checkedAssignmentDTO = new CheckedAssignmentDTO();
        checkedAssignmentDTO.setId(assignmentReport.getId());
        checkedAssignmentDTO.setAssignmentId(assignmentReport.getAssignmentId());
        checkedAssignmentDTO.setName(assignmentReport.getName());
        checkedAssignmentDTO.setCorrectAnswers(assignmentReport.getCorrectAnswers());
        checkedAssignmentDTO.setTotalAnswers(assignmentReport.getTotalAnswers());
        return checkedAssignmentDTO;
    }
}
