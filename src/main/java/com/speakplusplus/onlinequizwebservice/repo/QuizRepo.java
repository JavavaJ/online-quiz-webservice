package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.Quiz;
import com.speakplusplus.onlinequizwebservice.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface QuizRepo extends JpaRepository<Quiz, Long> {

    List<Quiz> findQuizzesByTeacher(User teacher);
}
