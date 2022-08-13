/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import com.conn.DataConnect;
import com.dao.DoctorDAO;
import com.dao.PatientDAO;
import com.entity.Doctor;
import com.entity.Patient;
import com.entity.doctorPatient;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author yeruv
 */
@WebServlet("/LoginDoc")
public class DoctorLoginServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
           
        }
    }

    

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        
        DoctorDAO dao=new DoctorDAO(DataConnect.getConn());
        Doctor doc=dao.docLogin(email, password);
        doctorPatient dp=dao.dpLogin();
        doctorPatient dp2=dao.dpLogin();
        
      
        HttpSession session=request.getSession();
        if(doc!=null){
            session.setAttribute("Doctor", doc);
            response.sendRedirect("docWelcome.jsp");
        }else{
             session.setAttribute("errorMsg", "YOU HAVE ENTERED WRONG EMAIL OR PASSWORD...");
            response.sendRedirect("doctor.jsp");
        }  
        
        if(dp!=null){
            session.setAttribute("doctorPatient", dp);
            session.setAttribute("doctorPatient", dp2);
        }else{
            session.setAttribute("errorMsg", "YOU HAVE ENTERED WRONG EMAIL OR PASSWORD...");
        }
        
    
    
    

    }
   

}
