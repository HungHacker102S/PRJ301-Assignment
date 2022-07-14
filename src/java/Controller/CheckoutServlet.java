package Controller;

import Model.Cart;
import Model.Product;
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
public class CheckoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession ses = request.getSession();

        User u = (User) ses.getAttribute("user");
        CartDAO cd = new CartDAO();
        ProductDAO pd = new ProductDAO();

        List<Cart> carts = cd.getCartsByUserId(u.getUserID());

        for (Cart cart : carts) {
            Product p = pd.getProductByProductId("" + cart.getProductId());

            if (p.getQuantity() < cart.getQuantity()) {
                continue;
            }

            p.setQuantity(p.getQuantity() - cart.getQuantity());

            pd.updateQuantityByProductId(p.getProductId(), p.getQuantity());
        }

        cd.removeAllCartsByUserId(u.getUserID());

        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }
}
