package com.speakplusplus.onlinequizwebservice.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.speakplusplus.onlinequizwebservice.model.Question;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;


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
        assertThat(limitedList.size()).isEqualTo(10);
    }

    @Test
    public void saveAll() {
        List<Question> questionsToSave = buildQuestions();
        List<Question> savedQuestions = questionService.saveAll(questionsToSave);

        assertThat(savedQuestions).isNotNull();
        assertThat(savedQuestions.size()).isEqualTo(2);
        assertThat(questionsToSave.get(0).getQuestion())
            .isEqualTo(savedQuestions.get(0).getQuestion());
    }

    private List<Question> buildQuestions() {
        Question question1 = new Question();
//        question1.setId(52L);
        question1.setQuestion("The biggest planet.");
        question1.setA("Jupiter");
        question1.setB("Mars");
        question1.setC("Earth");
        question1.setD("Saturn");
        question1.setRightAn("a");
        question1.setTags("astronomy");

        Question question2 = new Question();
//        question2.setId(53L);
        question2.setQuestion("The smallest planet.");
        question2.setA("Mercury");
        question2.setB("Mars");
        question2.setC("Earth");
        question2.setD("Saturn");
        question2.setRightAn("a");
        question2.setTags("astronomy");

        List<Question> questions = Arrays.asList(question1, question2);

        try {
            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(questions);
            System.out.println(json);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        return questions;
    }

}