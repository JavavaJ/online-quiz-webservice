package com.speakplusplus.onlinequizwebservice.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "T_ASSIGNMENT")
@NoArgsConstructor
@Getter @Setter
public class Assignment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "teacher_id")
    private User teacher;

    @ManyToMany(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    @JoinTable(name = "T_ASSIGNMENT_STUDENT",
        joinColumns = {@JoinColumn(name = "fk_assignment")},
        inverseJoinColumns = {@JoinColumn(name = "fk_student")})
    private List<User> students;

    @ManyToMany(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    @JoinTable(name = "T_ASSIGNMENT_QUESTIONS",
        joinColumns = {@JoinColumn(name = "fk_assignment")},
        inverseJoinColumns = {@JoinColumn(name = "fk_question")})
    private List<Question> questions;

    @Override
    public String toString() {
        return "Assignment{" +
            "id=" + id +
            '}';
    }
}
