package com.speakplusplus.onlinequizwebservice.repo;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.speakplusplus.onlinequizwebservice.dto.AssignmentDTO;
import com.speakplusplus.onlinequizwebservice.model.Assignment;
import com.speakplusplus.onlinequizwebservice.model.Question;
import com.speakplusplus.onlinequizwebservice.model.User;
import com.speakplusplus.onlinequizwebservice.service.AssignmentService;
import com.speakplusplus.onlinequizwebservice.service.QuestionService;
import com.speakplusplus.onlinequizwebservice.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;

import java.util.Arrays;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.assertj.core.api.Assertions.*;


@SpringBootTest
@Sql({"classpath:t_questions.sql",
    "classpath:t_topics.sql",
    "classpath:t_roles_and_permissions.sql"})
class AssignmentServiceTest {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private UserService userService;

    @Autowired
    private AssignmentService assignmentService;

    @Test
    public void testAssignments() {
        User teacher = userService.getUserById(2L);
        User student = userService.getUserById(3L);

        List<Long> ids = Arrays.asList(227L, 300L, 331L, 357L, 382L);
        List<Question> questions = questionService.getQuestionsByIds(ids);

        Assignment assignment = new Assignment();
        assignment.setTeacher(teacher);
        assignment.setStudents(Arrays.asList(student));
        assignment.setQuestions(questions);

        Assignment savedAssignment = assignmentService.saveAssignment(assignment);
        Long assignmentId = savedAssignment.getId();

        Assignment assignmentFromRepo = assignmentService.getAssignment(assignmentId);

        assertThat(assignmentFromRepo).isNotNull();
        assertThat(assignmentFromRepo.getId()).isEqualTo(1L);

        List<Question> questionsFromAssignment = assignmentService.getQuestionListById(assignmentFromRepo.getId());
        assertThat(questionsFromAssignment.size()).isEqualTo(questions.size());
        assertThat(questionsFromAssignment)
            .extracting(Question::getId)
            .contains(227L, 300L, 331L, 357L, 382L);


    }

    @Test
    public void printAssignmentDTOJson() throws JsonProcessingException {
        Long teacherId = 1L;
        List<Long> studentIds = Arrays.asList(2L, 3L);
        List<Long> questionIds = Arrays.asList(227L, 300L, 331L, 357L, 382L);

        AssignmentDTO assignmentDTO = new AssignmentDTO(teacherId, studentIds, questionIds);

        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(assignmentDTO);
        System.out.println(json);

//        {"teacherId":1,"studentIds":[2,3],"questionsIds":[227,300,331,357,382]}

    }

}