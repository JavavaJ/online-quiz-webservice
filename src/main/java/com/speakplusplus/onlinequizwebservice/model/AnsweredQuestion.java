package com.speakplusplus.onlinequizwebservice.model;

import com.speakplusplus.onlinequizwebservice.model.core.Question;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "T_ANSWERED_QUESTION")
@NoArgsConstructor
@Getter @Setter
public class AnsweredQuestion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "question_id")
    private Question question;

    @Column(name = "answer")
    private String answer;
}
