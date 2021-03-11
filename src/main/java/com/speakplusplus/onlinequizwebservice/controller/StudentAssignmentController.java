package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.dto.AssignmentFullDTO;
import com.speakplusplus.onlinequizwebservice.dto.CheckedAssignmentDTO;
import com.speakplusplus.onlinequizwebservice.dto.SubmitAssignmentDTO;
import com.speakplusplus.onlinequizwebservice.model.Assignment;
import com.speakplusplus.onlinequizwebservice.model.Question;
import com.speakplusplus.onlinequizwebservice.model.User;
import com.speakplusplus.onlinequizwebservice.security.AppUser;
import com.speakplusplus.onlinequizwebservice.security.AuthenticationFacade;
import com.speakplusplus.onlinequizwebservice.service.AssignmentService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("all")
    public List<AssignmentFullDTO> getAllStudentAssignments() {
        AppUser appUser = (AppUser) authenticationFacade
            .getAuthentication()
            .getPrincipal();
        User student = appUser.getUser();

        return assignmentService.getUserAssignments(student.getId());
    }

    @PostMapping("submit")
    public CheckedAssignmentDTO checkAssignment(@RequestBody SubmitAssignmentDTO submitAssignmentDTO) {
        return assignmentService.checkAssignment(submitAssignmentDTO);
    }

}
