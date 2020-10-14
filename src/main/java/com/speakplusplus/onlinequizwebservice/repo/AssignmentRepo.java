package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.Assignment;
import com.speakplusplus.onlinequizwebservice.model.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface AssignmentRepo extends JpaRepository<Assignment, Long> {
    Optional<Assignment> findById(Long id);

    @Query("select a.questions from Assignment a where a.id = :id")
    List<Question> findQuestionsById(@Param("id") Long id);
}
