
package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.dto.QuizDto;
import com.speakplusplus.onlinequizwebservice.model.Quiz;
import com.speakplusplus.onlinequizwebservice.model.User;
import com.speakplusplus.onlinequizwebservice.security.AppUser;
import com.speakplusplus.onlinequizwebservice.security.AuthenticationFacade;
import com.speakplusplus.onlinequizwebservice.service.QuizService;
import lombok.RequiredArgsConstructor;
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


}



