package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.dto.StudyGroupDTO;
import com.speakplusplus.onlinequizwebservice.model.core.StudyGroup;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import com.speakplusplus.onlinequizwebservice.repo.StudyGroupRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class StudyGroupService {

    private final StudyGroupRepo studyGroupRepo;
    private final UserService userService;

    @Transactional
    public StudyGroup saveGroup(StudyGroup group) {
        return studyGroupRepo.save(group);
    }

    @Transactional
    public StudyGroup saveGroup(User teacher, StudyGroupDTO dto) {
        StudyGroup group = new StudyGroup();
        group.setName(dto.getName());
        group.setTeacher(teacher);

        List<String> trimmedEmails = dto.getStudentEmails()
            .stream()
            .map(String::trim)
            .collect(Collectors.toList());

        userService.existAll(trimmedEmails);

        Collection<User> students = userService.getUsersByEmails(trimmedEmails);
        System.out.println("Service Students: " + students.toString());
        group.setStudents(students);
        return studyGroupRepo.save(group);
    }
}
