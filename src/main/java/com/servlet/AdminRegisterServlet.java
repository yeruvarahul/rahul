/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import com.conn.DataConnect;
import com.dao.AdminDAO;
import com.entity.Admin;
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
@WebServlet("/AdminRegister")
public class AdminRegisterServlet extends HttpServlet {

  
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
        
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String repeatpassword=request.getParameter("repeatpassword");
        
        Admin ad=new Admin(name,email,password,repeatpassword);
        AdminDAO dao=new AdminDAO(DataConnect.getConn());
        boolean f=dao.AdminRegister(ad);
        
        if(f){
            response.sendRedirect("admin.jsp");
        }else{
            response.sendRedirect("adminsignup.jsp");
        }       
    }
    
    

}
