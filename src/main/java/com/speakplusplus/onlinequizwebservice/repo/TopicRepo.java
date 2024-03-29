package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.core.Topic;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Collection;
import java.util.Set;

public interface TopicRepo extends JpaRepository<Topic, Long> {
    Topic findTopicByFullName(String fullName);

    Topic findTopicByTag(String tag);

    Set<Topic> findByTagIn(Collection<String> tag);

}
