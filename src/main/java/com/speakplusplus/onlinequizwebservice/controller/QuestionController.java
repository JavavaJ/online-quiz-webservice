package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.dto.CreateQuestionsDTO;
import com.speakplusplus.onlinequizwebservice.model.core.Question;
import com.speakplusplus.onlinequizwebservice.service.QuestionService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("api/v1/teacher/question")
@RequiredArgsConstructor
@CrossOrigin("*") // change later to my frontend url
//@PreAuthorize("hasAnyRole('ADMIN', 'TEACHER')")
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

//    @PostMapping("create")
//    public List<Long> createQuestions(@RequestBody CreateQuestionsDTO createQuestionsDTO) {
//        return questionService.saveAllAndGetIds(createQuestionsDTO); // return ids of created questions
//    }

    @PostMapping("create")
    public List<Question> createQuestions(@RequestBody CreateQuestionsDTO createQuestionsDTO) {
        return questionService.saveAll(createQuestionsDTO);
    }

    @PostMapping("ids")
    public List<Question> getQuestionsByIds(@RequestBody List<Long> ids) {
        return questionService.getQuestionsByIds(ids);
    }

}
