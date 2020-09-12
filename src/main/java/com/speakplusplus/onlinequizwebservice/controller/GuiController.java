package com.speakplusplus.onlinequizwebservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GuiController {

    @RequestMapping("/gui")
    public String page() {
        return "html/quizGui";
    }
}
