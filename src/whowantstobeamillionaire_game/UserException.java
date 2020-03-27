/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package whowantstobeamillionaire_game;

/**
 *
 * @author NhanDT
 */
public class UserException extends Exception{
/**
 * Create new Client Exception
 * @param msg 
 */
    public UserException(String msg) {
        super("UserException"+msg);
    }
    
    
}
