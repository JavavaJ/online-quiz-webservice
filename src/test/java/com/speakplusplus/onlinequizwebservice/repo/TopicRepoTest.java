package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.Topic;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;

import java.util.Arrays;
import java.util.List;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.*;
import static org.assertj.core.api.Assertions.assertThat;


@SpringBootTest
@Sql(scripts = "classpath:t_topics.sql")
class TopicRepoTest {

    @Autowired
    private TopicRepo topicRepo;

    @Test
    void testFindTopicByTag() {
        Topic articles = topicRepo.findTopicByTag("articles");
        assertThat(articles).isNotNull();
        assertThat(articles.getTag()).isEqualTo("articles");
    }

    @Test
    void testFindTopicsByTags() {
        List<String> tags = Arrays.asList("voc", "to_be");
        Set<Topic> topics = topicRepo.findByTagIn(tags);
        assertThat(topics).isNotNull();
        assertThat(topics.size()).isEqualTo(2);

        System.out.println(topics);
    }
}