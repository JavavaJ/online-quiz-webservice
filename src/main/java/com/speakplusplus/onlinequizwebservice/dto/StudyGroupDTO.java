package com.speakplusplus.onlinequizwebservice.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StudyGroupDTO {

    private String name;
    private List<String> studentEmails;

}
