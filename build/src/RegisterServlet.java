/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Register;

import Database.DBcontroller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServletUrl"})
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
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
        
        Register objRegister = new Register();
        
        objRegister.setStud_Id(request.getParameter("ID"));
        objRegister.setName(request.getParameter("NAME"));
        objRegister.setDepartment(request.getParameter("DEPARTMENT"));
        objRegister.setYear(request.getParameter("YEAR"));
        objRegister.setDivision(request.getParameter("DIV"));
        objRegister.setEmail(request.getParameter("EMAIL"));
        
        DBcontroller dbc= new DBcontroller();
        
        try
        {
            DBcontroller.insertStudent(objRegister.getStud_Id(),objRegister.getName(),objRegister.getDepartment(),objRegister.getYear(),objRegister.getDivision(),objRegister.getEmail()); 
            RequestDispatcher rd=request.getRequestDispatcher("Studentdetails.jsp");
            rd.forward(request, response);
           }
            catch(Exception e){}
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
