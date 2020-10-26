package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.dto.CreateQuestionsDTO;
import com.speakplusplus.onlinequizwebservice.model.Question;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

@Service
public class QuestionParser {

    public List<Question> createQuestions(CreateQuestionsDTO createQuestionsDTO) {
        return createQuestions(createQuestionsDTO.getQuestionsText(),
                                 createQuestionsDTO.getAnswersText());
    }

    public List<Question> createQuestions(String plainQuestionsText,
                                          String plainAnswersText) {
        List<Question> questionsNoAnswers = parseMany(plainQuestionsText);
        List<Question> questionsWithAns = addRightAnswers(questionsNoAnswers, plainAnswersText);
        return questionsWithAns;
    }

    public Question parseOne(String text, DelimiterCase delimiterCase) {
        int dotIndex = text.indexOf(".");
        int AFTER_OPTION_OFFSET = ") ".length();

        Long id = Long.parseLong(text.substring(0, dotIndex));

        String optionA = null;
        String optionB = null;
        String optionC = null;
        String optionD = null;
        String questionPart = null;

        if (delimiterCase == DelimiterCase.UPPERCASE) {
            int optionAIndex = text.indexOf("A)");

            questionPart = text.substring(dotIndex + 1, optionAIndex);

            int optionBIndex = text.indexOf("B)");
            int optionCIndex = text.indexOf("C)");
            int optionDIndex = text.indexOf("D)");

            optionA = text.substring(optionAIndex + AFTER_OPTION_OFFSET, optionBIndex);
            optionB = text.substring(optionBIndex + AFTER_OPTION_OFFSET, optionCIndex);
            optionC = text.substring(optionCIndex + AFTER_OPTION_OFFSET, optionDIndex);
            optionD = text.substring(optionDIndex + AFTER_OPTION_OFFSET);
        }

        if (delimiterCase == DelimiterCase.LOWERCASE) {
            int optionAIndex = text.indexOf("a)");

            questionPart = text.substring(dotIndex + 1, optionAIndex);

            int optionBIndex = text.indexOf("b)");
            int optionCIndex = text.indexOf("c)");
            int optionDIndex = text.indexOf("d)");

            optionA = text.substring(optionAIndex + AFTER_OPTION_OFFSET, optionBIndex);
            optionB = text.substring(optionBIndex + AFTER_OPTION_OFFSET, optionCIndex);
            optionC = text.substring(optionCIndex + AFTER_OPTION_OFFSET, optionDIndex);
            optionD = text.substring(optionDIndex + AFTER_OPTION_OFFSET);
        }

        Question question = new Question();

        question.setQuestion(questionPart);
        question.setA(optionA);
        question.setB(optionB);
        question.setC(optionC);
        question.setD(optionD);

        // todo delete id later
        question.setId(id);

        return question;

    }

    private DelimiterCase parseDelimiterCase(String questionsText) {

        DelimiterCase delimiterCase = DelimiterCase.UPPERCASE;

        String upperRegex = "[A-D]\\)";
        String lowerRegex = "[a-d]\\)";

        Pattern upperPattern = Pattern.compile(upperRegex);
        Pattern lowerPattern = Pattern.compile(lowerRegex);

        Matcher upperMatcher = upperPattern.matcher(questionsText);
        Matcher lowerMatcher = lowerPattern.matcher(questionsText);

        Set<Boolean> upperMatchesSet = new HashSet<>();
        Set<Boolean>lowerMatchesSet = new HashSet<>();

        while (upperMatcher.find()) {
            upperMatchesSet.add(true);
        }

        while (lowerMatcher.find()) {
            lowerMatchesSet.add(true);
        }

        if (upperMatchesSet.contains(true) && !lowerMatchesSet.contains(true)) {
            System.out.println("Delimiter is Upper Case!"); // TODO delete later
            delimiterCase = DelimiterCase.UPPERCASE;
        }

        if (lowerMatchesSet.contains(true) && !upperMatchesSet.contains(true)) {
            System.out.println("Delimiter is Lower Case!"); // TODO delete later
            delimiterCase = DelimiterCase.LOWERCASE;
        }

        return delimiterCase;
    }

