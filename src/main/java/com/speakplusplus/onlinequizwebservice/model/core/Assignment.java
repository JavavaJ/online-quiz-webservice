package com.speakplusplus.onlinequizwebservice.model.core;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.util.Collection;
import java.util.Date;

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
    private Collection<User> students;

    @Column(name = "created", columnDefinition = "TIMESTAMP WITH TIME ZONE")
    private OffsetDateTime createdAt;

    @Column(name = "updated", columnDefinition = "TIMESTAMP WITH TIME ZONE")
    private OffsetDateTime updatedAt;

    @Column(name = "isCompleted")
    private Boolean isCompleted = Boolean.FALSE;

    @Column(name = "completed_at", columnDefinition = "TIMESTAMP WITH TIME ZONE")
    private OffsetDateTime completedAt;

    @PrePersist
    public void prePersist() {
        createdAt = OffsetDateTime.now();
    }

    @PreUpdate
    public void preUpdate() {
        updatedAt = OffsetDateTime.now();
    }

    @Override
    public String toString() {
        return "Assignment{" +
            "id=" + id +
            '}';
    }
}
