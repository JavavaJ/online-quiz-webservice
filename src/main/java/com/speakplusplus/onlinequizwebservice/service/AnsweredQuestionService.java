package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.dto.QuestionSelectionDTO;
import com.speakplusplus.onlinequizwebservice.model.AnsweredQuestion;
import com.speakplusplus.onlinequizwebservice.model.core.Question;
import com.speakplusplus.onlinequizwebservice.repo.AnsweredQuestionRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AnsweredQuestionService {

    private final QuestionService questionService;
    private final AnsweredQuestionRepo answeredQuestionRepo;

    @Transactional
    public List<AnsweredQuestion> saveAll(List<QuestionSelectionDTO> dtos) {
        List<AnsweredQuestion> answeredQuestions = mapDtoToAnsweredQuestion(dtos);
        List<AnsweredQuestion> saved = answeredQuestionRepo.saveAll(answeredQuestions);
        return saved;
    }

    private List<AnsweredQuestion> mapDtoToAnsweredQuestion(List<QuestionSelectionDTO> dtos) {

        List<Long> questionIds = dtos.stream()
            .map(QuestionSelectionDTO::getQid)
            .collect(Collectors.toList());

        List<Question> questions = questionService.getQuestionsByIds(questionIds);
        Map<Long, Question> id2question = questions.stream()
            .collect(Collectors.toMap(Question::getId, Function.identity()));

        ArrayList<AnsweredQuestion> answeredQuestions = new ArrayList<>(dtos.size());

        for (QuestionSelectionDTO dto : dtos) {
            AnsweredQuestion answeredQuestion = new AnsweredQuestion();
            answeredQuestion.setQuestion(id2question.get(dto.getQid()));
            answeredQuestion.setAnswer(dto.getSelection());
            answeredQuestions.add(answeredQuestion);
        }

        return answeredQuestions;
    }
}
