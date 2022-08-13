/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.entity.Appointment;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author yeruv
 */
public class AppointmentDAO {
    
    private final Connection conn;
        public AppointmentDAO(Connection conn){
           super();
            this.conn=conn;
        }
        
        public boolean AppointmentRegistration(Appointment a){
            boolean f=false;
            
            try{
                String sql="insert into appointment(firstname,lastname,email,phone,date,message) values(?,?,?,?,?,?);";
                
                
            PreparedStatement ps=conn.prepareStatement(sql);
                ps.setString(1, a.getFirstname());
                ps.setString(2, a.getLastname());
                ps.setString(3, a.getEmail());
                ps.setString(4, a.getPhone());
                ps.setString(5, a.getDate());
                ps.setString(6, a.getMessage());
                
                int i=ps.executeUpdate();
                if(i==1){
                    f=true;
                }
                        
            }catch(Exception e){
                e.printStackTrace();
            }
        return f;
            
        }
           Appointment app=null;
    public Appointment addData(String fn, String ln,String e,String p,String d,String m){
        
        try{
            String sql="select * from doctor where firstname=?,lastname=?,email=?,phone=?,date=?,message=?;";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1, fn);
            ps.setString(2, ln);
            ps.setString(3, e);
            ps.setString(4, p);
            ps.setString(5, d);
            ps.setString(6, m);
            
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                app=new Appointment();
                app.setId(rs.getInt(1));
                app.setFirstname(rs.getString(2));
                app.setLastname(rs.getString(3));
                app.setEmail(rs.getString(4));
                app.setPhone(rs.getString(5));
                app.setDate(rs.getString(6));
                app.setMessage(rs.getString(7));
                
            }
            
        }catch(Exception es){
            es.printStackTrace();
        }
        return app;
    }
    
        
    
}
