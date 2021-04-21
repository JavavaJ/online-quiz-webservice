package com.speakplusplus.onlinequizwebservice.model.core;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "T_TUTORSHIP")
@NoArgsConstructor
@Getter @Setter
public class Tutorship {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "teacher_id")
    private User teacher;

    @OneToMany(cascade = CascadeType.DETACH)
    @JoinTable(name = "T_TUTORSHIP_STUDENTS",
        joinColumns = {@JoinColumn(name = "fk_tutorship_id")},
        inverseJoinColumns = {@JoinColumn(name = "fk_student_id")}
    )
    private Collection<User> students;
}
