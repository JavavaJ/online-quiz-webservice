package com.speakplusplus.onlinequizwebservice.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "T_PERMISSIONS")
@NoArgsConstructor
@Getter @Setter
public class Permission {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @ManyToMany(
        mappedBy = "permissions",
        fetch = FetchType.LAZY)
    private List<Role> roles = new ArrayList<>();

    public Permission(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Permission{" +
            "id=" + id +
            ", name='" + name + '\'' +
            '}';
    }
}
