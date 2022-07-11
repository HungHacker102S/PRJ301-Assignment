/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

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
            String strSelect = "select * from Account where email='" + email + "' and password='" + pass + "'";
            rs = stm.executeQuery(strSelect);
            if (rs.next()) {
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
            String strSelect = "select * from Account where email='" + email + "' and password='" + pass + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return new User(
                        rs.getInt("UserID"),
                        rs.getNString("Fullname"),
                        rs.getNString("Password"),
                        rs.getString("Phone"),
                        rs.getNString("Email"),
                        rs.getBoolean("Role")
                );
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
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }
   
    public boolean checkEmailAndPhone(String email, String phone) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from Account where email='" + email + "' and phone='" + phone + "'";
            rs = stm.executeQuery(strSelect);
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public void signUp(String email, String pass, String fullname, String phonenum) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strUpdate = "insert into Account (fullname, password, phone, email, role) values ('" + fullname + "','" + pass + "','" + phonenum + "','" + email + "', 0);";
            stm.executeUpdate(strUpdate);
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
                list.add(new User(
                        rs.getInt("UserID"),
                        rs.getNString("Fullname"),
                        rs.getNString("Password"),
                        rs.getString("Phone"),
                        rs.getNString("Email"),
                        rs.getBoolean("Role")
                ));
            }
        } catch (Exception e) {
            System.out.println("error:" + e.getMessage());
        }
        return list;
    }

    public void UpdatePass(String account, String newpass) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strUpdate = "update Account set password='" + newpass + "' where email='" + account + "'";
            stm.execute(strUpdate);
        } catch (Exception e) {
            System.out.println("error:" + e.getMessage());
        }
    }

    public String generatePassword(int length) {
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
        return new String(password);
    }
}
