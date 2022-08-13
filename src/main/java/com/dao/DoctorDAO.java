/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.entity.Doctor;
import com.entity.doctorPatient;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author yeruv
 */
public class DoctorDAO {
    
    private final Connection conn;

    public DoctorDAO(Connection conn) {
        super();
        this.conn = conn;
    }

    
    
    public boolean DoctorRegistration(Doctor d){
        boolean f=false;
        
        try{
    
            
            String sql="insert into doctor(firstname,lastname,email,password) values(?,?,?,?);";
            
            PreparedStatement ps=conn.prepareStatement(sql);
            
            ps.setString(1, d.getFirstName());
            ps.setString(2, d.getLastNmae());
            ps.setString(3, d.getEmail());
            ps.setString(4, d.getPassword());
            
         
            int i=ps.executeUpdate();
            
            if(i==1){
                f=true;
            }
            
            
        }catch(SQLException e){
            e.printStackTrace();
        }
              return f;
        
    }
    
    Doctor doc=null;
    public Doctor docLogin(String e, String p){
        
        try{
            String sql="select * from doctor where email=? and password=?;";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1, e);
            ps.setString(2, p);
            
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                doc=new Doctor();
                doc.setId(rs.getInt(1));
                doc.setFirstName(rs.getString(2));
                doc.setLastNmae(rs.getString(3));
                doc.setEmail(rs.getString(4));
                doc.setPassword(rs.getString(5));
                
            }
            
        }catch(Exception es){
            es.printStackTrace();
        }
        return doc;
    }
       doctorPatient dp=null;
    public doctorPatient dpLogin(){
        
        try{
            String sql="select * from patient where id='1'; ";
           
            PreparedStatement ps=conn.prepareStatement(sql);
           ;
                      
            
            ResultSet rs=ps.executeQuery();
           
            while(rs.next()){
                dp=new doctorPatient();
                dp.setId(rs.getInt(1));
                dp.setFirstname(rs.getString(2));
                dp.setLastname(rs.getString(3));
                dp.setEmail(rs.getString(4));
                dp.setPassword(rs.getString(5));
                dp.setAddress(rs.getString(6));
                
            }            
            
        }catch(Exception es){
            es.printStackTrace();
        }
        return dp;
    }
    
    
}
