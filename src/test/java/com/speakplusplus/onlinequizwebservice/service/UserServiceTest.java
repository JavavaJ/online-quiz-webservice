package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.exception.UserNotFoundException;
import com.speakplusplus.onlinequizwebservice.model.Permission;
import com.speakplusplus.onlinequizwebservice.model.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;

import java.util.Arrays;
import java.util.List;

import static org.assertj.core.api.Assertions.*;


@SpringBootTest
@Sql(scripts = "classpath:t_roles_and_permissions.sql")
class UserServiceTest {

    @Autowired
    private UserService userService;

    @Test
    public void testUserService() {
        User userById = userService.getUserById(1L);
        assertThat(userById.getName().equals("Alex")).isTrue();
        assertThat(userById.getPassword().equals("12345")).isTrue();
        assertThat(userById.getRole()
            .getName()
            .equals("ADMIN")).isTrue();
    }

    @Test
    public void testUserServiceGetByEmail() {
        User user = userService.getUserByEmail("julia@gmail.com");
        assertThat(user.getName().equals("Julia")).isTrue();
        assertThat(user.getPassword().equals("12345")).isTrue();
        assertThat(user.getRole()
            .getName()
            .equals("STUDENT")).isTrue();

        assertThat(user.getRole().getPermissions())
            .extracting(Permission::getName)
            .contains("ASSIGNMENT_READ");
    }

    @Test
    public void testException() {
        String nonsense = "eiresijriok";
        assertThatThrownBy(() -> userService.getUserByEmail(nonsense))
            .isInstanceOf(UserNotFoundException.class)
            .hasMessageContaining("User with email: " + nonsense + " not found");
    }

    @Test
    public void testGetUsersByIds() {
        List<User> users = userService.getUsersByIds(Arrays.asList(1L, 2L, 3L));
        assertThat(users).isNotNull().isNotEmpty();
        assertThat(users.size()).isEqualTo(3);
    }

}