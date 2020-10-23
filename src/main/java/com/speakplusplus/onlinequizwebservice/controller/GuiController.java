package com.speakplusplus.onlinequizwebservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GuiController {

    @RequestMapping("/gui")
    public String page() {
        return "html/quizGui";
    }

    @RequestMapping("/gui/{topicTag}")
    public String chosenTopicPage(Model model, @PathVariable String topicTag) {
        model.addAttribute("chosenTopic", topicTag);
        return "html/quizGui";
    }

    @RequestMapping("chooseTopic")
    public String chooseTopicPage() {
        return "html/chooseTopic";
    }

    @GetMapping("login")
    public String getLoginView() {
        return "html/login";
    }

}
