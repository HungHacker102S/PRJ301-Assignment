package context;

import Model.Cart;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author ASUS
 */
public class CartDAO {

    Connection cnn; //ket noi den DB
    Statement stm; //thuc thi cac cau lenh sql  
    ResultSet rs; //luu tru va xu li du lieu

    public CartDAO() {
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

    public void addCart(int userId, int productId, int quantity) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            if (stm.executeQuery("SELECT * FROM cart WHERE userid = " + userId + " AND productid = " + productId).next()) {
                stm.executeUpdate("UPDATE cart SET quantity = quantity + " + quantity + " WHERE userid = " + userId + " AND productid = " + productId);
                return;
            }

            stm.executeUpdate("INSERT INTO cart VALUES (" + userId + "," + productId + "," + quantity + ")");

        } catch (Exception e) {
            System.err.println(e.getMessage());
        }

    }

    public ArrayList<Cart> getCartsByUserId(int userId) {
        ArrayList<Cart> list = new ArrayList<>();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "SELECT * FROM cart WHERE userid =" + userId;
            rs = stm.executeQuery(strSelect);

            while (rs.next()) {
                int productId = rs.getInt(2);
                int quatity = rs.getInt(3);
                list.add(new Cart(userId, productId, quatity));
            }

            return list;
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return null;
    }

    public void removeAllCartsByUserId(int userId) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            stm.execute("DELETE FROM cart WHERE userid = " + userId);
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }
    
    public int getProductID(int userid){
        int product_id=0;
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs=stm.executeQuery("SELECT*FROM cart WHERE userid = " + userid);
            while(rs.next()){
                product_id=rs.getInt(2);
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return product_id;
    }
    
    public String getP_by_PID(int productID){
        String product="";
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs=stm.executeQuery("SELECT*FROM Product WHERE productid = " + productID);
            while(rs.next()){
                product=rs.getString(2);
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return product;
    }
    
    
    public void deletefromCart(int productID, int userID, int quantity){
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            if(checkQuantityLeft(quantity)==true){
                stm.execute("UPDATE cart set quantity=quantity-1 WHERE userid ='"+userID+"' and productid='"+productID+"'"); 
            }else{
                stm.execute("DELETE from cart where userid='"+userID+"' and productid='"+productID+"'");
            }    
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }
    
    public int getQuantity(int productID, int userID){
        int quantity=0;
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs=stm.executeQuery("SELECT*FROM cart WHERE userid ='"+userID+"' and productid='"+productID+"'");
            if(rs.next()){
                quantity=rs.getInt(3);
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return quantity;
    }
    
    public boolean checkQuantityLeft(int quantity){
        if(quantity==1){
            return false;
        }else return true;
    }
}
