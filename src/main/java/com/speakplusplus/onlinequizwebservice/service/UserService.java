package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.dto.LoginDTO;
import com.speakplusplus.onlinequizwebservice.dto.PrincipalDto;
import com.speakplusplus.onlinequizwebservice.dto.UserDTO;
import com.speakplusplus.onlinequizwebservice.exception.UserNotFoundException;
import com.speakplusplus.onlinequizwebservice.model.core.Role;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import com.speakplusplus.onlinequizwebservice.repo.UserRepo;
import lombok.RequiredArgsConstructor;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepo userRepo;
    private final RoleService roleService;
    private final PasswordEncoder encoder;

    @Autowired
    private UserService self;

    @Transactional
    public User getUserById(Long userId) {
        Optional<User> user = userRepo.findById(userId);
        return user.orElseThrow(() -> new UserNotFoundException(userId));
    }

    @Transactional
    public Collection<User> getUsersByEmails(Iterable<String> emails) {
        return userRepo.findAllByEmailIn(emails);
    }

    @Transactional
    public boolean existsById(Long userId) {
        return userRepo.existsById(userId);
    }

    @Transactional
    public boolean existsByEmail(String email) {
        return userRepo.existsByEmail(email);
    }

    @Transactional
    public boolean existAll(Collection<String> emails) {
        emails.forEach(email -> {
            if (!self.existsByEmail(email)) {
                throw new UserNotFoundException(email);
            }
        });
        return true;
    }

    @Transactional
    public List<User> getUsersByIds(Iterable<Long> ids) {
        return userRepo.findAllById(ids);
    }

    @Transactional
    public User getUserByEmail(String email) {
        Optional<User> userOptional = userRepo.findUserByEmail(email);
        User user = userOptional.orElseThrow(() -> new UserNotFoundException(email));
        Hibernate.initialize(user.getRole().getPermissions());
        return user;
    }

    @Transactional
    public User saveUser(UserDTO userDto) {
        User user = mapUserDTOToUser(userDto);
        Optional<User> userByEmail = userRepo.findUserByEmail(userDto.getEmail());
//        return userByEmail.orElseGet(() -> userRepo.save(user));
        if (userByEmail.isPresent()) {
            throw new RuntimeException("Such user already exists");
        }
        return userRepo.save(user);
    }

    private User mapUserDTOToUser(UserDTO userDTO) {
        User user = new User();

        user.setName(userDTO.getName());
        user.setPassword(encoder.encode(userDTO.getPassword()));
        user.setEmail(userDTO.getEmail());

        Role role = roleService.findById(userDTO.getRoleId());
        user.setRole(role);
        return user;
    }

    public PrincipalDto getPrincipalDto(User user) {
        PrincipalDto principal = new PrincipalDto();
        principal.setId(user.getId());
        principal.setName(user.getName());
        principal.setEmail(user.getEmail());
        principal.setRoleId(user.getRole().getId());
        return principal;
    }

    public LoginDTO getLoginDto(User user, String token) {
        LoginDTO loginDTO = new LoginDTO();
        loginDTO.setId(user.getId());
        loginDTO.setUsername(user.getName());
        loginDTO.setToken(token);
        loginDTO.setEmail(user.getEmail());
        loginDTO.setRoleId(user.getRole().getId());
        return loginDTO;
    }
}
