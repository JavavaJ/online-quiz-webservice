package com.speakplusplus.onlinequizwebservice.security;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.test.context.jdbc.Sql;

import static org.junit.jupiter.api.Assertions.*;
import static org.assertj.core.api.Assertions.*;


@SpringBootTest
@Sql(scripts = "classpath:t_roles_and_permissions.sql")
class AppUserServiceTest {

    @Autowired
    private AppUserService appUserService;

    @Test
    public void testUserService() {
        String email = "fedotenko@gmail.com";
        UserDetails userDetails = appUserService.loadUserByUsername(email);
        assertThat(userDetails).isNotNull();
        assertThat(userDetails.getAuthorities().size())
            .isGreaterThan(2);
        assertThat(userDetails.getAuthorities())
            .extracting(GrantedAuthority::getAuthority)
            .contains("ASSIGNMENT_WRITE", "ASSIGNMENT_READ", "ADMIN")
            .doesNotContainNull();
    }

}