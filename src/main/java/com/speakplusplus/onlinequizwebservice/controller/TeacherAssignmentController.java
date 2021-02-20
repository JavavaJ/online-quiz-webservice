package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.dto.AssignDTO;
import com.speakplusplus.onlinequizwebservice.dto.AssignmentDTO;
import com.speakplusplus.onlinequizwebservice.model.Assignment;
import com.speakplusplus.onlinequizwebservice.model.Question;
import com.speakplusplus.onlinequizwebservice.service.AssignmentService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/teacher/assignment")
@RequiredArgsConstructor
public class TeacherAssignmentController {

    private final AssignmentService assignmentService;

//    @PostMapping("save")
//    public Long saveAssignment(@RequestBody AssignmentDTO assignmentDTO) {
//        return assignmentService.saveAssignment(assignmentDTO);
//    }

//    // todo
//    public Long saveAssignment(@RequestBody AssignDTO assignDTO) {
//
//    }

    @GetMapping("{assignmentId}")
    public Assignment getAssignment(@PathVariable Long assignmentId) {
        return assignmentService.getAssignment(assignmentId);
    }

//    @GetMapping("questions/{assignmentId}")
//    public List<Question> getQuestions(@PathVariable Long assignmentId) {
//        return assignmentService.getQuestionListById(assignmentId);
//    }
}
