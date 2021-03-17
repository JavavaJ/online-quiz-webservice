
package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.dto.QuizDto;
import com.speakplusplus.onlinequizwebservice.model.core.EntityStatus;
import com.speakplusplus.onlinequizwebservice.model.core.Quiz;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import com.speakplusplus.onlinequizwebservice.security.AuthenticationFacade;
import com.speakplusplus.onlinequizwebservice.service.QuizService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/teacher/quiz")
@RequiredArgsConstructor
@CrossOrigin("*") // change later to my frontend url
public class QuizController {

    private final QuizService quizService;
    private final AuthenticationFacade authenticationFacade;

    @PostMapping("save")
    public QuizDto saveQuiz(@RequestBody QuizDto quizDto) {
        Long principalUserId = authenticationFacade.getPrincipalUserId();
        quizDto.setTeacherId(principalUserId);
        return quizService.saveQuiz(quizDto);
    }

    @GetMapping("all")
    public List<Quiz> getAllMyQuizzes() {
        User teacher = authenticationFacade.getCurrentUser();
        return quizService.getQuizzesByTeacher(teacher);
    }

    @GetMapping("archived/all")
    public List<Quiz> getAllArchived() {
        User teacher = authenticationFacade.getCurrentUser();
        return quizService.getArchivedQuizzesByTeacher(teacher);
    }

    @DeleteMapping("delete/{quizId}")
    public ResponseEntity<Long> deleteQuiz(@PathVariable Long quizId) {
        quizService.deleteQuiz(quizId);
        return new ResponseEntity<>(quizId, HttpStatus.OK);
    }

    @PatchMapping("archive/{quizId}")
    public ResponseEntity<Object> archiveQuiz(@PathVariable Long quizId) {
        quizService.updateStatus(quizId, EntityStatus.ARCHIVED);
        return ResponseEntity.ok().build();
    }

    @PatchMapping("unarchive/{quizId}")
    public ResponseEntity<Long> unarchiveQuiz(@PathVariable Long quizId) {
        quizService.updateStatus(quizId, EntityStatus.ACTIVE);
        return new ResponseEntity<>(quizId, HttpStatus.OK);
    }

}



