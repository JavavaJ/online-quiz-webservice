package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.dto.AssignDTO;
import com.speakplusplus.onlinequizwebservice.dto.AssignmentDTO;
import com.speakplusplus.onlinequizwebservice.dto.AssignmentFullDTO;
import com.speakplusplus.onlinequizwebservice.model.Assignment;
import com.speakplusplus.onlinequizwebservice.model.Question;
import com.speakplusplus.onlinequizwebservice.model.User;
import com.speakplusplus.onlinequizwebservice.security.AppUser;
import com.speakplusplus.onlinequizwebservice.security.AuthenticationFacade;
import com.speakplusplus.onlinequizwebservice.service.AssignmentService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/teacher/assignment")
@RequiredArgsConstructor
public class TeacherAssignmentController {

    private final AssignmentService assignmentService;
    private final AuthenticationFacade authenticationFacade;

    @PostMapping("save")
    public Long saveAssignment(@RequestBody AssignDTO assignDTO) {
        User teacher = authenticationFacade.getCurrentUser();
//        assignDTO.setTeacher(teacher);
        return assignmentService.saveAssignment(assignDTO);
    }

    @GetMapping("{assignmentId}")
    public Assignment getAssignment(@PathVariable Long assignmentId) {
        return assignmentService.getAssignment(assignmentId);
    }

    @GetMapping("all")
    public List<AssignmentFullDTO> getAllTeacherAssignments() {
        User teacher = authenticationFacade.getCurrentUser();
        return assignmentService.getTeacherAssignments(teacher);
    }

}
