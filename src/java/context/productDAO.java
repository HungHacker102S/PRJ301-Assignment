package context;

import Model.Product;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author ASUS
 */
public class productDAO {
    Connection cnn; //ket noi den DB
    Statement stm; //thuc thi cac cau lenh sql  
    ResultSet rs; //luu tru va xu li du lieu
    
    public productDAO() {
        connectDB();
    }
    
     private void connectDB() {
        try {
            cnn = (new DBContext()).getConnection();
            System.out.println("connect successfully");
        } catch (Exception e) {
            System.out.println("Connect error: " + e.getMessage());
        }
    }
     
     
     public ArrayList<Product> getAll() {
        ArrayList<Product> list = new ArrayList();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "Select * from foodstore";
            rs = stm.executeQuery(strSelect); // executeQuery chi dung cho cau lenh insert
            while (rs.next()) {
                int pId = rs.getInt(1);
                String pName = rs.getString(2);
                int pQuantity = rs.getInt(3);
                String pImage = rs.getString(4);
                double image = rs.getDouble(5);
                int cid = rs.getInt(6);
                
                
                list.add(new Product(pId, pName, pQuantity, pImage, image, cid));
            }
        } catch (Exception e) {
            System.out.println("checkAccount error: " + e.getMessage());
        }
            return list;
    }
     
     
     public ArrayList<Product> getProductByCategory(String category) {
        ArrayList<Product> list = new ArrayList<Product>();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "SELECT * FROM Product, Category WHERE Product.cid = Category.cid AND Category.cName = '" + category + "'";

            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                int pId = rs.getInt(1);
                String pName = rs.getString(2);
                int pQuantity = rs.getInt(3);
                String pImage = rs.getString(4);
                double image = rs.getDouble(5);
                int cid = rs.getInt(6);
                              
                list.add(new Product(pId, pName, pQuantity, pImage, image, cid));                                               
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return list;
    }
    
    
    
    
}