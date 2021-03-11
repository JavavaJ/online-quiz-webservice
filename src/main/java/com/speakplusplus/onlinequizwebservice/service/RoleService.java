package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.dto.RoleDTO;
import com.speakplusplus.onlinequizwebservice.exception.EntityNotFoundException;
import com.speakplusplus.onlinequizwebservice.model.Role;
import com.speakplusplus.onlinequizwebservice.repo.RoleRepo;
import lombok.RequiredArgsConstructor;
import org.hibernate.Hibernate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class RoleService {

    private final RoleRepo roleRepo;

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

    @Transactional
    public List<RoleDTO> getAllRoles() {

        List<RoleDTO> allRoles = roleRepo.findAll()
            .stream()
            .map(this::mapRoleToDto)
            .collect(Collectors.toList());

        List<RoleDTO> legitRoles = allRoles.stream()
            .filter(roleDTO -> !roleDTO.getName()
                .equals("ADMIN"))
            .collect(Collectors.toList());
        return legitRoles;
    }

    private RoleDTO mapRoleToDto(Role role) {
        RoleDTO dto = new RoleDTO();
        dto.setId(role.getId());
        dto.setName(role.getName());
        return dto;
    }

}
