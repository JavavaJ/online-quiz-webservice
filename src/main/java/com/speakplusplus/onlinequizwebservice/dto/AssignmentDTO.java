package com.speakplusplus.onlinequizwebservice.dto;

import com.speakplusplus.onlinequizwebservice.model.Assignment;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AssignmentDTO {

    private Long id;
    private Long teacherId;
    private List<Long> studentIds = new ArrayList<>();
    private List<Long> questionsIds = new ArrayList<>();

    public AssignmentDTO(Long teacherId, List<Long> studentIds, List<Long> questionsIds) {
        this.teacherId = teacherId;
        this.studentIds = studentIds;
        this.questionsIds = questionsIds;
    }
}
