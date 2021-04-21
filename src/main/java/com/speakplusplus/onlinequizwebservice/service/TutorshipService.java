package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.model.core.StudyGroup;
import com.speakplusplus.onlinequizwebservice.model.core.Tutorship;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import com.speakplusplus.onlinequizwebservice.repo.TutorshipRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class TutorshipService {

    private final TutorshipRepo tutorshipRepo;
    private final UserService userService;
    private final StudyGroupService groupService;

    @Transactional
    public void saveTutorship(User teacher, List<String> studentClientEmails) {
        Tutorship tutorship = tutorshipRepo.findFirstByTeacher(teacher);

        // if the first time, save tutorship first
        if (tutorship == null) {
            saveFirstTutorship(teacher, studentClientEmails);
            return;
        }

        List<String> existingStudents = tutorship.getStudents()
            .stream()
            .map(User::getEmail)
            .collect(Collectors.toList());
        studentClientEmails.removeAll(existingStudents);

        if (studentClientEmails.size() > 0) {
            List<String> emails = new ArrayList<>(existingStudents);
            emails.addAll(studentClientEmails);

            Collection<User> refreshedUsers = userService.getUsersByEmails(emails);
            tutorship.setStudents(refreshedUsers);
            tutorshipRepo.save(tutorship);
        }
    }

    private Tutorship saveFirstTutorship(User teacher, List<String> studentEmails) {

        Tutorship tutorship = new Tutorship();
        tutorship.setTeacher(teacher);
        Collection<User> students = userService.getUsersByEmails(studentEmails);
        tutorship.setStudents(students);

        return tutorshipRepo.save(tutorship);
    }

    @Transactional
    public void saveTutorship(User teacher, Long groupId) {
        Tutorship tutorship = tutorshipRepo.findFirstByTeacher(teacher);
        StudyGroup group = groupService.getGroupById(groupId);

        // if the first time, save tutorship first
        if (tutorship == null) {
            Tutorship newTutorship = new Tutorship();
            newTutorship.setTeacher(teacher);

            Collection<User> students = group.getStudents();
            newTutorship.setStudents(new ArrayList<>(students));
            tutorshipRepo.save(newTutorship);
            return;
        }
        List<String> existingStudents = tutorship.getStudents()
            .stream()
            .map(User::getEmail)
            .collect(Collectors.toList());

        List<String> groupEmails = group.getStudents()
            .stream()
            .map(User::getEmail)
            .collect(Collectors.toList());

        // to get new unique emails which are not in the tutorship yet
        groupEmails.removeAll(existingStudents);

        if (groupEmails.size() > 0) {
            List<String> emails = new ArrayList<>(existingStudents);
            emails.addAll(groupEmails);

            Collection<User> refreshedUsers = userService.getUsersByEmails(emails);
            tutorship.setStudents(refreshedUsers);
            tutorshipRepo.save(tutorship);
        }
    }

}
