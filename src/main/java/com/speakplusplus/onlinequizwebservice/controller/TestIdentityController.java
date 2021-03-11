package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.dto.PrincipalDto;
import com.speakplusplus.onlinequizwebservice.model.User;
import com.speakplusplus.onlinequizwebservice.security.AppUser;
import com.speakplusplus.onlinequizwebservice.security.AuthenticationFacade;
import com.speakplusplus.onlinequizwebservice.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

@RestController
@RequestMapping("echo")
@RequiredArgsConstructor
public class TestIdentityController {

    private final AuthenticationFacade authenticationFacade;
    private final UserService userService;

    @GetMapping
    public Authentication getCurrentAuthentication() {
        return authenticationFacade.getAuthentication();
    }

    @GetMapping("user")
    public PrincipalDto getCurrentUser() {
        User user = authenticationFacade.getCurrentUser();
        return userService.getPrincipalDto(user);
    }

}
