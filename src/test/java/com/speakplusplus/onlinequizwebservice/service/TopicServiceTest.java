package com.speakplusplus.onlinequizwebservice.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.speakplusplus.onlinequizwebservice.model.Topic;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.assertj.core.api.Assertions.*;

@SpringBootTest
class TopicServiceTest {

    @Autowired
    private TopicService topicService;

    @Test
    void findAll() {
        List<Topic> topics = topicService.findAll();

        assertThat(topics).isNotNull();
        assertTrue(topics.size() > 0);
        System.out.println("Number of Topics: " + topics.size());
    }

    @Test
    void getTopicByTag() {
        Topic topic = topicService.getTopicByTag("articles");

        assertThat(topic).isNotNull();
        assertThat(topic.getFullName()).isEqualTo("articles");
        assertThat(topic.getTag()).isEqualTo("articles");
    }

    @Test
    public void saveTopic() {
        Topic topicToSave = buildTopic();
        Topic savedTopic = topicService.saveTopic(topicToSave);

        assertThat(savedTopic).isNotNull();
        assertThat(savedTopic.getTag()).isEqualTo(topicToSave.getTag());
        assertThat(savedTopic.getFullName()).isEqualTo(topicToSave.getFullName());
        assertThat(savedTopic.getLevel()).isEqualTo(topicToSave.getLevel());
    }

    private Topic buildTopic() {
        Topic topic = new Topic();
        topic.setTag("astronomy");
        topic.setFullName("astronomy");
        topic.setLevel("A2");
        return topic;
    }
}