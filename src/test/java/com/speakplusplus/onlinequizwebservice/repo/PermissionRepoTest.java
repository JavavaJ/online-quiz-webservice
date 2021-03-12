package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.core.Permission;
import com.speakplusplus.onlinequizwebservice.model.core.Role;
import com.speakplusplus.onlinequizwebservice.service.PermissionService;
import com.speakplusplus.onlinequizwebservice.service.RoleService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import static org.assertj.core.api.Assertions.*;


@SpringBootTest
class PermissionRepoTest {

    @Autowired
    private PermissionRepo permissionRepo;

    @Autowired
    private RoleRepo roleRepo;

    @Autowired
    private PermissionService permissionService;

    @Autowired
    private RoleService roleService;

    @Test
    public void testRepo() {
        Permission permission1 = new Permission();
        permission1.setName("READ_TASK");

        Permission permission2 = new Permission();
        permission2.setName("WRITE_TASK");

        List<Permission> yetMorePermissions = IntStream.range(0, 25)
            .mapToObj(num -> new Permission(Character.toString((char) num)))
            .collect(Collectors.toList());

        ArrayList<Permission> allPermissions = new ArrayList<>();
        allPermissions.add(permission1);
        allPermissions.add(permission2);
        allPermissions.addAll(yetMorePermissions);

        Role adminRole = new Role();
        adminRole.setName("ADMIN");
        adminRole.setPermissions(new HashSet<>(allPermissions));

        List<Role> adminInList = Arrays.asList(adminRole);
        allPermissions.forEach(permission -> permission.setRoles(adminInList));

        roleService.save(adminRole);

        Permission readPermissionFromService = permissionService.findByName("READ_TASK");
        Permission writePermissionFromService = permissionService.findByName("WRITE_TASK");

        Role adminFromDb = roleService.findByName("ADMIN");

        assertThat(readPermissionFromService).isNotNull();
        assertThat(writePermissionFromService).isNotNull();

        List<Role> roles = readPermissionFromService.getRoles();
        assertThat(roles).isNotNull();
        assertThat(roles.get(0).getName())
            .isEqualTo(adminFromDb.getName());

        assertThat(writePermissionFromService.getRoles()).isNotNull();

        System.out.println(readPermissionFromService);
        System.out.println(writePermissionFromService);
        System.out.println(roles);

        assertThat(roles.size()).isGreaterThan(0);
        assertThat(adminFromDb.getPermissions().size()).isGreaterThan(25);

    }

}