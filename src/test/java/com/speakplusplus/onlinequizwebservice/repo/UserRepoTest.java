package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
@Sql({"classpath:t_questions.sql",
    "classpath:t_topics.sql",
    "classpath:t_roles_and_permissions.sql"})
public class UserRepoTest {

    @Autowired
    private UserRepo userRepo;

    @Test
    public void testFindMultipleUsers() {
        List<String> emails = Arrays.asList("fedotenko@gmail.com",
            "maria@gmail.com",
            "julia@gmail.com");

        List<User> users = emails.stream()
            .map(email -> userRepo.findUserByEmail(email).get())
            .collect(Collectors.toList());

        Collection<User> multipleUsers = userRepo.findAllByEmailIn(emails);

        assertThat(multipleUsers).isNotNull();
        assertThat(multipleUsers).isNotEmpty();

        assertThat(multipleUsers.size()).isEqualTo(users.size());
    }
}
