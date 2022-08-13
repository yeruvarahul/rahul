/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import com.conn.DataConnect;
import com.dao.PatientDAO;
import com.entity.Patient;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yeruv
 */
@WebServlet("/patientRegistration")
public class PatientRegisterServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
           
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String address=request.getParameter("address");
        
       Patient pat=new Patient(firstname,lastname,email,password,address);
       PatientDAO dao= new PatientDAO(DataConnect.getConn());
       boolean f=dao.patientRegistration(pat);
       
       if(f){
           response.sendRedirect("patient.jsp");
       }else{
           response.sendRedirect("SignUpPatient.jsp");
       }
        
        
        
        
    }

   

}
