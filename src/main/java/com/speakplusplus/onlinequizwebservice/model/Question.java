package com.speakplusplus.onlinequizwebservice.model;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "T_QUESTIONS")
@NoArgsConstructor
@Getter @Setter
public class Question {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "question")
    private String question;

    @Column(name = "a")
    private String a;

    @Column(name = "b")
    private String b;

    @Column(name = "c")
    private String c;

    @Column(name = "d")
    private String d;

    @Column(name = "right_an")
    private String rightAn;

    @Column(name = "tags")
    private String tags;


    //    @Override
//    public String toString() {
//        return "Question{" +
//            "id=" + id +
//            ", question='" + question + '\'' +
//            ", a='" + a + '\'' +
//            ", b='" + b + '\'' +
//            ", c='" + c + '\'' +
//            ", d='" + d + '\'' +
//            ", rightAn='" + rightAn + '\'' +
//            ", tags='" + tags + '\'' +
//            '}';
//    }
}
