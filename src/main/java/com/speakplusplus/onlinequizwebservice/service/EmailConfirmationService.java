package com.speakplusplus.onlinequizwebservice.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.speakplusplus.onlinequizwebservice.config.EmailConfirmationProps;
import com.speakplusplus.onlinequizwebservice.dto.VerificationRequestDTO;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.net.URI;

@Service
@RequiredArgsConstructor
public class EmailConfirmationService {

    private final EmailConfirmationProps confirmationProps;
    private final RestTemplate restTemplate;

    private ObjectMapper OBJECT_MAPPER = new ObjectMapper();

    @SneakyThrows
    public String sendConfirmationLink(String username, String email, String validationLink) {
        String url = "https://" + confirmationProps.getHost() + confirmationProps.getEndpoint();

        URI uri = new URI(url);

        VerificationRequestDTO verificationRequestDTO = new VerificationRequestDTO(
            email,
            username,
            validationLink);

        String response = restTemplate.postForObject(uri, verificationRequestDTO, String.class);

        System.out.println("============================ The response ============================");
        System.out.println(response);

        return response;
    }

}
