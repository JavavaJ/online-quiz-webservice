package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.core.Question;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;

import java.util.List;
import java.util.Set;

import static org.assertj.core.api.Assertions.*;


@SpringBootTest
@Sql(scripts = "classpath:t_questions.sql")
class QuestionRepoTest {

    @Autowired
    private QuestionRepo questionRepo;

    @Test
    public void testFindAll() {
        List<Question> all = questionRepo.findAll();
        System.out.println("Number of all questions: " + all.size());
        assertThat(all).isNotNull();
        assertThat(all.get(0).getClass()).isEqualTo(Question.class);

        System.out.println(all);
    }

    @Test
    public void testSaveAndRead() {
        Question question = new Question();
        question.setA("yiuop");
        question.setB("yiuop");
        question.setC("yiuop");
        question.setD("yiuop");
        question.setRightAn("yiuop");
        question.setTags("yiuop");
        question.setQuestion("yiuop");

        questionRepo.save(question);

        List<Question> all = questionRepo.findAll();
        System.out.println(all.size());


    }

    @Test
    public void testFindDistinctTags() {
        Set<String> distinctTags = questionRepo.findDistinctTags();
        System.out.println(distinctTags);
    }

}