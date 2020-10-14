package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.model.Permission;
import com.speakplusplus.onlinequizwebservice.repo.PermissionRepo;
import lombok.RequiredArgsConstructor;
import org.hibernate.Hibernate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class PermissionService {

    private final PermissionRepo permissionRepo;

    @Transactional
    public void save(Permission permission) {
        permissionRepo.save(permission);
    }

    @Transactional
    public Permission findByName(String name) {
        Permission permission = permissionRepo.findByName(name);
        Hibernate.initialize(permission.getRoles());
        return permission;
    }
}
