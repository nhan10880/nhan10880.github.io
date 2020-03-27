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
 * @author Dell
 */
public class QuestionModel {
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
    public QuestionModel() {
        getCon = new GetConnection();
        users=new ArrayList<User>();
    }
    public Question getQuestion(int LV_Questions,int Random_Questions) throws SQLException  {
        //check input
        
            //connect to DB
            con = getCon.getConnection();
            //create sql string
            String sqlStr = "SELECT * FROM `question`WHERE `LV_Question`=? and `Random_Question`=?";
            //create query
            pst = con.prepareStatement(sqlStr, Statement.RETURN_GENERATED_KEYS);
            pst.setInt(1, LV_Questions);
            pst.setInt(2, Random_Questions);
            //get results
            rs = pst.executeQuery();
            while (rs.next() != false) {
                int ID_Question = rs.getInt("ID_Questions");
                int LV_Question = rs.getInt("LV_Question");
                String Q_Question = rs.getString("Q_Question");
                String A_Question = rs.getString("A_Question");
                String B_Question = rs.getString("B_Question");
                String C_Question = rs.getString("C_Question");
                String D_Question = rs.getString("D_Question");
                String Answar_Question = rs.getString("Answer_question");
                int Random_Question=rs.getInt("Random_Question");
                //add to result list
                pst.close();
                Question s=new Question(ID_Question, LV_Question, Q_Question, A_Question, B_Question, C_Question, D_Question, Answar_Question, Random_Question);
                return s;
            }
        return null;
    }
}
