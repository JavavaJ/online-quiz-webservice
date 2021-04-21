package com.speakplusplus.onlinequizwebservice.repo;

import com.speakplusplus.onlinequizwebservice.model.core.Tutorship;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Collection;

public interface TutorshipRepo extends JpaRepository<Tutorship, Long> {

    Tutorship findFirstByTeacher(User teacher);

}
