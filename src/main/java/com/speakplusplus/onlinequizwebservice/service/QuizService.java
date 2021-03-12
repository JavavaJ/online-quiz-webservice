package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.dto.QuizDto;
import com.speakplusplus.onlinequizwebservice.dto.QuizFullDto;
import com.speakplusplus.onlinequizwebservice.model.core.Question;
import com.speakplusplus.onlinequizwebservice.model.core.Quiz;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import com.speakplusplus.onlinequizwebservice.repo.QuizRepo;
import lombok.RequiredArgsConstructor;
import org.hibernate.Hibernate;
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

    @Transactional
    public List<Question> getQuestionsByQuizId(Long id) {
        Optional<Quiz> quizOptional = quizRepo.findById(id);
        Quiz quiz = quizOptional.orElseThrow(() ->
            new RuntimeException("Quiz with id: " + id + " is not found."));
        List<Question> questions = quiz.getQuestions();
        questions.forEach(question -> {
            Hibernate.initialize(question.getId());
        });
        return questions;
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

    public QuizFullDto mapQuizToFullDTO(Quiz quiz) {
        QuizFullDto quizFullDto = new QuizFullDto();

        quizFullDto.setId(quiz.getId());
        quizFullDto.setName(quiz.getName());
        quizFullDto.setDescription(quiz.getDescription());
        quizFullDto.setTeacherId(quiz.getTeacher().getId());
        quizFullDto.setQuestions(quiz.getQuestions());

        return quizFullDto;
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
