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
    private String name;
    private QuizFullDto quizFullDto;

}
