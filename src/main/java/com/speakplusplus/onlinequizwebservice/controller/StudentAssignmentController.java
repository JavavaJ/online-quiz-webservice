package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.dto.AssignmentFullDTO;
import com.speakplusplus.onlinequizwebservice.model.Assignment;
import com.speakplusplus.onlinequizwebservice.model.Question;
import com.speakplusplus.onlinequizwebservice.security.AppUser;
import com.speakplusplus.onlinequizwebservice.security.AuthenticationFacade;
import com.speakplusplus.onlinequizwebservice.service.AssignmentService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/v1/student/assignment")
@RequiredArgsConstructor
public class StudentAssignmentController {

    private final AssignmentService assignmentService;
    private final AuthenticationFacade authenticationFacade;

    @GetMapping("{assignmentId}")
    public Assignment getAssignment(@PathVariable Long assignmentId) {
        return assignmentService.getAssignment(assignmentId);
    }

    @GetMapping("questions/{assignmentId}")
    public List<Question> getQuestions(@PathVariable Long assignmentId) {
        return assignmentService.getQuestionListById(assignmentId);
    }

    @GetMapping("all")
    public List<AssignmentFullDTO> getUserAssignments() {
        Authentication authentication = authenticationFacade.getAuthentication();
        AppUser appUser = (AppUser) authentication.getPrincipal();
        Long userId = appUser.getUser().getId();
        return assignmentService.getUserAssignments(userId);
    }
}
