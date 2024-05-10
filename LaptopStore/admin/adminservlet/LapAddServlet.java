/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlet;

import DAO.LapDAOImpl;
import DB.DBConnect;
import entity.LapDtls;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author wwwkr
 */
@WebServlet(name = "LapAddServlet", urlPatterns = {"/LapAddServlet"})
@MultipartConfig
public class LapAddServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LapAddServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LapAddServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
    try{  
        String lapName = request.getParameter("lname");
        String price = request.getParameter("price");
        String category = request.getParameter("ltype");
        String status = request.getParameter("lstatus");
        Part part = request.getPart("limg");
        String fileName = part.getSubmittedFileName();

        LapDtls b = new LapDtls(lapName, price, category, status, fileName, "admin");

        LapDAOImpl dao = new LapDAOImpl(DBConnect.getConn());
        
        
        boolean f = dao.addLaps(b);
        HttpSession session = request.getSession();

        if (f) {

            String path = getServletContext().getRealPath("") + "laptop";

            File file = new File(path);
            part.write(path + File.separator + fileName);

            session.setAttribute("succMsg", "Lap add success");
            response.sendRedirect("../addLap.jsp");

        } else {

            session.setAttribute("failedMsg", "Somthing wrong on server");
            response.sendRedirect("../addLap.jsp");

        }
        
    }catch(Exception e){
        e.printStackTrace();
    }

        //processRequest(request, response);
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
