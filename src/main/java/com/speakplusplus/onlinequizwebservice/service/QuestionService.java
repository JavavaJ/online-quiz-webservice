package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.model.Question;
import com.speakplusplus.onlinequizwebservice.model.Topic;
import com.speakplusplus.onlinequizwebservice.repo.QuestionRepo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionService {

    private final QuestionRepo questionRepo;
    private final TopicService topicService;

    public QuestionService(QuestionRepo questionRepo, TopicService topicService) {
        this.questionRepo = questionRepo;
        this.topicService = topicService;
    }

    public List<Question> findAll() {
        return questionRepo.findAll();
    }

    public List<Question> getQuestionsByTopic(String topicTag) {
        Topic topic = topicService.getTopicByTag(topicTag);
        return questionRepo.findQuestionsByTags(topic.getTag());
    }

    public List<Question> getLimitedList(List<Question> questions, int limit) {
        int size = questions.size();
        if (size <= limit) {
            return questions;
        } else {
            return questions.subList(0, limit);
        }
    }

    public List<Question> saveAll(List<Question> questions) {
        return questionRepo.saveAll(questions);
    }
}
