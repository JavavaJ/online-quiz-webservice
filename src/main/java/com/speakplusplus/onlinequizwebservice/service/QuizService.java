package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.dto.QuizDto;
import com.speakplusplus.onlinequizwebservice.model.Question;
import com.speakplusplus.onlinequizwebservice.model.Quiz;
import com.speakplusplus.onlinequizwebservice.model.User;
import com.speakplusplus.onlinequizwebservice.repo.QuizRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class QuizService {

    private final QuizRepo quizRepo;
    private final UserService userService;
    private final QuestionService questionService;

    @Transactional
    public List<Quiz> getQuizzesByTeacher(User teacher) {
        return quizRepo.findQuizzesByTeacher(teacher);
    }

    @Transactional
    public Quiz saveQuiz(Quiz quiz) {
        return quizRepo.save(quiz);
    }

    @Transactional
    public QuizDto saveQuiz(QuizDto quizDto) {
        Quiz quiz = mapDTOtoQuiz(quizDto);
        Quiz savedQuiz = quizRepo.save(quiz);
        return mapQuizToDTO(savedQuiz);
    }

    @Transactional
    public Quiz getQuiz(Long id) {
        Optional<Quiz> quiz = quizRepo.findById(id);
        return quiz.orElseThrow(() ->
            new RuntimeException("Quiz with id: " + id + " is not found."));
    }

    public QuizDto mapQuizToDTO(Quiz quiz) {
        QuizDto quizDto = new QuizDto();

        quizDto.setId(quiz.getId());
        quizDto.setName(quiz.getName());
        quizDto.setDescription(quiz.getDescription());
        quizDto.setTeacherId(quiz.getTeacher().getId());

        List<Long> questionIds = quiz.getQuestions()
            .stream()
            .map(Question::getId)
            .collect(Collectors.toList());
        quizDto.setQuestionsIds(questionIds);

        return quizDto;
    }

    private Quiz mapDTOtoQuiz(QuizDto quizDto) {
        User teacher = userService.getUserById(quizDto.getTeacherId());
        List<Question> questions = questionService
            .getQuestionsByIds(quizDto.getQuestionsIds());

        Quiz quiz = new Quiz();

        quiz.setName(quizDto.getName());
        quiz.setDescription(quizDto.getDescription());
        quiz.setTeacher(teacher);
        quiz.setQuestions(questions);

        return quiz;
    }

}
