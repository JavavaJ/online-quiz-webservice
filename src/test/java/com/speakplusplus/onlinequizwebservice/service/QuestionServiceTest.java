package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.model.Question;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.assertj.core.api.Assertions.*;


@SpringBootTest
class QuestionServiceTest {

    @Autowired
    private QuestionService questionService;

    @Test
    void findAll() {
        List<Question> questions = questionService.findAll();

        assertThat(questions).isNotNull();
        assertTrue(questions.size() > 0);
        System.out.println("Number of all questions: " + questions.size());
    }

    @Test
    public void getQuestionsByTopic() {
        List<Question> questions = questionService.getQuestionsByTopic("articles");

        assertThat(questions).isNotNull();
        assertTrue(questions.size() > 0);
        assertThat(questions).extracting(Question::getTags).containsOnly("articles").doesNotContainNull();

        System.out.println("Number of questions with tag articles: " + questions.size());
    }

    @Test
    public void getLimitedList() {
        List<Question> allQs = questionService.findAll();
        List<Question> limitedList = questionService.getLimitedList(allQs, 10);

        assertThat(limitedList).isNotNull();
        assertTrue(limitedList.size() == 10);
    }
}