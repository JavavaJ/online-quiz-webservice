package com.speakplusplus.onlinequizwebservice.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "T_QUIZ")
@NoArgsConstructor
@Getter @Setter
public class Quiz {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @ManyToOne
    @JoinColumn(name = "teacher_id")
    private User teacher;

    @ManyToMany(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    @JoinTable(name = "T_QUIZ_QUESTIONS",
        joinColumns = {@JoinColumn(name = "fk_quiz")},
        inverseJoinColumns = {@JoinColumn(name = "fk_question")})
    private List<Question> questions;


}
