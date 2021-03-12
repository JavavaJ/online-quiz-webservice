package com.speakplusplus.onlinequizwebservice.dto;

import com.speakplusplus.onlinequizwebservice.model.core.Question;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class QuizFullDto {

    private Long id;
    private String name;
    private String description;
    private Long teacherId;
    private List<Question> questions;

    @Override
    public String toString() {
        return "QuizFullDto{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", description='" + description + '\'' +
            ", teacherId=" + teacherId +
            '}';
    }
}
