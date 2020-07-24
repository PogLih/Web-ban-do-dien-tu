/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Products;

/**
 *
 * @author Linh
 */
public class controllerProduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String action = request.getParameter("action");
            if (action.equals("Update")) {
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String price = request.getParameter("txtPrice");
                String category = request.getParameter("txtCategory");
                String img = request.getParameter("txtImg");
                HttpSession session = request.getSession(true);
                session.setAttribute("Code", code);
                session.setAttribute("Name", name);
                session.setAttribute("Price", price);
                session.setAttribute("Category", category);
                session.setAttribute("Img", img);
                session.setAttribute("Check", "Update");
                RequestDispatcher rd = request.getRequestDispatcher("updateProduct.jsp");
                rd.forward(request, response);
            } else if (action.equals("Delete")) {
                String code = request.getParameter("txtCode");
                Products pd = new Products();
                pd.delete(code);
                RequestDispatcher rd = request.getRequestDispatcher("showAllProduct.jsp");
                rd.forward(request, response);
            } else if (action.equals("update")) {
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                float price = Float.parseFloat(request.getParameter("txtPrice"));
                String category = request.getParameter("txtCategory");
                String img = request.getParameter("txtImg");
                Products pd = new Products();
                try {
                    pd.update(code, name, price, category, img);
                    System.out.println("update thành công");
                    RequestDispatcher rd = request.getRequestDispatcher("showAllProduct.jsp");
                    rd.forward(request, response);
                } catch (Exception e) {
                    System.out.println("update lỗi");
                }

            } else if (action.equals("Insert")) {
                HttpSession session = request.getSession(true);
                session.setAttribute("Check", "Insert");
                RequestDispatcher rd = request.getRequestDispatcher("updateProduct.jsp");
                rd.forward(request, response);
            } else if(action.equals("insert")){
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                float price = Float.parseFloat(request.getParameter("txtPrice"));
                String category = request.getParameter("txtCategory");
                String img = request.getParameter("txtImg");
                Products pd = new Products();
                try {
                    pd.insert(code, name, price, category, img);
                    RequestDispatcher rd = request.getRequestDispatcher("showAllProduct.jsp");
                    rd.forward(request, response);
                } catch (Exception e) {
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
