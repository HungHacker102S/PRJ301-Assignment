
package servlets;

import context.productDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
public class CategoryServlet extends HttpServlet {
   

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        productDAO d = new productDAO();
        String category = request.getParameter("category");
        

        request.setAttribute("c", d.getProductByCategory(category));          
        request.getRequestDispatcher("Category.jsp").forward(request, response);
        
    } 


}