    /** The method takes a string which is a text with numbered questions.
     * The method returns a map of indices (position in a text) of questions'
     * ordinal numbers. Those indices are used later to parse the questions.
     *
     * @param str text with numbered multiple choice (a, b, c, d) questions
     * @return a map of questions' indices where keys are strings (!) of
     * questions' ordinal numbers and values are there positions in the text.
     */
    private Map<String, Integer> questionNumIndex(String str) {
        Map<String, Integer> mapIndex = new HashMap<>();

        int qNum = 1;
        int index = 0;
        while (index != -1) {
            String qNumStr = String.valueOf(qNum);
            String token = qNumStr + ".";
            index = str.indexOf(token, index);

            String strLowCase = str.toLowerCase();
            String aWithBrace = "a)";
            String bWithBrace = "b)";
            String cWithBrace = "c)";
            String dWithBrace = "d)";

            // parse text to see if there are A)B)C)D) fragments, if not - it's probably some integer with dot
            // mistaken for qNum
            int aBraceIndex = strLowCase.indexOf(aWithBrace, index);
            int bBraceIndex = strLowCase.indexOf(bWithBrace, aBraceIndex);
            int cBraceIndex = strLowCase.indexOf(cWithBrace, bBraceIndex);
            int dBraceIndex = strLowCase.indexOf(dWithBrace, cBraceIndex);

            qNum++;
            // break if we reach the end of questions' text
            if (index == -1) {
                break;
            } else {
                mapIndex.put(qNumStr, index);
                index = dBraceIndex;
            }
        }

        return mapIndex;
    }

    /** The method takes a text with numbered multiple choice (4 options) questions,
     * forms Question objects and returns a list of Question objects.
     *
     * @param questionsText  a text with numbered multiple choice (4 options) questions
     *
     * @return List<Question> a list of Question objects.
     */
    public List<Question> parseMany(String questionsText) {
        DelimiterCase delimiterCase = parseDelimiterCase(questionsText);

        Map<String, Integer> mapOfIndices = questionNumIndex(questionsText);
        List<String> questionFragments = new ArrayList<>(mapOfIndices.size());

        for (int i = 0; i < mapOfIndices.size(); i++) {

            // adding 1 is conversion to a non-zero based integer
            String indexStr = String.valueOf(i+1);
            String nextIndexStr = String.valueOf(i+2);

            String currQuestionFragment = null;
            if (mapOfIndices.get(nextIndexStr) != null) {
                currQuestionFragment = questionsText.substring(mapOfIndices.get(indexStr),
                    mapOfIndices.get(nextIndexStr));
            } else {
                // the last question in the text
                currQuestionFragment = questionsText.substring(mapOfIndices.get(indexStr));
            }

            questionFragments.add(currQuestionFragment);
        } // end of loop

        List<Question> questionList = questionFragments.stream()
            .map(el -> parseOne(el, delimiterCase))
            .collect(Collectors.toList());

        return questionList;
    }

    public List<Question> addRightAnswers(List<Question> questions, String plainRightAns) {
        // create a map of right answers with key Integer Q num and value
        // String its right answer
        Map<Integer, String> rightMap = new HashMap<>();

        int qNum = 1;
        int index = 0;
        // index -q means that parser reached the end of string
        while (index != -1) {
            String qNumStr = String.valueOf(qNum);
            index = plainRightAns.indexOf(qNumStr, index);


            if (qNum < 10) {
                rightMap.put(qNum, plainRightAns.substring(index+2, index+3).toLowerCase());
            } else {
                if (index == -1) {
                    break;
                } else {
                    // for ids from 10 to 99
                    rightMap.put(qNum, plainRightAns.substring(index+3, index+4).toLowerCase());
                    index++;
                }
            }
            qNum++;
        }

        // update right answers in Question list
        for (Question question : questions) {
            question.setRightAn(rightMap.get(question.getId().intValue()));
            question.setId(null);
        }
        return questions;
    }

}
