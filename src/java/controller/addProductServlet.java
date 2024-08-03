/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.DAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author HUU NGHIA
 */
@WebServlet(name="addProductServlet", urlPatterns={"/addProduct"})
public class addProductServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addProductServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addProductServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
        DAO dao = new DAO();
        List<Category> list = dao.getAllCategory();
        request.setAttribute("category", list);
        request.getRequestDispatcher("addProduct.jsp").forward(request, response);
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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
       // processRequest(request, response);
       String name = request.getParameter("name");
       String des = request.getParameter("description");
       String img = request.getParameter("image");
       String priceR = request.getParameter("price");
       String quantityR = request.getParameter("quantity");
       String cidR = request.getParameter("category");
       
        try {
            double price = Double.parseDouble(priceR);
            int quantity = Integer.parseInt(priceR);
            int cid = Integer.parseInt(cidR);
            DAO Cdao = new DAO();
            Category c = Cdao.getCategoryById(cid);
            //Product p = new Product(cid, name, des, img, price, quantity, c);
            Product p = new Product(name, des, img, price, quantity, c);
            
            ProductDAO dao = new ProductDAO();
            
            dao.addProduct(p);
       
            response.sendRedirect("product");
        } catch (Exception e) {
            e.printStackTrace();
        }
       
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
