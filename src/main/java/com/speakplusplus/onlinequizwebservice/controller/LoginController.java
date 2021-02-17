package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.dto.AuthenticationRequestDto;
import com.speakplusplus.onlinequizwebservice.model.User;
import com.speakplusplus.onlinequizwebservice.security.jwt.JwtTokenProvider;
import com.speakplusplus.onlinequizwebservice.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("api/v1/auth")
@RequiredArgsConstructor
public class LoginController {

    private final AuthenticationManager authenticationManager;
    private final JwtTokenProvider jwtTokenProvider;
    private final UserService userService;

    @PostMapping("login")
    public ResponseEntity<?> login(@RequestBody AuthenticationRequestDto loginDto) {
        try {

            String userEmail = loginDto.getEmail();
            authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(userEmail, loginDto.getPassword())
            );

            User user = userService.getUserByEmail(userEmail);

            if (user == null) {
                throw new UsernameNotFoundException("User with userEmail: " + userEmail + " not found");
            }

            String token = jwtTokenProvider.createToken(userEmail, user.getRole());

            Map<Object, Object> response = new HashMap<>();
            response.put("userEmail", userEmail);
            response.put("token", token);

            return ResponseEntity.ok(response);
        } catch (AuthenticationException e) {
            throw new BadCredentialsException("Invalid username or password");
        }
    }
}
