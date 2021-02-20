package com.speakplusplus.onlinequizwebservice.security;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

@Component
public class AuthenticationFacade {

    public Authentication getAuthentication() {
        return SecurityContextHolder.getContext().getAuthentication();
    }

    public Long getPrincipalUserId() {
        // todo
        // if anonymous user calls this -> there is a cast exception.
        // there should be check that it is AppUser class
        AppUser appUser = (AppUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        return appUser.getUser().getId();
    }

}
