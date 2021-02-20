package com.speakplusplus.onlinequizwebservice.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class QuizDto {

    private Long id;
    private String name;
    private String description;
    private Long teacherId;
    private List<Long> questionsIds = new ArrayList<>();

    public QuizDto(String name, Long teacherId, List<Long> questionsIds) {
        this.name = name;
        this.teacherId = teacherId;
        this.questionsIds = questionsIds;
    }
}
