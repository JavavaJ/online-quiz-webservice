package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.exception.UserNotFoundException;
import com.speakplusplus.onlinequizwebservice.model.User;
import com.speakplusplus.onlinequizwebservice.repo.UserRepo;
import org.hibernate.Hibernate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
public class UserService {

    private final UserRepo userRepo;

    public UserService(UserRepo userRepo) {
        this.userRepo = userRepo;
    }

    @Transactional
    public User getUserById(Long userId) {
        Optional<User> user = userRepo.findById(userId);
        return user.orElseThrow(() -> new UserNotFoundException(userId));
    }

    @Transactional
    public User getUserByEmail(String email) {
        Optional<User> userOptional = userRepo.findUserByEmail(email);
        User user = userOptional.orElseThrow(() -> new UserNotFoundException(email));
        Hibernate.initialize(user.getRole().getPermissions());
        return user;
    }
}
