package com.speakplusplus.onlinequizwebservice.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "T_ASSIGNMENTS")
@NoArgsConstructor
@Getter @Setter
public class Assignment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @ManyToOne(cascade = CascadeType.MERGE)
    private Quiz quiz;

    @ManyToMany(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    @JoinTable(name = "T_ASSIGNMENT_STUDENT",
        joinColumns = {@JoinColumn(name = "fk_assignment")},
        inverseJoinColumns = {@JoinColumn(name = "fk_student")})
    private List<User> students;


    @Override
    public String toString() {
        return "Assignment{" +
            "id=" + id +
            '}';
    }
}
