package com.speakplusplus.onlinequizwebservice.controller;

import com.speakplusplus.onlinequizwebservice.dto.StudyGroupDTO;
import com.speakplusplus.onlinequizwebservice.model.core.StudyGroup;
import com.speakplusplus.onlinequizwebservice.model.core.User;
import com.speakplusplus.onlinequizwebservice.security.AuthenticationFacade;
import com.speakplusplus.onlinequizwebservice.service.StudyGroupService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/teacher/group")
@RequiredArgsConstructor
public class StudyGroupController {

    private final StudyGroupService studyGroupService;
    private final AuthenticationFacade authenticationFacade;


    @PostMapping("save")
    public StudyGroup saveGroup(@RequestBody StudyGroupDTO dto) {
        User teacher = authenticationFacade.getCurrentUser();
        return studyGroupService.saveGroup(teacher, dto);
    }

    @GetMapping("all")
    public List<StudyGroup> getAll() {
        User teacher = authenticationFacade.getCurrentUser();
        return studyGroupService.getAll(teacher);
    }
}
