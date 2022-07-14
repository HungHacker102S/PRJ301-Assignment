/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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
public class Payment extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO d = new ProductDAO();
        String pid = request.getParameter("pid");
        CartDAO dao = new CartDAO();
        HttpSession session = request.getSession();

        if (session.getAttribute("user") != null) {
            List<Cart> carts = dao.getCartsByUserId(((User) session.getAttribute("user")).getUserID());
            for (Cart cart : carts) {
                if (cart.getProductId() == Integer.parseInt(pid)) {
                    request.setAttribute("cart", cart);
                    break;
                }
            }
        }

        request.setAttribute("product", d.getProductByProductId(pid));
        request.getRequestDispatcher("payment.jsp").forward(request, response);
    }
}
