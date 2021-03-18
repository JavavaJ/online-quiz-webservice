package com.speakplusplus.onlinequizwebservice.model.core;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "T_STUDY_GROUP")
@NoArgsConstructor
@Getter
@Setter
public class StudyGroup {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @ManyToOne
    @JoinColumn(name = "teacher_id")
    private User teacher;

    @OneToMany(cascade = CascadeType.MERGE)
    @JoinTable(name = "T_STUDY_GROUP_STUDENT",
        joinColumns = {@JoinColumn(name = "FK_STUDY_GROUP_ID")},
        inverseJoinColumns = {@JoinColumn(name = "FK_STUDENT_ID")}
    )
    private Collection<User> students;

}
