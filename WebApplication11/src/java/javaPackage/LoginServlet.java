///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
// */
//package javaPackage;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.sql.SQLException;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.DriverManager;
//
///**
// *
// * @author Acer
// */
//@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
//public class LoginServlet extends HttpServlet {
//
//    /**
//     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
//     * methods.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet LoginServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }
//
//    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        //processRequest(request, response);
//        String id = request.getParameter("id");
//        String Username = request.getParameter("us");
//        String Password = request.getParameter("pw");
//        
//        // Database connection parameters
//        String url = "jdbc:mysql://localhost:3306/dea_1";
//        String username = "root";
//        String password = "";
//        
//        // JDBC variables
//        Connection conn = null;
//        PreparedStatement pstmt = null;
//        
//        try {
//            // Load JDBC driver
//            Class.forName("com.mysql.jdbc.Driver");
//            
//            // Establish connection
//            conn = DriverManager.getConnection(url, username, password);
//            
//            // Prepare SQL statement
//            String sql = "INSERT INTO data (ID, Username, Password) VALUES (?, ?, ?)";
//            pstmt = conn.prepareStatement(sql);
//            pstmt.setString(1, id);
//            pstmt.setString(2, Username);
//            pstmt.setString(3, Password);
//            
//            // Execute SQL statement
//            int rowsInserted = pstmt.executeUpdate();
//            if (rowsInserted > 0) {
//                response.getWriter().println("Data inserted successfully");
//            } else {
//                response.getWriter().println("Failed to insert data");
//            }
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//            response.getWriter().println("Error: " + e.getMessage());
//        } finally {
//            // Close JDBC objects
//            if (pstmt != null) {
//                try {
//                    pstmt.close();
//                } catch (SQLException e) {
//                    e.printStackTrace();
//                }
//            }
//            if (conn != null) {
//                try {
//                    conn.close();
//                } catch (SQLException e) {
//                    e.printStackTrace();
//                }
//            }
//        }
//    }
//        
//   
//
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
