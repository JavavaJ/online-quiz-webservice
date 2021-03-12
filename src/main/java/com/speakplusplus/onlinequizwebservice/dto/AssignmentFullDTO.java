package com.speakplusplus.onlinequizwebservice.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AssignmentFullDTO {

    private Long id;
    private String name;
    private QuizFullDto quizFullDto;

}
