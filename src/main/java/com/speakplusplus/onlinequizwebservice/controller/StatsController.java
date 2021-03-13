package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.model.AssignmentReport;
import com.speakplusplus.onlinequizwebservice.service.AssignmentReportService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/v1/stats/")
@RequiredArgsConstructor
public class StatsController {

    private final AssignmentReportService assignmentReportService;

    @GetMapping("report/assignment/{id}")
    public AssignmentReport getReport(@PathVariable Long id) {
        return assignmentReportService.getReport(id);
    }
}
