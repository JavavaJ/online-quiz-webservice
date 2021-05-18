package com.speakplusplus.onlinequizwebservice.model.core;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "T_CONFIRMATION_TOKEN")
@NoArgsConstructor
@Getter @Setter
public class ConfirmationToken {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "token")
    private String token;

    @Column(name = "createdAt")
    private LocalDateTime createdAt;

    @Column(name = "expiresAt")
    private LocalDateTime expiresAt;

    @Column(name = "confirmedAt")
    private LocalDateTime confirmedAt;

    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    public ConfirmationToken(
        String token,
        LocalDateTime createdAt,
        LocalDateTime expiresAt,
        LocalDateTime confirmedAt,
        User user) {
        this.token = token;
        this.createdAt = createdAt;
        this.expiresAt = expiresAt;
        this.confirmedAt = confirmedAt;
        this.user = user;
    }


}
