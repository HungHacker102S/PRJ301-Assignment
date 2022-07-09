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
import java.util.ArrayList;

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
                String firstname = rs.getString(4);
                String lastname = rs.getString(5);
                String phonenum = rs.getString(6);
                int permit = rs.getInt(7);
                System.out.println("Login successful");
                User u = new User(email, pass, firstname, lastname, phonenum, permit);
                return u;
            }
        } catch (Exception e) {
            System.out.println("Login error:" + e.getMessage());
        }
        return null;
    }

    public boolean checkEmail(String email) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from Account where email='" + email + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                System.out.println("Exist");
                return true;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }
    
    public void signUp(String email, String pass, String firstname, String lastname, String phonenum) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strUpdate = "insert into Account (email, pass, firstname, lastname, phonenum, isAdmin) values ('" + email + "','" + pass + "','" + firstname + "','" + lastname + "','" + phonenum + "','" + 0 + "');";
            stm.executeUpdate(strUpdate);
            System.out.println("Update success!");
        } catch (Exception e) {
            System.out.println("error:" + e.getMessage());
        }
    }

    public ArrayList<User> getAllUser() {
        ArrayList<User> list = new ArrayList<User>();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from Account";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String email=rs.getString(2);
                String pass=rs.getString(3);
                String firstname=rs.getString(4);
                String lastname=rs.getString(5);
                String phonenum=rs.getString(6);
                int permit = rs.getInt(7);
                list.add(new User(email, pass, firstname, lastname, phonenum, permit));
            }
        } catch (Exception e) {
            System.out.println("error:" + e.getMessage());
        }
        return list;
    }
}
