package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.Question;
import com.speakplusplus.onlinequizwebservice.model.Quiz;
import com.speakplusplus.onlinequizwebservice.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface QuizRepo extends JpaRepository<Quiz, Long> {

    List<Quiz> findQuizzesByTeacher(User teacher);

    @Query("select q.questions from Quiz q where q.id = :id")
    List<Question> findQuestionsById(@Param("id") Long quizId);
}
