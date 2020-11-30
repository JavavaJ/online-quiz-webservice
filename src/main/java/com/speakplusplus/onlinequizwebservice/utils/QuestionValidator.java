package com.speakplusplus.onlinequizwebservice.utils;

import java.util.HashMap;
import java.util.Map;

public class QuestionValidator {

    public boolean validate(String questionText) {

        int len = questionText.length();
        System.out.println("Len: " + len);

        initQuestionsIndices(questionText);

        String prefixA = "A)";
        String prefixB = "B)";
        String prefixC = "C)";
        String prefixD = "D)";

        for (int i = 1; i <= 4; i++) { // todo change 3 to len
            String questionNum = ((Integer) i).toString() + ". ";
            int indexOfNum = questionText.indexOf(questionNum);
            if (indexOfNum < 0) {
                System.out.println("NO MORE QUESTIONS... ");
                break;
            }

            System.out.println("============= OPTIONS ===============");

            int indexA = -1;
            int indexB = -1;
            int indexC = -1;
            int indexD = -1;

            indexA = questionText.indexOf(prefixA, indexOfNum);
            if (indexA > 0) {
                indexB = questionText.indexOf(prefixB, indexOfNum);

            }
            if (indexB > 0) {
                indexC = questionText.indexOf(prefixC, indexOfNum);
            }
            if (indexC > 0) {
                indexD = questionText.indexOf(prefixD, indexOfNum);
            }

            System.out.println("A) " + indexA);
            System.out.println("B) " + indexB);
            System.out.println("C) " + indexC);
            System.out.println("D) " + indexD);

        }

        return false; // todo change later
    }

    public void initQuestionsIndices(String questionText) {
        Map<Integer, Slice> questionIndices = new HashMap<>();

        int currNum = 1;
        int indexOfNum = 0;
        while(true) {
            String questionNum = ((Integer) currNum).toString() + ". ";
            indexOfNum = questionText.indexOf(questionNum);

            if (indexOfNum < 0) {
                System.out.println("NO MORE QUESTIONS... ");
                break;
            }

            questionIndices.put(currNum, new Slice(indexOfNum));

            if (currNum > 1) {
                questionIndices.get(currNum - 1).setTo(indexOfNum);
            }

            currNum++;
        }

        questionIndices.get(currNum - 1).setTo(questionText.length());

        System.out.println(questionIndices);
    }


}
