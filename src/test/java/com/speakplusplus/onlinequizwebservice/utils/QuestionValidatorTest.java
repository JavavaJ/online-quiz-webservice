package com.speakplusplus.onlinequizwebservice.utils;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class QuestionValidatorTest {

    @Test
    void testValidate() {
        QuestionValidator validator = new QuestionValidator();

        String correctQuestionText = "  1. House is on fire. \n" +
            "A) Yes B) No C) Maybe D) Perhaps\n" +
            "\n" +
            "2. March is when? \n" +
            "A) Summer B) Winter C) Autumn D) Spring\n" +
            "\n" +
            "3. Spring is written in ... . \n" +
            "A) Python B) Java C) PHP D) C";

        String wrongQuestionText = "  1. House is on fire. \n" +
            "A) Yes B) No C) Maybe D) Perhaps\n" +
            "\n" +
            "2. March is when? \n" +
            "A) Summer C) Winter C) Autumn D) Spring\n" +
            "\n" +
            "3. Spring is written in ... . \n" +
            "A) Python B) Java C) PHP D) C";

        validator.validate(wrongQuestionText);
    }

    @Test
    public void testInitQuestionsIndices() {
        QuestionValidator validator = new QuestionValidator();
        String correctQuestionText = "  1. House is on fire. \n" +
            "A) Yes B) No C) Maybe D) Perhaps\n" +
            "\n" +
            "2. March is when? \n" +
            "A) Summer B) Winter C) Autumn D) Spring\n" +
            "\n" +
            "3. Spring is written in ... . \n" +
            "A) Python B) Java C) PHP D) C";
        validator.initQuestionsIndices(correctQuestionText);
    }

}