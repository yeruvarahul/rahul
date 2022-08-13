/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.entity.Patient;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author yeruv
 */
public class PatientDAO {
    
    private static Connection conn;
    
    public PatientDAO(Connection conn){
        super();
        this.conn=conn;
    }
    public boolean patientRegistration(Patient p){
        
        boolean f=false;
        try{
            
            String sql="insert into patient(firstname,lastname,email,password,address) values(?,?,?,?,?);";
            PreparedStatement ps=conn.prepareStatement(sql);
            
            ps.setString(1, p.getFirstname());
            ps.setString(2, p.getLastname());
            ps.setString(3, p.getEmail());
            ps.setString(4, p.getPassword());
            ps.setString(5, p.getAddress());
          
            int i=ps.executeUpdate();
            if(i==1){
                f=true;
            }         
        }catch(Exception e){
            e.printStackTrace();
        }
               return f;
        
    }
    
    Patient pat=null;
    public Patient patLogin(String e,String p){
        
        try{
            String sql="select * from patient where email=? and password=?;";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1, e);
            ps.setString(2, p);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
            pat=new Patient();
            
            pat.setId(rs.getInt(1));
            pat.setFirstname(rs.getString(2));
            pat.setLastname(rs.getString(3));
            pat.setEmail(rs.getString(4));
            pat.setPassword(rs.getString(5));
            pat.setAddress(rs.getString(6));
            
            
            
            } 
            
        }catch(Exception es){
            es.printStackTrace();
        }
        
        
        
        
        return pat;
        
    }
    
    
    
    
}
