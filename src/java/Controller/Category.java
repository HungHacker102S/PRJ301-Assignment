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
 * @author ASUS
 */
public class Category extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO d = new ProductDAO();
        String category = request.getParameter("category");
        ArrayList<Product> list_product= d.getProductByCategory(category);
        String xpage=request.getParameter("xpage");
        int page;
        if(xpage==null){
            page=1;
        }else{
            page=Integer.parseInt(xpage);
        }   
        // ktra ve so luong
        int size=list_product.size();
        int numpage=(size%6==0)?size/6:size/6+1;   
        int start=(page-1)*6;
        int end=Math.min(size, page*6);
        ArrayList<Product> listpg=d.getByPage(list_product,start,end);
        
        request.setAttribute("category", category);
        request.setAttribute("size",size);
        request.setAttribute("numpage", numpage);
        request.setAttribute("list_product", list_product);
        request.setAttribute("listpg", listpg);
        request.setAttribute("page", page);
        request.setAttribute("c", d.getProductByCategory(category));          
        request.getRequestDispatcher("category.jsp").forward(request, response);      
    }

}
