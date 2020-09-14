package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.model.Topic;
import com.speakplusplus.onlinequizwebservice.service.QuestionService;
import com.speakplusplus.onlinequizwebservice.service.TopicService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.Set;

@RestController
@RequestMapping("api/v1/topic")
@RequiredArgsConstructor
public class TopicController {

    private final TopicService topicService;
    private final QuestionService questionService;

    @PostMapping("/save/topic")
    public Topic saveTopic(@RequestBody Topic topic) {
        return topicService.saveTopic(topic);
    }

    @GetMapping("/all")
    public Set<Topic> getAllTopics() {
        return questionService.getValidTopics();
    }
}
