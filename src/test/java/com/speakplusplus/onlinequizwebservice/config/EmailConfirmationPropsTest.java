package com.speakplusplus.onlinequizwebservice.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.speakplusplus.onlinequizwebservice.dto.UserDTO;
import lombok.SneakyThrows;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;
import static org.assertj.core.api.Assertions.*;

@SpringBootTest
class EmailConfirmationPropsTest {

    @Autowired
    private EmailConfirmationProps props;

    @Test
    public void testProps() {
        assertThat(props.getHost()).isEqualTo("quiz-email-verifier.herokuapp.com");
        assertThat(props.getEndpoint()).isEqualTo("/api/v1/sendmail");
    }

    @Test
    @SneakyThrows
    public void generateUserDTO() {
        UserDTO userDTO = new UserDTO();
        userDTO.setName("Smith");
        userDTO.setPassword("12345");
        userDTO.setEmail("caninoj172@to200.com");
        userDTO.setRoleId(2L);

        ObjectMapper mapper = new ObjectMapper();
        String user = mapper.writeValueAsString(userDTO);
        System.out.println(user);
    }

}