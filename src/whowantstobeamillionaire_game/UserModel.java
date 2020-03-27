/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package whowantstobeamillionaire_game;

import connection.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


/**
 *
 * @author nhanDT
 */
public class UserModel {

    //attributes
    private static Connection con;
    private static Statement st;
    private static GetConnection getCon;
    private static PreparedStatement pst;
    private static ResultSet rs;
    private static ArrayList<User> users;

    /**
     * Create new Client Model
     */
    public UserModel() {
        getCon = new GetConnection();
        users = new ArrayList<User>();
    }
    /**
     * create list user
     * @return users
     */
    public ArrayList<User> getListPlayer(){
        return users;
    }

    /**
     * Insert new Client to DB
     *
     * @param c_name client name
     * @param c_email client email
     * @param c_gender client gender (0: female, 1: male)
     * @param acc_id account ID
     * @return
     * @throws SQLException
     */
    public int insertName(String name_user,int Point_user) throws SQLException {

        //connect to DB
        con = getCon.getConnection();
        //create sql string            
        String sqlStr = "INSERT INTO `user`( `name_user`,`point_user`) VALUES (?,?)";

        //create query
        pst = con.prepareStatement(sqlStr, Statement.RETURN_GENERATED_KEYS);
        //set values
        pst.setString(1, name_user);
        pst.setInt(2, Point_user);
        //execute query
        pst.executeUpdate();
        //get account ID
        rs = pst.getGeneratedKeys();
        rs.next();
        int c_id = rs.getInt(1);
        pst.close();
        return c_id;
    }

    
/**
 * load user from database
 * @throws SQLException 
 */
    public void LoadUser() throws SQLException {
        //connect database
        con = getCon.getConnection();
        st = con.createStatement();
        //create sql string
        String sql = "SELECT * FROM `user` ORDER BY `point_user` DESC LIMIT 20";
        rs = st.executeQuery(sql);
        while (rs.next()) {
            int ID_user = rs.getInt("ID_user");
            String name_user = rs.getString("name_user");
            int point_user = rs.getInt("point_user");
            this.users.add(new User(ID_user, name_user, point_user));      
        }
    }


}
