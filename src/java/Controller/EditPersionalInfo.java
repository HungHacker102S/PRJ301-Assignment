/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import Model.User;
import context.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author MSI Modern 14
 */
public class EditPersionalInfo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("userID"));
        UserDAO user = new UserDAO();
        request.setAttribute("user", user.getAccountByID(id));
        request.getRequestDispatcher("editPersionalInfo.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userid = Integer.parseInt(request.getParameter("userID"));
        String name = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String pass = request.getParameter("password");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        UserDAO user = new UserDAO();                                             
        user.UpdateInformation(userid, email, pass, name, phone, address);
        User us = user.userLogin(email, pass);
        request.getSession().setAttribute("user", us);
        response.sendRedirect("info");
    }

}
