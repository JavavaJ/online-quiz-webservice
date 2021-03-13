package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.AnsweredQuestion;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AnsweredQuestionRepo extends JpaRepository<AnsweredQuestion, Long> {

}
