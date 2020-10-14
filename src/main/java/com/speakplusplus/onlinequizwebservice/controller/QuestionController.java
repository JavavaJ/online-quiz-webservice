package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.model.Question;
import com.speakplusplus.onlinequizwebservice.service.QuestionService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("api/v1/question")
@RequiredArgsConstructor
public class QuestionController {

    private final QuestionService questionService;

    @GetMapping("/{topic}/{limit}")
    public List<Question> getQuestionsByTopic(@PathVariable String topic,
                                              @PathVariable Integer limit) {
        List<Question> questions = questionService.getQuestionsByTopic(topic);
        return questionService.getLimitedList(questions, limit);
    }

    @PostMapping("/save/questions")
    public List<Question> saveAllQuestions(@RequestBody List<Question> questions) {
        return questionService.saveAll(questions);
    }

}
