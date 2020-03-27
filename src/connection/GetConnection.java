/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author nhanDT
 */
public class GetConnection {
    private static String URL="jdbc:mysql://localhost:3306/millionaire_game";
    private static Connection con;
    public static Connection getConnection() throws SQLException{
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        con=DriverManager.getConnection(URL, "root", "");
        return con;
    }
    public static PreparedStatement preparedStatement(){
        throw new UnsupportedOperationException("Not support yet");
    }
}
