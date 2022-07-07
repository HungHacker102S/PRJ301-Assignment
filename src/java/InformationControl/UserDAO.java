/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package InformationControl;

import Context.DBContext;
import Model.User;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author MSI Modern 14
 */
public class UserDAO {

    public UserDAO() {
        connectDB();
    }

    Connection cnn; //Kết nối đến dtbs
    Statement stm;  //Thực thi các câu lệnh sql
    ResultSet rs;  //Lưu trữ và xử lý dữ liệu

    private void connectDB() {
        try {
            cnn = (new DBContext()).getConnection();
            System.out.println("Connect successfully");
        } catch (Exception e) {
            System.out.println("Connection fail");
        }
    }

    public boolean checkLogin(String email, String pass) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from Account where email='" + email + "' and pass='" + pass + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                System.out.println("Login successful");
                return true;
            }
        } catch (Exception e) {
            System.out.println("Login error:" + e.getMessage());
        }
        return false;
    }
    
    public User userLogin(String email, String pass) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from Account where email='" + email + "' and pass='" + pass + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                User u =new User(email, pass);
                System.out.println("Login successful");
                return u;
            }
        } catch (Exception e) {
            System.out.println("Login error:" + e.getMessage());
        }
        return null;
    }

    

}
