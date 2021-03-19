package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.dto.AssignDTO;
import com.speakplusplus.onlinequizwebservice.dto.AssignToGroupDTO;
import com.speakplusplus.onlinequizwebservice.dto.AssignmentFullDTO;
import com.speakplusplus.onlinequizwebservice.model.core.Assignment;
import com.speakplusplus.onlinequizwebservice.model.core.User;
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

    @PostMapping("save/student")
    public Long saveAssignment(@RequestBody AssignDTO assignDTO) {
        return assignmentService.saveAssignment(assignDTO);
    }

    @PostMapping("save/group")
    public Long saveAssignment(@RequestBody AssignToGroupDTO dto) {
        return assignmentService.saveAssignment(dto);
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
