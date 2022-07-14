/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import Model.Product;
import context.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author ttaad
 */
public class SearchController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
      ProductDAO d = new ProductDAO();
      String find=request.getParameter("find");   
      ArrayList<Product> listAll=d.getAll();
      ArrayList<Product> list_after_search=d.getByName(listAll, find);
      String xpage=request.getParameter("xpage");
        int page;
        if(xpage==null){
            page=1;
        }else{
            page=Integer.parseInt(xpage);
        }   
        int size=list_after_search.size();
        int numpage=(size%6==0)?size/6:size/6+1;   
        int start=(page-1)*6;
        int end=Math.min(size, page*6);
        ArrayList<Product> listpg=d.getByPage(list_after_search,start,end);
        String notificatation="There are "+size+" matches found!!!";
        int count=listpg.size();
        if(count!=0){
        request.setAttribute("notifi", notificatation);
        request.setAttribute("find", find);
        request.setAttribute("size",size);
        request.setAttribute("numpage", numpage);
        request.setAttribute("list_product", list_after_search);
        request.setAttribute("listpg", listpg);
        request.setAttribute("page", page);
        request.setAttribute("find", find);
        request.getRequestDispatcher("search.jsp").forward(request, response);}
        else{
            notificatation="There is no matched product with: "+find;
            request.setAttribute("notifi", notificatation);
            request.getRequestDispatcher("search.jsp").forward(request, response);
        }
    } 
      

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
