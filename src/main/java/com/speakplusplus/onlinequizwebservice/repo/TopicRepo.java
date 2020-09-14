package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.Topic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Collection;
import java.util.Set;

public interface TopicRepo extends JpaRepository<Topic, Long> {
    Topic findTopicByFullName(String fullName);

    Topic findTopicByTag(String tag);

    Set<Topic> findByTagIn(Collection<String> tag);

}
