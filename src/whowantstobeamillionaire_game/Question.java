/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package whowantstobeamillionaire_game;

/**
 *
 * @author nhanDT
 */
public class Question {
    //delarevariable
    private int ID_Question;
    private int LV_Question;
    private String Q_Question;
    private String A_Question;
    private String B_Question;
    private String C_Question;
    private String D_Question;
    private String Answer_question;
    private int Random_question;

    public Question(int ID_Question, int LV_Question, String Q_Question, String A_Question, String B_Question, String C_Question, String D_Question, String Answer_question, int Random_question) {
        this.ID_Question = ID_Question;
        this.LV_Question = LV_Question;
        this.Q_Question = Q_Question;
        this.A_Question = A_Question;
        this.B_Question = B_Question;
        this.C_Question = C_Question;
        this.D_Question = D_Question;
        this.Answer_question = Answer_question;
        this.Random_question = Random_question;
    }

    
/**
 * getID
 * @return ID_Question
 */
    public int getID_Question() {
        return ID_Question;
    }
/**
 * check Id question
 * @param ID_Question
 * @throws QuestionException 
 */
    public void setID_Question(int ID_Question) throws QuestionException {
        if (ID_Question<=0) {
            throw new QuestionException("ID Question must greater than 0");
        }
        this.ID_Question = ID_Question;
    }
/**
 * getLV
 * @return LV_Question
 */
    public int getLV_Question() {
        return LV_Question;
    }
/**
 * check LV_Question
 * @param LV_Question
 * @throws QuestionException 
 */
    public void setLV_Question(int LV_Question) throws QuestionException {
        if (LV_Question<=0&&LV_Question>=16) {
            throw new QuestionException("LV Question greater than 0 is less than 16");
        }
        this.LV_Question = LV_Question;
    }
/**
 * get Question
 * @return Q_Question
 */
    public String getQ_Question() {
        return Q_Question;
    }
/**
 * check Q Question
 * @param Q_Question
 * @throws QuestionException 
 */
    public void setQ_Question(String Q_Question) throws QuestionException {
        if (Q_Question.isEmpty()) {
            throw new QuestionException("Question is note null");
        }
        this.Q_Question = Q_Question;
    }
/**
 * get A Question
 * @return 
 */
    public String getA_Question() {
        
        return A_Question;
    }
/**
 * check A Question
 * @param A_Question
 * @throws QuestionException 
 */
    public void setA_Question(String A_Question) throws QuestionException {
        if (A_Question.isEmpty()) {
            throw new QuestionException("Answer A Question is note null");
        }
        this.A_Question = A_Question;
    }
/**
 * getB Question
 * @return 
 */
    public String getB_Question() {
        return B_Question;
    }
/**
 * check B question
 * @param B_Question
 * @throws QuestionException 
 */
    public void setB_Question(String B_Question) throws QuestionException {
        if (B_Question.isEmpty()) {
            throw new QuestionException("Answer B Question is note null");
        }
        this.B_Question = B_Question;
    }
/**
 * get C Question
 * @return 
 */
    public String getC_Question() {
        return C_Question;
    }
/**
 * check C Question
 * @param C_Question
 * @throws QuestionException 
 */
    public void setC_Question(String C_Question) throws QuestionException {
        if (C_Question.isEmpty()) {
            throw new QuestionException("Answer C Question is note null");
        }
        this.C_Question = C_Question;
    }
/**
 * get D question
 * @return 
 */
    public String getD_Question() {
        return D_Question;
    }
/**
 * check d question
 * @param D_Question
 * @throws QuestionException 
 */
    public void setD_Question(String D_Question) throws QuestionException {
        if (D_Question.isEmpty()) {
            throw new QuestionException("Answer D Question is note null");
        }
        this.D_Question = D_Question;
    }
/**
 * get answer
 * @return 
 */
    public String getAnswer_question() {
        return Answer_question;
    }
/**
 * check answer
 * @param Answer_question
 * @throws QuestionException 
 */
    public void setAnswer_question(String Answer_question) throws QuestionException {
        if (Answer_question.isEmpty()) {
            throw new QuestionException("Answer Question is note null");
        }
        this.Answer_question = Answer_question;
    }
/**
 * get Random question
 * @return 
 */
    public int getRandom_question() {
        return Random_question;
    }
/**
 * check Random question
 * @param Random_question
 * @throws QuestionException 
 */
    public void setRandom_question(int Random_question) throws QuestionException {
        if (Random_question<=0&&Random_question>5) {
            throw new QuestionException("Number >0 and <=5");
        }
        this.Random_question = Random_question;
    }
    
}
