/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author yeruv
 */
public class DataConnect {
    private static Connection conn;
    public static Connection getConn(){
        try{
           Class.forName("com.mysql.cj.jdbc.Driver");
             conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/appolo","root","root");            
    }catch(Exception e){
           e.printStackTrace();
            }
        
        return conn;
        
    }
    
}
