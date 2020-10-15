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
        List<GrantedAuthority> grantedAuthorities = getGrantedAuthorities(user.getRole());
        return new AppUser(user.getName(), user.getPassword(), grantedAuthorities, user); // todo is user really needed?
    }

    private List<GrantedAuthority> getGrantedAuthorities(Role role) {
        ArrayList<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority(role.getName()));

        authorities.addAll(
            role.getPermissions()
                .stream()
                .map(el -> new SimpleGrantedAuthority(el.getName()))
                .collect(Collectors.toList())
        );
        return authorities;
    }
}
