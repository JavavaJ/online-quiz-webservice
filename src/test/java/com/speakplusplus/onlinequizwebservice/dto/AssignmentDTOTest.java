package com.speakplusplus.onlinequizwebservice.dto;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Test;

import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.*;

class AssignmentDTOTest {

    @Test
    public void getJsonDTO() {
        AssignmentDTO assignmentDTO = new AssignmentDTO();

        assignmentDTO.setTeacherId(2L);
        assignmentDTO.setStudentIds(Arrays.asList(3L));
        assignmentDTO.setQuestionsIds(Arrays.asList(100L, 111L, 122L));

        ObjectMapper mapper = new ObjectMapper();
        try {
            String json = mapper.writeValueAsString(assignmentDTO);
            System.out.println(json); // {"id":null,"teacherId":2,"studentIds":[3],"questionsIds":[100,111,122]}
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
    }


}