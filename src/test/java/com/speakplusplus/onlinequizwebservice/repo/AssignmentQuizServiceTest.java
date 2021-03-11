package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.dto.AssignmentFullDTO;
import com.speakplusplus.onlinequizwebservice.model.Assignment;
import com.speakplusplus.onlinequizwebservice.model.Question;
import com.speakplusplus.onlinequizwebservice.model.Quiz;
import com.speakplusplus.onlinequizwebservice.model.User;
import com.speakplusplus.onlinequizwebservice.service.AssignmentService;
import com.speakplusplus.onlinequizwebservice.service.QuestionService;
import com.speakplusplus.onlinequizwebservice.service.QuizService;
import com.speakplusplus.onlinequizwebservice.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;

import java.util.Arrays;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;


@SpringBootTest
@Sql({"classpath:t_questions.sql",
    "classpath:t_topics.sql",
    "classpath:t_roles_and_permissions.sql"})
public class AssignmentQuizServiceTest {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private UserService userService;

    @Autowired
    private AssignmentService assignmentService;

    @Autowired
    private AssignmentRepo assignmentRepo;

    @Autowired
    private QuizRepo quizRepo;

    @Autowired
    private QuizService quizService;

    @Test
    public void testGetUserAssignments() {
        Long studentId = 3L;

        saveTwoAssignments();

        List<AssignmentFullDTO> userAssignments = assignmentService.getUserAssignments(studentId);

        assertThat(userAssignments).isNotNull();
        assertThat(userAssignments).isNotEmpty();

        assertThat(userAssignments.size()).isEqualTo(2);

    }

    private void saveTwoAssignments() {
        User teacher = userService.getUserById(2L);
        User student = userService.getUserById(3L);

        List<Long> ids = Arrays.asList(227L, 300L, 331L, 357L, 382L);
        List<Question> questions = questionService.getQuestionsByIds(ids);

        Quiz quiz1 = new Quiz();
        quiz1.setName("First quiz");
        quiz1.setDescription("This is first quiz");
        quiz1.setTeacher(teacher);
        quiz1.setQuestions(questions);

        Quiz savedQuiz1 = quizService.saveQuiz(quiz1);

        Assignment assignment1 = new Assignment();
        assignment1.setName(savedQuiz1.getName());
        assignment1.setQuiz(savedQuiz1);

        List<User> studentInList = Arrays.asList(student);
        assignment1.setStudents(studentInList);

        Assignment savedAssignment1 = assignmentService.saveAssignment(assignment1);

        List<Long> ids2 = Arrays.asList(100L, 111L, 122L);
        List<Question> questions2 = questionService.getQuestionsByIds(ids2);

        Quiz quiz2 = new Quiz();
        quiz2.setName("Second quiz");
        quiz2.setDescription("This is second quiz");
        quiz2.setTeacher(teacher);
        quiz2.setQuestions(questions2);

        Quiz savedQuiz2 = quizService.saveQuiz(quiz2);

        Assignment assignment2 = new Assignment();
        assignment2.setName(quiz2.getName());
        assignment2.setQuiz(savedQuiz2);
        assignment2.setStudents(studentInList);

        assignmentService.saveAssignment(assignment2);
    }

    @Test
    public void getTeacherAssignment() {
        User teacher = userService.getUserById(2L);
        User student = userService.getUserById(3L);

        List<Long> ids = Arrays.asList(227L, 300L, 331L, 357L, 382L);
        List<Question> questions = questionService.getQuestionsByIds(ids);

        Quiz quiz1 = new Quiz();
        quiz1.setName("First quiz");
        quiz1.setDescription("This is first quiz");
        quiz1.setTeacher(teacher);
        quiz1.setQuestions(questions);

        Quiz savedQuiz1 = quizService.saveQuiz(quiz1);

        Assignment assignment1 = new Assignment();
        assignment1.setName(savedQuiz1.getName());
        assignment1.setQuiz(savedQuiz1);

        List<User> studentInList = Arrays.asList(student);
        assignment1.setStudents(studentInList);

        Assignment savedAssignment1 = assignmentService.saveAssignment(assignment1);

        List<AssignmentFullDTO> teacherAssignments = assignmentService.getTeacherAssignments(teacher);

        assertThat(teacherAssignments).isNotNull();
        assertThat(teacherAssignments).isNotEmpty();

        assertThat(teacherAssignments.size()).isEqualTo(1);

        System.out.println(teacherAssignments);
    }

}
