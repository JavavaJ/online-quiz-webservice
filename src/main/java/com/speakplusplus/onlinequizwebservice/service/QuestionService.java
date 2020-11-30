package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.dto.CreateQuestionsDTO;
import com.speakplusplus.onlinequizwebservice.model.Question;
import com.speakplusplus.onlinequizwebservice.model.Topic;
import com.speakplusplus.onlinequizwebservice.repo.QuestionRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class QuestionService {

    private final QuestionRepo questionRepo;
    private final TopicService topicService;
    private final QuestionParser questionParser;

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

//  existing topics which are present in all existing questions
    public Set<Topic> getValidTopics() {
        Set<String> tags = questionRepo.findDistinctTags();
        return topicService.getTopicsByUniqueTags(tags);
    }

    @Transactional
    public List<Question> saveAll(List<Question> questions) {
        return questionRepo.saveAll(questions);
    }

//    @Transactional
//    public List<Long> saveAllAndGetIds(CreateQuestionsDTO createQuestionsDTO) {
//        List<Question> questions = questionParser.createQuestions(createQuestionsDTO);
//        List<Question> questionsSaved = questionRepo.saveAll(questions);
//        return questionsSaved.stream()
//            .map(Question::getId)
//            .collect(Collectors.toList());
//    }

    @Transactional
    public List<Question> saveAll(CreateQuestionsDTO createQuestionsDTO) {
        List<Question> questions = questionParser.createQuestions(createQuestionsDTO);
        return questionRepo.saveAll(questions);
    }

    @Transactional
    public List<Question> getQuestionsByIds(List<Long> ids) {
        return questionRepo.findAllById(ids);
    }
}
