package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.model.Assignment;
import com.speakplusplus.onlinequizwebservice.model.Question;
import com.speakplusplus.onlinequizwebservice.repo.AssignmentRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class AssignmentService {

    private final AssignmentRepo assignmentRepo;

    @Transactional
    public Assignment saveAssignment(Assignment assignment) {
        return assignmentRepo.save(assignment);
    }

    @Transactional
    public Assignment getAssignment(Long id) {
        Optional<Assignment> assignmentOptional = assignmentRepo.findById(id);
        return assignmentOptional.orElseThrow(() ->
            new RuntimeException("Assignment with id: " + id + " is not found."));
    }

    @Transactional
    public List<Question> getQuestionListById(Long id) {
        return assignmentRepo.findQuestionsById(id);
    }
}
