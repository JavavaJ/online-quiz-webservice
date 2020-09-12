package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.model.Question;
import com.speakplusplus.onlinequizwebservice.service.QuestionService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("api/v1/question")
@RestController
public class QuestionController {

    private final QuestionService questionService;

    public QuestionController(QuestionService questionService) {
        this.questionService = questionService;
    }

    @GetMapping("/{topic}/{limit}")
    public List<Question> getQuestionsByTopic(@PathVariable String topic,
                                              @PathVariable Integer limit) {
        List<Question> questions = questionService.getQuestionsByTopic(topic);
        return questionService.getLimitedList(questions, limit);
    }

}
