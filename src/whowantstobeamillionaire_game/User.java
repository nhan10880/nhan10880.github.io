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
public class User {
    //delare variable
    private int id_user;
    private String name_user;
    private int point_user;

    public User(int id_user, String name_user, int point_user) {
        this.id_user = id_user;
        this.name_user = name_user;
        this.point_user = point_user;
    }
/**
 * getID user
 * @return 
 */
    public int getId_user() {
        return id_user;
    }
/**
 * check id user
 * @param id_user
 * @throws UserException 
 */
    public void setId_user(int id_user) throws UserException {
        if (id_user<=0) {
            throw new UserException("ID user must greater than 0");
        }
        this.id_user = id_user;
    }
/**
 * get name
 * @return 
 */
    public String getName_user() {
        return name_user;
    }
/**
 * check User name
 * @param name_user
 * @throws UserException 
 */
    public void setName_user(String name_user) throws UserException {
        if (name_user.isEmpty()) {
            throw new UserException("Name user can't be empty");
        }
        this.name_user = name_user;
    }
/**
 * get point
 * @return 
 */
    public int getPoint_user() {
        return point_user;
    }
/**
 * check point
 * @param point_user
 * @throws UserException 
 */
    public void setPoint_user(int point_user) throws UserException {
        if (point_user<0) {
            throw new UserException("Point user must greater than 0");
        }
        this.point_user = point_user;
    }
    
}
