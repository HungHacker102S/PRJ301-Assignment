package Controller;

import Model.Cart;
import Model.User;
import context.CartDAO;
import context.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class CartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses = request.getSession();
        User u = (User) ses.getAttribute("user"); 
        CartDAO cd = new CartDAO();
        ProductDAO pd = new ProductDAO();

        List<Cart> carts = cd.getCartsByUserId(u.getUserID());
        String remove = request.getParameter("remove"); 
        int userid=u.getUserID();
            int productID=cd.getProductID(userid);
            int quantity_product=cd.getQuantity(productID, userid);      
            request.setAttribute("userid", userid);
            request.setAttribute("productid", productID);
            
            
        if(remove!=null && remove.equals("1")){
            cd.deletefromCart(productID, userid, quantity_product); 
            response.sendRedirect("cart");
        }else{
        double bill = 0;

        for (Cart cart : carts) {
            bill += cart.getQuantity() * pd.getProductByProductId("" + cart.getProductId()).getPrice();
        }
        request.setAttribute("productList", pd.getAll());
        request.setAttribute("carts", carts);
        request.setAttribute("bill", bill);
        request.getRequestDispatcher("cart.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ProductDAO d = new ProductDAO();
        HttpSession ses = request.getSession();
        CartDAO cd = new CartDAO();
        User u = (User) ses.getAttribute("user");
        
            
        
        try {       
            int productId = Integer.parseInt(request.getParameter("productid"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));

            if (quantity <= 0) {
                response.sendRedirect("payment?pid=" + productId);
                return;
            }

            cd.addCart(u.getUserID(), productId, quantity);
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("cart");

    }

}
