package com.speakplusplus.onlinequizwebservice.security;

import com.speakplusplus.onlinequizwebservice.model.core.Role;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class AppUserFactory {

    public AppUserFactory() {
    }

    public static AppUser create(User user) {
        List<GrantedAuthority> grantedAuthorities = getGrantedAuthorities(user.getRole());

        return new AppUser(
            user.getName(),
            user.getPassword(),
            grantedAuthorities,
            user);
    }

    private static List<GrantedAuthority> getGrantedAuthorities(Role role) {
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
