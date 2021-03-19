package com.speakplusplus.onlinequizwebservice.dto;

import com.speakplusplus.onlinequizwebservice.model.core.StudyGroup;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AssignToGroupDTO {

    private String name;
    private Long quizId;
    private Long groupId;
}
