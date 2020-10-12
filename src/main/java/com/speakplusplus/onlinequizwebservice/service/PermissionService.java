package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.model.Permission;
import com.speakplusplus.onlinequizwebservice.repo.PermissionRepo;
import org.hibernate.Hibernate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PermissionService {

    private final PermissionRepo permissionRepo;

    public PermissionService(PermissionRepo permissionRepo) {
        this.permissionRepo = permissionRepo;
    }

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
