package com.speakplusplus.onlinequizwebservice.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.speakplusplus.onlinequizwebservice.dto.UserDTO;
import com.speakplusplus.onlinequizwebservice.exception.UserNotFoundException;
import com.speakplusplus.onlinequizwebservice.model.Permission;
import com.speakplusplus.onlinequizwebservice.model.Role;
import com.speakplusplus.onlinequizwebservice.model.User;
import com.speakplusplus.onlinequizwebservice.repo.UserRepo;
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

    @Autowired
    private RoleService roleService;

    @Autowired
    private UserRepo userRepo;

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

    @Test
    public void testSaveUserWithRepo() {
        User user = new User();

        user.setName("Mike");
        user.setEmail("mike@mail.com");
        user.setPassword("pass");

        Role roleStudent = roleService.findById(3L);
        user.setRole(roleStudent);

        User savedUser = userRepo.save(user);

        assertThat(savedUser.getId()).isNotNull();
    }

    @Test
    public void testSaveUserWithService() {
        UserDTO userDTO = buildUserDTO();

        userService.saveUser(userDTO);

        User userFromService = userService.getUserByEmail(userDTO.getEmail());

        assertThat(userFromService).isNotNull();
        assertThat(userFromService.getId()).isNotNull();
        assertThat(userFromService.getName().equals(userDTO.getName()));
        assertThat(userFromService.getPassword().equals(userDTO.getPassword()));

        assertThat(userFromService.getRole()).isNotNull();
        assertThat(userFromService.getRole().getName().equals("ADMIN"));
    }

    @Test
    public void testSaveAlreadyExistingUser() {
        UserDTO userDTO = buildAlreadyExistingUserDTO();
        userService.saveUser(userDTO);

        List<User> allUsers = userRepo.findAll();

        assertThat(allUsers).isNotNull().isNotEmpty();
        assertThat(allUsers.size()).isEqualTo(4);
    }

    private UserDTO buildUserDTO() {
        UserDTO userDTO = new UserDTO();
        userDTO.setName("John");
        userDTO.setEmail("john@mail.coim");
        userDTO.setPassword("pass");
        userDTO.setRoleId(1L);
        return userDTO;
    }

    private UserDTO buildAlreadyExistingUserDTO() {
        UserDTO userDTO = new UserDTO();
        userDTO.setName("Alexxxx");
        userDTO.setEmail("fedotenko@gmail.com");
        userDTO.setPassword("12345");
        userDTO.setRoleId(1L);
        return userDTO;
    }

    @Test
    public void printUserToJson() throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(buildUserDTO());
        System.out.println(json);
        // {"name":"John","password":"pass","email":"john@mail.coim","roleId":1}
    }

    @Test
    public void testToDeleete() {

    }

}