package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.core.Assignment;
import com.speakplusplus.onlinequizwebservice.model.core.Question;
import com.speakplusplus.onlinequizwebservice.model.core.Quiz;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import com.speakplusplus.onlinequizwebservice.service.AssignmentService;
import com.speakplusplus.onlinequizwebservice.service.QuestionService;
import com.speakplusplus.onlinequizwebservice.service.QuizService;
import com.speakplusplus.onlinequizwebservice.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;

import java.util.*;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
@Sql({"classpath:t_questions.sql",
    "classpath:t_topics.sql",
    "classpath:t_roles_and_permissions.sql"})
class AssignmentRepoTest {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private UserService userService;

    @Autowired
    private AssignmentService assignmentService;

    @Autowired
    private AssignmentRepo assignmentRepo;

    @Autowired
    private QuizService quizService;

//    @Test
//    public void testStudentInMethod() {
//        User teacher = userService.getUserById(2L);
//        User student = userService.getUserById(3L);
//
//        List<Long> ids = Arrays.asList(227L, 300L, 331L, 357L, 382L);
//        List<Question> questions = questionService.getQuestionsByIds(ids);
//
//        Assignment assignment = new Assignment();
//        assignment.setTeacher(teacher);
//        List<User> studentInList = Arrays.asList(student);
//        assignment.setStudents(studentInList);
//        assignment.setQuestions(questions);
//
//        Assignment savedAssignment = assignmentService.saveAssignment(assignment);
//
//        List<Assignment> assignmentInList = assignmentRepo.findByStudentsIn(studentInList);
//
//        if (!assignmentInList.isEmpty()) {
//            Assignment assignmentOfUser = assignmentInList.get(0);
//            System.out.println("assignmentOfUser: " + assignmentOfUser);
//
//            assertThat(assignmentOfUser).isNotNull();
//            assertThat(assignmentOfUser.getId()).isEqualTo(1L);
//
//            List<Question> questionsFromAssignment
//                = assignmentService.getQuestionListById(assignmentOfUser.getId());
//            assertThat(questionsFromAssignment.size()).isEqualTo(questions.size());
//            assertThat(questionsFromAssignment)
//                .extracting(Question::getId)
//                .contains(227L, 300L, 331L, 357L, 382L);
//        }
//    }
//
//    @Test
//    public void testStudentGetsTwoAssignments_andThereAreTwoAssignments() {
//        saveTwoAssignments();
//
//        User student = userService.getUserById(3L);
//
//        List<User> studentInList = Collections.singletonList(student);
//
//        List<Assignment> twoAssignments = assignmentRepo.findByStudentsIn(studentInList);
//
//        assertThat(twoAssignments.size()).isEqualTo(2);
//
//        System.out.println("twoAssignments: " + twoAssignments);
//
//        Assignment assignmentOne = twoAssignments.get(0);
//        List<Question> questionListByIdFromAssignmentOne = assignmentService.getQuestionListById(assignmentOne.getId());
//        assertThat(questionListByIdFromAssignmentOne.size()).isEqualTo(5);
//
//        assertThat(questionListByIdFromAssignmentOne)
//            .extracting(Question::getId)
//            .contains(227L, 300L, 331L, 357L, 382L);
//
//        Assignment assignmentTwo = twoAssignments.get(1);
//        List<Question> questionListByIdFromAssignmentTwo = assignmentService.getQuestionListById(assignmentTwo.getId());
//        assertThat(questionListByIdFromAssignmentTwo.size()).isEqualTo(3);
//
//        assertThat(questionListByIdFromAssignmentTwo)
//            .extracting(Question::getId)
//            .contains(100L, 111L, 122L);
//
//
//    }
//
//    private void saveTwoAssignments() {
//        User teacher = userService.getUserById(2L);
//        User student = userService.getUserById(3L);
//
//        List<Long> ids = Arrays.asList(227L, 300L, 331L, 357L, 382L);
//        List<Question> questions = questionService.getQuestionsByIds(ids);
//
//        Assignment assignment1 = new Assignment();
//        assignment1.setTeacher(teacher);
//        List<User> studentInList = Arrays.asList(student);
//        assignment1.setStudents(studentInList);
//        assignment1.setQuestions(questions);
//
//        Assignment savedAssignment1 = assignmentService.saveAssignment(assignment1);
//
//        User teacher2 = userService.getUserById(1L);
//
//        List<Long> ids2 = Arrays.asList(100L, 111L, 122L);
//        List<Question> questions2 = questionService.getQuestionsByIds(ids2);
//
//        Assignment assignment2 = new Assignment();
//        assignment2.setTeacher(teacher2);
//        assignment2.setStudents(studentInList);
//        assignment2.setQuestions(questions2);
//
//        assignmentService.saveAssignment(assignment2);
//    }

    @Test
    public void testFindTeacherByAssignmentId() {
        User teacher = userService.getUserById(2L);

        List<Long> ids = Arrays.asList(227L, 300L, 331L, 357L, 382L);
        List<Question> questions = questionService.getQuestionsByIds(ids);

        Quiz quiz = new Quiz();
        quiz.setName("My Grammar Quiz");
        quiz.setTeacher(teacher);
        quiz.setQuestions(questions);

        Quiz savedQuiz = quizService.saveQuiz(quiz);

        User julia = userService.getUserById(3L);
        List<User> students = Arrays.asList(julia);

        Assignment assignment = new Assignment();
        assignment.setName("My grammar task");
        assignment.setQuiz(savedQuiz);
        assignment.setStudents(students);

        Assignment savedAssignment = assignmentService.saveAssignment(assignment);


        User teacherByAssignmentId = assignmentRepo.findTeacherByAssignmentId(savedAssignment.getId());
        assertThat(teacher.getId()).isEqualTo(teacherByAssignmentId.getId());
        assertThat(teacher.getName()).isEqualTo(teacherByAssignmentId.getName());
        assertThat(teacher.getPassword()).isEqualTo(teacherByAssignmentId.getPassword());



        System.out.println(teacherByAssignmentId);
    }


}