package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.Question;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.*;
import static org.assertj.core.api.Assertions.*;


@SpringBootTest
class QuestionRepoTest {

    @Autowired
    private QuestionRepo questionRepo;

    @Test
    public void testFindAll() {
        List<Question> all = questionRepo.findAll();
        assertThat(all).isNotNull();
        assertThat(all.get(0).getClass()).isEqualTo(Question.class);

        System.out.println(all);
    }

    @Test
    public void testFindDistinctTags() {
        Set<String> distinctTags = questionRepo.findDistinctTags();
        System.out.println(distinctTags);
    }

}