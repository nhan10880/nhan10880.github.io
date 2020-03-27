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
public class QuestionException extends Exception{
    /**
 * Create Question Model
 * @param msg 
 */
    public QuestionException(String msg) {
        super("QuestionException"+msg);
    }
}
