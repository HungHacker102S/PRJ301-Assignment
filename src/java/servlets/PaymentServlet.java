
package servlets;

import context.productDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
@WebServlet(name="PaymentServlet", urlPatterns={"/payment"})
public class PaymentServlet extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        productDAO d = new productDAO();
        String pid = request.getParameter("pid");
        
        request.setAttribute("product", d.getProductByProductId(pid));
        request.getRequestDispatcher("payment.jsp").forward(request, response); 
    } 


}
