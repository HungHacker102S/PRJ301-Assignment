/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
    PreparedStatement ps;
    
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
                System.out.println("login successful");
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
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getNString(3),
                        rs.getString(4),
                        rs.getNString(5),
                        rs.getBoolean(6),
                        rs.getNString(7)
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

    public void signUp(String email, String pass, String fullname, String phonenum, String address) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strUpdate = "insert into Account (fullname, password, phone, email, role, address) values ('" + fullname + "','" + pass + "','" + phonenum + "','" + email + "', 0, '" + address + "');";
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
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getNString(3),
                        rs.getString(4),
                        rs.getNString(5),
                        rs.getBoolean(6),
                        rs.getNString(7)
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
    
    public void UpdateInformation(int userid, String email, String pass, String fullname, String phone, String address) {
        try {
            String strUpdate =  "update Account \n"
                                + "set [fullname] = ?,\n"
                                + "[password] = ?,\n"
                                + "[phone] = ?,\n"
                                + "[email] = ?,\n"
                                + "[address] = ?\n"
                                + "where [userid] = ?";
            ps = cnn.prepareStatement(strUpdate);
            ps.setString(1, fullname);
            ps.setString(2, pass);
            ps.setString(3, phone);
            ps.setString(4, email);
            ps.setString(5, address);
            ps.setInt(6, userid);
            ps.executeUpdate();
            System.out.println("Update success!");
        } catch (Exception e) {
            System.out.println("error:" + e.getMessage());
        }
    } 
    
    public void UpdateInformationAdmin(int userid, String email, String pass, String fullname, String phone, boolean role, String address) {
        try {
            String strUpdate =  "update Account \n"
                                + "set [fullname] = ?,\n"
                                + "[password] = ?,\n"
                                + "[phone] = ?,\n"
                                + "[email] = ?,\n"
                                + "[role] = ?,\n"
                                + "[address] = ?\n"
                                + "where [userid] = ?";
            ps = cnn.prepareStatement(strUpdate);
            ps.setString(1, fullname);
            ps.setString(2, pass);
            ps.setString(3, phone);
            ps.setString(4, email);
            ps.setBoolean(5, role);
            ps.setString(6, address);
            ps.setInt(7, userid);
            ps.executeUpdate();
            System.out.println("Update success!");
        } catch (Exception e) {
            System.out.println("error:" + e.getMessage());
        }
    }
    
    public void deleteUser(int id) {
        try {
            String strUpdate =  "delete from Account \n"
                                + "where [userid] = ?";
            ps = cnn.prepareStatement(strUpdate);
            ps.setInt(1, id);
            ps.executeUpdate();
            System.out.println("Update success!");
        } catch (Exception e) {
            System.out.println("error:" + e.getMessage());
        }
    }
    
    public User getAccountByID(int id) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from Account where userid='" + id + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return new User(
                        rs.getInt(1),
                        rs.getNString(2),
                        rs.getNString(3),
                        rs.getString(4),
                        rs.getNString(5),
                        rs.getBoolean(6),
                        rs.getNString(7)
                );
            }
        } catch (Exception e) {
            System.out.println("Login error:" + e.getMessage());
        }
        return null;
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
