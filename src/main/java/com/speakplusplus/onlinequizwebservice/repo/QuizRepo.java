package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.core.EntityStatus;
import com.speakplusplus.onlinequizwebservice.model.core.Question;
import com.speakplusplus.onlinequizwebservice.model.core.Quiz;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface QuizRepo extends JpaRepository<Quiz, Long> {

    List<Quiz> findQuizzesByTeacher(User teacher);

    List<Quiz> findQuizzesByTeacherAndStatus(User teacher, EntityStatus status);

    @Query("select q.questions from Quiz q where q.id = :id")
    List<Question> findQuestionsById(@Param("id") Long quizId);

    @Modifying
    @Query("update Quiz q set q.status = :status where q.id = :id")
    void updateStatus(@Param(value = "id") Long id, @Param(value = "status") EntityStatus status);
}
