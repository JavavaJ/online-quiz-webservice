package com.speakplusplus.onlinequizwebservice.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CheckedAssignmentDTO {

    private Long id;
    private String name;
    private Integer correctAnswers;
    private Integer totalAnswers;

}
