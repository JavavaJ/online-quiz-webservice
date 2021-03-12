package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.model.core.Question;
import com.speakplusplus.onlinequizwebservice.model.core.Quiz;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;

import java.util.Arrays;
import java.util.List;

import static org.assertj.core.api.Assertions.*;

@SpringBootTest
@Sql({"classpath:t_questions.sql",
    "classpath:t_topics.sql",
    "classpath:t_roles_and_permissions.sql"})
class QuizServiceTest {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private UserService userService;

    @Autowired
    private QuizService quizService;

    @Test
    public void testGetQuizzesByTeacher() {
        User teacher = userService.getUserById(2L);

        List<Long> ids = Arrays.asList(227L, 300L, 331L, 357L, 382L);
        List<Question> questions = questionService.getQuestionsByIds(ids);

        Quiz quiz = new Quiz();
        quiz.setName("My Grammar Quiz");
        quiz.setTeacher(teacher);
        quiz.setQuestions(questions);

        Quiz savedQuiz = quizService.saveQuiz(quiz);
        Long savedQuizId = savedQuiz.getId();

        Quiz quizFromRepo = quizService.getQuiz(savedQuizId);

        assertThat(quizFromRepo).isNotNull();
        assertThat(quizFromRepo.getId()).isEqualTo(1L);

//        int quizSize = quizFromRepo.getQuestions()
//            .size();
//        System.out.println("quizSize: " + quizSize);


    }
}