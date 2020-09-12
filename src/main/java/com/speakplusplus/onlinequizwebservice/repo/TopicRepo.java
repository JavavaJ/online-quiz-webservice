package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.Topic;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TopicRepo extends JpaRepository<Topic, Long> {
    Topic findTopicByFullName(String fullName);

    Topic findTopicByTag(String tag);
}
