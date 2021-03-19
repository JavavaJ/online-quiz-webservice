package com.speakplusplus.onlinequizwebservice.model;

import com.speakplusplus.onlinequizwebservice.model.core.User;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "T_ASSIGNMENT_REPORT")
@NoArgsConstructor
@Getter @Setter
public class AssignmentReport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "assignment_id")
    private Long assignmentId;

    @Column(name = "assignment_name")
    private String name;

    @ManyToOne
    private User student;

    @ManyToOne
    private User teacher;

    @OneToMany(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    @JoinTable(name = "T_ASSIGNMENT_ANSWERED_QUESTIONS",
        joinColumns = {@JoinColumn(name = "fk_assignment_report_id")},
        inverseJoinColumns ={@JoinColumn(name = "fk_answered_question_id")})
    private Collection<AnsweredQuestion> answeredQuestions;

    @Column(name = "correct_answers")
    private Integer correctAnswers;

    @Column(name = "total_answers")
    private Integer totalAnswers;

    @Column(name = "created")
    private LocalDateTime createdAt;

    @PrePersist
    public void prePersist() {
        createdAt = LocalDateTime.now();
    }

}
