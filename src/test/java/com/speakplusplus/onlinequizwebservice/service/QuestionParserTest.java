package com.speakplusplus.onlinequizwebservice.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.speakplusplus.onlinequizwebservice.dto.CreateQuestionsDTO;
import com.speakplusplus.onlinequizwebservice.model.core.Question;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Date;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class QuestionParserTest {

    @Autowired
    private QuestionParser questionParser;

    @Test
    public void testParseQuestion() {
        String text = "11. First he _____ his jumper, then _____ his best shirt. A)tookoff/puton B)tookafter/puton C) turned up / tried on D) tried on / turned up";

        Question question = questionParser.parseOne(text, DelimiterCase.UPPERCASE);

        assertThat(question.getId()).isEqualTo(11L);
        assertThat(question.getQuestion().length()).isGreaterThan(10);
        assertThat(question.getA()).isNotNull();
        assertThat(question.getB()).isNotNull();
        assertThat(question.getC()).isNotNull();
        assertThat(question.getD()).isNotNull();
    }

    @Test
    public void testParseMany() {
        String questionsString = "1. They __________ to the party last night.\n" +
            "a) have gone\n" +
            "b) went\n" +
            "c) had gone\n" +
            "d) will go\n" +
            "\n" +
            "2. Grandmother gave me __________\n" +
            "a) a good advice\n" +
            "b) good advices\n" +
            "c) some good advices\n" +
            "d) some good advice\n" +
            "\n" +
            "3. I wonder ____________________.\n" +
            "a) what my younger brother is doing now\n" +
            "b) what is my younger brother doing now\n" +
            "c) what does my younger brother do now\n" +
            "d) what is doing my younger brother \n";

        List<Question> questions = questionParser.parseMany(questionsString);

        assertThat(questions).isNotNull().isNotEmpty();
        assertThat(questions.size()).isEqualTo(3);
    }

    @Test
    public void testAddRightAnswers() {
        String plainQuestions  = "1. They __________ to the party last night.\n" +
            "a) have gone\n" +
            "b) went\n" +
            "c) had gone\n" +
            "d) will go\n" +
            "\n" +
            "2. Grandmother gave me __________\n" +
            "a) a good advice\n" +
            "b) good advices\n" +
            "c) some good advices\n" +
            "d) some good advice\n" +
            "\n" +
            "3. I wonder ____________________.\n" +
            "a) what my younger brother is doing now\n" +
            "b) what is my younger brother doing now\n" +
            "c) what does my younger brother do now\n" +
            "d) what is doing my younger brother \n";

        String plainAnswers = "1-B, 2-D, 3-A";

        List<Question> questions = questionParser.parseMany(plainQuestions);
        List<Question> questionsWithAnswers = questionParser.addRightAnswers(questions, plainAnswers);

        assertThat(questionsWithAnswers.size()).isEqualTo(3);

        assertThat(questionsWithAnswers.get(0).getRightAn().equals("b")).isTrue();
        assertThat(questionsWithAnswers.get(1).getRightAn().equals("d")).isTrue();
        assertThat(questionsWithAnswers.get(2).getRightAn().equals("a")).isTrue();
    }

    @Test
    public void getCreateQuestionsDTOJson() {
        String plainQuestions  = "1. They __________ to the party last night. " +
            "a) have gone " +
            "b) went " +
            "c) had gone " +
            "d) will go " +
            "2. Grandmother gave me _________ " +
            "a) a good advice " +
            "b) good advices " +
            "c) some good advices " +
            "d) some good advice " +
            "3. I wonder ____________________. " +
            "a) what my younger brother is doing now " +
            "b) what is my younger brother doing now " +
            "c) what does my younger brother do now " +
            "d) what is doing my younger brother  ";

        String plainAnswers = "1-B, 2-D, 3-A";

        CreateQuestionsDTO createQuestionsDTO = new CreateQuestionsDTO();
        createQuestionsDTO.setQuestionsText(plainQuestions);
        createQuestionsDTO.setAnswersText(plainAnswers);

        ObjectMapper mapper = new ObjectMapper();
        try {
            String json = mapper.writeValueAsString(createQuestionsDTO);
            json = json.replaceAll("[\n]{2,}", "");
            System.out.println(json);

            // {"questionsText":"1. They __________ to the party last night. a) have gone b) went c) had gone d) will go 2. Grandmother gave me _________ a) a good advice b) good advices c) some good advices d) some good advice 3. I wonder ____________________. a) what my younger brother is doing now b) what is my younger brother doing now c) what does my younger brother do now d) what is doing my younger brother  ","answersText":"1-B, 2-D, 3-A"}

        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
    }

}