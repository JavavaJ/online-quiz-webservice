package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.dto.AssignmentFullDTO;
import com.speakplusplus.onlinequizwebservice.dto.CheckedAssignmentDTO;
import com.speakplusplus.onlinequizwebservice.dto.SubmitAssignmentDTO;
import com.speakplusplus.onlinequizwebservice.model.AssignmentReport;
import com.speakplusplus.onlinequizwebservice.model.core.Assignment;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import com.speakplusplus.onlinequizwebservice.security.AppUser;
import com.speakplusplus.onlinequizwebservice.security.AuthenticationFacade;
import com.speakplusplus.onlinequizwebservice.service.AssignmentReportService;
import com.speakplusplus.onlinequizwebservice.service.AssignmentService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/student/assignment")
@RequiredArgsConstructor
public class StudentAssignmentController {

    private final AssignmentService assignmentService;
    private final AssignmentReportService assignmentReportService;
    private final AuthenticationFacade authenticationFacade;

    @GetMapping("{assignmentId}")
    public Assignment getAssignment(@PathVariable Long assignmentId) {
        return assignmentService.getAssignment(assignmentId);
    }

    @GetMapping("all")
    public List<AssignmentFullDTO> getAllStudentAssignments() {
        User student = authenticationFacade.getCurrentUser();

        return assignmentService.getUserAssignments(student.getId());
    }

    @GetMapping("uncompleted/number")
    public Long getNumberOfUncompletedAssignments() {
        User student = authenticationFacade.getCurrentUser();
        return assignmentService.countUncompleted(student);
    }

    @PostMapping("submit")
    public CheckedAssignmentDTO checkAssignment(@RequestBody SubmitAssignmentDTO submitAssignmentDTO) {
        User student = authenticationFacade.getCurrentUser();
        AssignmentReport assignmentReport = assignmentReportService.processSubmit(submitAssignmentDTO, student);
        return assignmentReportService.mapAssignmentReportToCheckedAssignmentDTO(assignmentReport);
    }

}
