package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.core.Assignment;
import com.speakplusplus.onlinequizwebservice.model.core.Question;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.OffsetDateTime;
import java.util.List;
import java.util.Optional;

public interface AssignmentRepo extends JpaRepository<Assignment, Long> {
    Optional<Assignment> findById(Long id);

//    @Query("select a.questions from Assignment a where a.id = :id")
//    List<Question> findQuestionsById(@Param("id") Long id);

    List<Assignment> findByStudentsIn(Iterable<User> user);

    List<Assignment> findByQuiz_Teacher_Id(Long teacherId);

    @Query("select a.quiz.teacher from Assignment a where a.id = :id")
    User findTeacherByAssignmentId(@Param("id") Long assignmentId);

    @Modifying
    @Query("update Assignment a set a.isCompleted = :isCompleted, a.completedAt = :completedAt where a.id = :id")
    void updateIsCompleted(
        @Param(value = "id") Long id,
        @Param(value = "isCompleted") Boolean isCompleted,
        @Param(value = "completedAt") OffsetDateTime completedAt
        );

    long countByIsCompletedAndStudentsIn(Boolean value, Iterable<User> user);
}
