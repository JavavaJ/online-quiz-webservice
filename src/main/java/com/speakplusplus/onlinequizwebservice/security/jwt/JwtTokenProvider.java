package com.speakplusplus.onlinequizwebservice.security.jwt;

import com.speakplusplus.onlinequizwebservice.model.core.Permission;
import com.speakplusplus.onlinequizwebservice.model.core.Role;
import com.speakplusplus.onlinequizwebservice.security.AppUserService;
import com.speakplusplus.onlinequizwebservice.security.SecurityProperties;
import io.jsonwebtoken.*;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Component
@RequiredArgsConstructor
public class JwtTokenProvider {

    private final AppUserService appUserService;
    private final SecurityProperties securityProperties;

    private String secret;

    @PostConstruct
    public void init() {
        secret = securityProperties.getJwtSecret();
        secret = Base64.getEncoder().encodeToString(secret.getBytes());
    }

    public String createToken(String userEmail, Role role) {
        Claims claims = Jwts.claims().setSubject(userEmail);

        claims.put("roles", getRoleNames(role));

        Date now = new Date();
        java.sql.Date expireAt = java.sql.Date.valueOf(LocalDate.now()
            .plusWeeks(securityProperties.getJwtExpireAfterWeeks()));


        return Jwts.builder()
            .setClaims(claims)
            .setIssuedAt(now)
            .setExpiration(expireAt)
            .signWith(SignatureAlgorithm.HS256, secret)
            .compact();
    }

    public String getUserEmail(String token) {
        return Jwts.parser()
            .setSigningKey(secret)
            .parseClaimsJws(token)
            .getBody()
            .getSubject();
    }

    public Authentication getAuthentication(String token) {
        UserDetails appUser = appUserService.loadUserByUsername(getUserEmail(token));
        return new UsernamePasswordAuthenticationToken(
            appUser,
            "",
            appUser.getAuthorities()
        );
    }

    public String resolveToken(HttpServletRequest req) {
        String bearerToken = req.getHeader("Authorization");
        if (bearerToken != null && bearerToken.startsWith("Bearer ")) {
            int offset = "Bearer ".length();
            return bearerToken.substring(offset);
        }
        return null;
    }

    public boolean validateToken(String token) {
        try {
            Jws<Claims> claims = Jwts.parser().setSigningKey(secret).parseClaimsJws(token);

            if (claims.getBody().getExpiration().before(new Date())) {
                return false;
            }

            return true;
        } catch (JwtException | IllegalArgumentException e) {
            throw new JwtAuthenticationException("JWT token is expired or invalid");
        }
    }

//    private List<String> getRoleNames(List<Role> roles) {
//        List<String> roleNames = new ArrayList<>();
//
//        roles.forEach(role -> {
//            roleNames.add(role.getName());
//            roleNames.addAll(
//                role.getPermissions()
//                    .stream()
//                    .map(Permission::getName)
//                    .collect(Collectors.toList()));
//        });
//
//        return roleNames;
//    }

    private List<String> getRoleNames(Role role) {
        List<String> roleNames = new ArrayList<>();

        roleNames.add(role.getName());
        roleNames.addAll(
            role.getPermissions()
                .stream()
                .map(Permission::getName)
                .collect(Collectors.toList()));

        return roleNames;
    }
}
