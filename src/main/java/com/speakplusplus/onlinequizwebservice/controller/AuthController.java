package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.dto.AuthenticationRequestDto;
import com.speakplusplus.onlinequizwebservice.dto.RoleDTO;
import com.speakplusplus.onlinequizwebservice.dto.UserDTO;
import com.speakplusplus.onlinequizwebservice.model.User;
import com.speakplusplus.onlinequizwebservice.security.jwt.JwtTokenProvider;
import com.speakplusplus.onlinequizwebservice.service.RoleService;
import com.speakplusplus.onlinequizwebservice.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("api/v1/auth")
@RequiredArgsConstructor
public class AuthController {

    private final AuthenticationManager authenticationManager;
    private final JwtTokenProvider jwtTokenProvider;
    private final UserService userService;
    private final RoleService roleService;

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
            response.put("username", user.getName());

            return ResponseEntity.ok(response);
        } catch (AuthenticationException e) {
            throw new BadCredentialsException("Invalid username or password");
        }
    }

    @PostMapping("register")
    public User saveUser(@RequestBody UserDTO userDTO) {
        return userService.saveUser(userDTO);
    }

    @GetMapping("roles")
    public List<RoleDTO> getAllRoles() {
        return roleService.getAllRoles();
    }
}
