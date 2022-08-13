/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import com.conn.DataConnect;
import com.dao.DoctorDAO;
import com.entity.Doctor;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
@WebServlet("/DoctorRegister")
public class DoctorServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        
        Doctor d=new Doctor(firstname,lastname,email,password);
        DoctorDAO dao=new DoctorDAO(DataConnect.getConn());
        boolean f=dao.DoctorRegistration(d);
        
        HttpSession session=request.getSession();
        
        if(f){
            
            response.sendRedirect("doctor.jsp");
            
        }else{
            response.sendRedirect("signUpDoctor.jsp");
        }
                
    }
    

  

}
