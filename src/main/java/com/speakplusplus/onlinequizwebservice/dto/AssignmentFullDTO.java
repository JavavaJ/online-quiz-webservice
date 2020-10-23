package com.speakplusplus.onlinequizwebservice.dto;

import com.speakplusplus.onlinequizwebservice.model.Question;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AssignmentFullDTO {

    private Long id;
    private Long teacherId;
    private List<Question> questions = new ArrayList<>();

    public AssignmentFullDTO(Long teacherId, List<Question> questions) {
        this.teacherId = teacherId;
        this.questions = questions;
    }
}
