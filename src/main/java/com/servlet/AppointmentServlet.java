/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import com.conn.DataConnect;
import com.dao.AppointmentDAO;
import com.entity.Appointment;
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
@WebServlet("/appointmentBooking")
public class AppointmentServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
           
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        String date=request.getParameter("date");
        String message=request.getParameter("message");
        
       Appointment app=new Appointment(firstname,lastname,email,phone,date,message);
       AppointmentDAO dao=new AppointmentDAO(DataConnect.getConn());
       boolean f=dao.AppointmentRegistration(app);
       HttpSession session=request.getSession();
       if(f){
           
           response.sendRedirect("AppointmentWelcome.jsp");
           session.setAttribute("Appointment", app);
           
       }else{
           response.sendRedirect("appointment.jsp");
       }
        if(app!=null){
            session.setAttribute("Appointment", app);
            
        }else{
             session.setAttribute("errorMsg", "YOU HAVE ENTERED WRONG EMAIL OR PASSWORD...");
            
        }
       
        
        
    }

    
    

}
