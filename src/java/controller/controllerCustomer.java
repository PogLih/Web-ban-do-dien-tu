/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Customers;

/**
 *
 * @author Linh
 */
public class controllerCustomer extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    final private String errorPage = "fail.jsp";
    final private String homePage = "index.jsp";
    final private String welcomePage = "index.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String action = request.getParameter("btaction");
            if (action.equals("Sign in")) {
                String username = request.getParameter("txtUsername");
                String password = request.getParameter("txtPassword");
                boolean result = checkLogin(username, password);
                String url = errorPage;
                if (result) {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("USER", username);
                    url = welcomePage;
                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("tryAgain")) {
                RequestDispatcher rd = request.getRequestDispatcher(homePage);
                rd.forward(request, response);
            } else if (action.equals("Delete")) {
                String username = request.getParameter("txtUsername");
                Customers ctms = new Customers();
                ctms.delete(username);
                RequestDispatcher rd = request.getRequestDispatcher("showAllCustomer.jsp");
                rd.forward(request, response);
            } else if (action.equals("Update")) {
                String username = request.getParameter("txtUsername");
                String password = request.getParameter("txtPassword");
                String lastname = request.getParameter("txtLastname");
                String email = request.getParameter("txtEmail");
                String phonenumber = request.getParameter("txtPhonenumber");
                String address = request.getParameter("txtAddress");
                HttpSession session = request.getSession(true);
                session.setAttribute("Username", username);
                session.setAttribute("Password", password);
                session.setAttribute("Lastname", lastname);
                session.setAttribute("Email", email);
                session.setAttribute("Phonenumber", phonenumber);
                session.setAttribute("Address", address);
                session.setAttribute("Check","Update");
                RequestDispatcher rd = request.getRequestDispatcher("updateCustomer.jsp");
                rd.forward(request, response);
            } else if (action.equals("update")) {
                String username = request.getParameter("txtUsername");
                String password = request.getParameter("txtPassword");
                String lastname = request.getParameter("txtLastname");
                String email = request.getParameter("txtEmail");
                String phonenumber = request.getParameter("txtPhonenumber");
                String address = request.getParameter("txtAddress");
                Customers ctms = new Customers();
                try {
                    ctms.update(username, password, lastname, email, phonenumber, address);
                    RequestDispatcher rd = request.getRequestDispatcher("showAllCustomer.jsp");
                    rd.forward(request, response);
                } catch (Exception e) {
                }
            }else if(action.equals("Insert")){
                HttpSession session = request.getSession(true);
                session.setAttribute("Check","Insert");
                RequestDispatcher rd = request.getRequestDispatcher("updateCustomer.jsp");
                rd.forward(request, response);
            }else if(action.equals("insert")){
                String username = request.getParameter("txtUsername");
                String password = request.getParameter("txtPassword");
                String lastname = request.getParameter("txtLastname");
                String email = request.getParameter("txtEmail");
                String phonenumber = request.getParameter("txtPhonenumber");
                String address = request.getParameter("txtAddress");
                Customers ctms = new Customers();
                try {
                    ctms.insert(username, password, lastname, email, phonenumber, address);
                    RequestDispatcher rd = request.getRequestDispatcher("showAllCustomer.jsp");
                    rd.forward(request, response);
                } catch (Exception e) {
                }
            }
        } catch (Exception e) {

        }
    }

    public boolean checkLogin(String username, String password) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from Customers where username = ? and password = ?";
            PreparedStatement stm = con.prepareCall(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            boolean result = rs.next();
            rs.close();
            stm.close();
            con.close();
            if (result) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
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
