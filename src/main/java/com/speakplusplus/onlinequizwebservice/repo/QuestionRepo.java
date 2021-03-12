package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.core.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Set;

public interface QuestionRepo extends JpaRepository<Question, Long> {
    List<Question> findQuestionsByTags(String tag);

    @Query("SELECT DISTINCT q.tags FROM Question q")
    Set<String> findDistinctTags();
}
