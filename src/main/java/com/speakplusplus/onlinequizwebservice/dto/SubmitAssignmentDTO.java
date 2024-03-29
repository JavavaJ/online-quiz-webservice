package com.speakplusplus.onlinequizwebservice.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SubmitAssignmentDTO {

    private Long id;
    // todo rename to quizId
    private String name;
    private List<QuestionSelectionDTO> selections;

}
