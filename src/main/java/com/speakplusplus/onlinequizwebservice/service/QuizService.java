package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.model.Quiz;
import com.speakplusplus.onlinequizwebservice.model.User;
import com.speakplusplus.onlinequizwebservice.repo.QuizRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class QuizService {

    private final QuizRepo quizRepo;

    @Transactional
    public List<Quiz> getQuizzesByTeacher(User teacher) {
        return quizRepo.findQuizzesByTeacher(teacher);
    }

    @Transactional
    public Quiz saveQuiz(Quiz quiz) {
        return quizRepo.save(quiz);
    }

    @Transactional
    public Quiz getQuiz(Long id) {
        Optional<Quiz> quiz = quizRepo.findById(id);
        return quiz.orElseThrow(() ->
            new RuntimeException("Quiz with id: " + id + " is not found."));
    }

}
