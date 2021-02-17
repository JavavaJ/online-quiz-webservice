package com.speakplusplus.onlinequizwebservice.security;

import com.speakplusplus.onlinequizwebservice.model.Permission;
import com.speakplusplus.onlinequizwebservice.model.Role;
import com.speakplusplus.onlinequizwebservice.model.User;
import com.speakplusplus.onlinequizwebservice.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AppUserService implements UserDetailsService {

    private final UserService userService;

    @Override
    public UserDetails loadUserByUsername(String userEmail) throws UsernameNotFoundException {
        User user = userService.getUserByEmail(userEmail);

        if (user == null) {
            throw new UsernameNotFoundException("User with userEmail: " + userEmail + " not found");
        }

        return AppUserFactory.create(user);
    }


}
