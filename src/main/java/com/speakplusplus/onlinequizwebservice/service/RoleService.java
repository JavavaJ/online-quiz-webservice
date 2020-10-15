package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.exception.EntityNotFoundException;
import com.speakplusplus.onlinequizwebservice.model.Role;
import com.speakplusplus.onlinequizwebservice.repo.RoleRepo;
import lombok.RequiredArgsConstructor;
import org.hibernate.Hibernate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class RoleService {

    private final RoleRepo roleRepo;
    private Role role;

    @Transactional
    public void save(Role role) {
        roleRepo.save(role);
    }

    @Transactional
    public Role findByName(String name) {
        Role role = roleRepo.findByName(name);
        Hibernate.initialize(role.getPermissions());
        return role;
    }

    @Transactional
    public Role findById(Long roleId) {
        Optional<Role> roleOptional = roleRepo.findById(roleId);
        return roleOptional.orElseThrow(() -> new EntityNotFoundException(Role.class, roleId));
    }

}
