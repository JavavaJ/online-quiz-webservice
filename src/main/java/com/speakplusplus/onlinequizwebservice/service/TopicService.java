package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.model.Topic;
import com.speakplusplus.onlinequizwebservice.repo.TopicRepo;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;
import java.util.Set;

@Service
public class TopicService {

    private final TopicRepo topicRepo;

    public TopicService(TopicRepo topicRepo) {
        this.topicRepo = topicRepo;
    }

    public List<Topic> findAll() {
        return topicRepo.findAll();
    }

    public Topic getTopicByTag(String tag) {
        return topicRepo.findTopicByTag(tag);
    }

    public Topic saveTopic(Topic topic) {
        return topicRepo.save(topic);
    }

    public Set<Topic> getTopicsByUniqueTags(Collection<String> tags) {
        return topicRepo.findByTagIn(tags);
    }
}
