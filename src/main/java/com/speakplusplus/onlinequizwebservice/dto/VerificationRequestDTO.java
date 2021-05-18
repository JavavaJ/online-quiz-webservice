package com.speakplusplus.onlinequizwebservice.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class VerificationRequestDTO {

    private String email;
    private String username;
    private String validationLink;
}