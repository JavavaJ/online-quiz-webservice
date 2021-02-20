package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.dto.UserDTO;
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
import java.util.Collections;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
@Sql({"classpath:t_questions.sql",
    "classpath:t_topics.sql",
    "classpath:t_roles_and_permissions.sql"})
public class AssignmentQuizRepoTest {

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
        public void testStudentInMethod() {
            User teacher = userService.getUserById(2L);
            User student = userService.getUserById(3L);

            Quiz quiz = new Quiz();
            quiz.setName("English quiz");
            quiz.setDescription("Vocabulary");
            quiz.setTeacher(teacher);

            List<Long> ids = Arrays.asList(227L, 300L, 331L, 357L, 382L);
            List<Question> questions = questionService.getQuestionsByIds(ids);
            quiz.setQuestions(questions);

            Quiz savedQuiz = quizRepo.save(quiz);

            Assignment assignment = new Assignment();
            assignment.setName(quiz.getName());
            assignment.setQuiz(savedQuiz);
            List<User> studentInList = Arrays.asList(student);
            assignment.setStudents(studentInList);

            Assignment savedAssignment = assignmentService.saveAssignment(assignment);

            List<Assignment> assignmentInList = assignmentRepo.findByStudentsIn(studentInList);

            if (!assignmentInList.isEmpty()) {
                Assignment assignmentOfUser = assignmentInList.get(0);
                System.out.println("assignmentOfUser: " + assignmentOfUser);

                assertThat(assignmentOfUser).isNotNull();
                assertThat(assignmentOfUser.getId()).isEqualTo(1L);


                Quiz quiz1 = assignmentOfUser.getQuiz();
                List<Question> questionsFromAssignment = quizRepo.findQuestionsById(quiz1.getId());
                assertThat(questionsFromAssignment.size()).isEqualTo(questions.size());
                assertThat(questionsFromAssignment)
                    .extracting(Question::getId)
                    .contains(227L, 300L, 331L, 357L, 382L);
            }
        }

        @Test
        public void testSeveralStudentsInAssignment() {
            User teacher = userService.getUserById(2L);
            User julia = userService.getUserById(3L);

            User rosa = buildRosa();

            Quiz quiz = buildQuiz(teacher);

            Quiz savedQuiz = quizRepo.save(quiz);

            Assignment assignment = new Assignment();
            assignment.setName(quiz.getName());
            assignment.setQuiz(savedQuiz);
            List<User> studentInList = Arrays.asList(julia, rosa);
            assignment.setStudents(studentInList);

            Assignment savedAssignment = assignmentService.saveAssignment(assignment);

            List<User> rosaList = Collections.singletonList(rosa);

            List<Assignment> rosaAssignmentList = assignmentRepo.findByStudentsIn(rosaList);

            if (!rosaAssignmentList.isEmpty()) {
                Assignment rosaAssignment = rosaAssignmentList.get(0);
                System.out.println("Rosa's Assignment: " + rosaAssignment);

                assertThat(rosaAssignment).isNotNull();
                assertThat(rosaAssignment.getId()).isEqualTo(1L);

                Quiz quiz1 = rosaAssignment.getQuiz();
                List<Question> questionsFromAssignment = quizRepo.findQuestionsById(quiz1.getId());

                int questionsSize = 5;
                assertThat(questionsFromAssignment.size()).isEqualTo(questionsSize);
                assertThat(questionsFromAssignment)
                    .extracting(Question::getId)
                    .contains(227L, 300L, 331L, 357L, 382L);
            }
        }

        @Test
        public void testFindByQuizTeacherId() {
            User teacher = userService.getUserById(2L);

            Assignment firstAssignment = buildFirstAssignment(teacher);
            Assignment secondAssignment = buildSecondAssignment(teacher);

            List<Assignment> teacherAssignments = assignmentRepo.findByQuiz_Teacher_Id(teacher);

            assertThat(teacherAssignments).isNotNull();
            assertThat(teacherAssignments).isNotEmpty();
            assertThat(teacherAssignments.size()).isEqualTo(2);

            Quiz quiz1 = teacherAssignments.get(0).getQuiz();

            List<Question> questionsQuizOne = quizService.getQuestionsByQuizId(quiz1.getId());
            assertThat(questionsQuizOne)
                .extracting(Question::getId)
                .contains(227L, 300L, 331L, 357L, 382L);

            Quiz quiz2 = teacherAssignments.get(1).getQuiz();
            List<Question> questionsQuizTwo = quizService.getQuestionsByQuizId(quiz2.getId());

            assertThat(questionsQuizTwo)
                .extracting(Question::getId)
                .contains(100L, 111L, 122L);

        }

        private Assignment buildFirstAssignment(User teacher) {
            User julia = userService.getUserById(3L);

            User rosa = buildRosa();
            Quiz quiz = buildQuiz(teacher);

            Quiz savedQuiz = quizRepo.save(quiz);

            Assignment assignment = new Assignment();
            assignment.setName(quiz.getName());
            assignment.setQuiz(savedQuiz);
            List<User> studentInList = Arrays.asList(julia, rosa);
            assignment.setStudents(studentInList);

            return assignmentService.saveAssignment(assignment);
        }

        private Assignment buildSecondAssignment(User teacher) {
            User rosa = buildRosa();
            List<User> rosaList = Collections.singletonList(rosa);

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
            assignment2.setStudents(rosaList);

            return assignmentService.saveAssignment(assignment2);
        }

        private User buildRosa() {
            User rosa = null;
            Long rosaId = 3L;
            UserDTO rosaDto = new UserDTO(
                "Rosa",
                "12345",
                "rosa@mail.com",
                rosaId);
            if (userService.existsById(rosaId)) {
                rosa = userService.getUserById(rosaId);
            } else {
                rosa = userService.saveUser(rosaDto);
            }
            return rosa;
        }

        private Quiz buildQuiz(User teacher) {
            Quiz quiz = new Quiz();
            quiz.setName("English quiz");
            quiz.setDescription("Vocabulary");
            quiz.setTeacher(teacher);

            List<Long> ids = Arrays.asList(227L, 300L, 331L, 357L, 382L);
            List<Question> questions = questionService.getQuestionsByIds(ids);
            quiz.setQuestions(questions);

            return quiz;
        }

}
