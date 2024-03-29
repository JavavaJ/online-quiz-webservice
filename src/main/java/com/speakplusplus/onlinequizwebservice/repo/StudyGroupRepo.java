package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.core.StudyGroup;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface StudyGroupRepo extends JpaRepository<StudyGroup, Long> {

    List<StudyGroup> findAllByTeacher(User teacher);
}
