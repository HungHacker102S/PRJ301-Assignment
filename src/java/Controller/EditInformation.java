/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import context.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author MSI Modern 14
 */
public class EditInformation extends HttpServlet {
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int userid = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String pass = request.getParameter("password");
        String email = request.getParameter("email");
        UserDAO user = new UserDAO();
        user.UpdateInformation(userid, email, pass, name, phone);
        request.getSession().setAttribute("user", user);
        response.sendRedirect("information.jsp");
    }

}
