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
import java.util.Random;

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

    public boolean checkPhone(String phonenum) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from Account where phonenum='" + phonenum + "'";
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
                String email = rs.getString(2);
                String pass = rs.getString(3);
                String firstname = rs.getString(4);
                String lastname = rs.getString(5);
                String phonenum = rs.getString(6);
                int permit = rs.getInt(7);
                list.add(new User(email, pass, firstname, lastname, phonenum, permit));
            }
        } catch (Exception e) {
            System.out.println("error:" + e.getMessage());
        }
        return list;
    }

    public void UpdatePass(String account, char[] newpass) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strUpdate = "update Account set pass='" + String.valueOf(newpass) + "' where account='" + account + "'";
            stm.execute(strUpdate);
            System.out.println("Update pass success!");
        } catch (Exception e) {
            System.out.println("error:" + e.getMessage());
        }
    }
    
    public char[] generatePassword(int length) {
        String capitalCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
        String specialCharacters = "!@#$";
        String numbers = "1234567890";
        String combinedChars = capitalCaseLetters + lowerCaseLetters + specialCharacters + numbers;
        Random random = new Random();
        char[] password = new char[length];

        password[0] = lowerCaseLetters.charAt(random.nextInt(lowerCaseLetters.length()));
        password[1] = capitalCaseLetters.charAt(random.nextInt(capitalCaseLetters.length()));
        password[2] = specialCharacters.charAt(random.nextInt(specialCharacters.length()));
        password[3] = numbers.charAt(random.nextInt(numbers.length()));

        for (int i = 4; i < length; i++) {
            password[i] = combinedChars.charAt(random.nextInt(combinedChars.length()));
        }
        return password;
    }
}
