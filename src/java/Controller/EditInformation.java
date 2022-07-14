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
public class EditInformation extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String role = request.getParameter("role");
        int id = Integer.parseInt(request.getParameter("userID"));
        UserDAO user = new UserDAO();
        User us = user.getAccountByID(id);
        request.setAttribute("user", us);
        request.getRequestDispatcher("editInformation.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userid = Integer.parseInt(request.getParameter("userID"));
        String name = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String pass = request.getParameter("password");
        String email = request.getParameter("email");
        boolean role = Boolean.parseBoolean(request.getParameter("role"));
        String address = request.getParameter("address");
        UserDAO user = new UserDAO();                                             
        user.UpdateInformationAdmin(userid, email, pass, name, phone, role, address);
        response.sendRedirect("information");
    }

}
