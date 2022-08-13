/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.entity.Admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jdk.vm.ci.amd64.AMD64;

/**
 *
 * @author yeruv
 */
public class AdminDAO {
    private static Connection conn;
    
    public AdminDAO(Connection conn){
        super();
        this.conn=conn;
    }
    public boolean AdminRegister(Admin ad){
        boolean f=false;
        try{
            String sql="insert into admin(name,email,password,repeatpassword) values(?,?,?,?);";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1, ad.getName());
            ps.setString(2, ad.getEmail());
            ps.setString(3, ad.getPassword());
            ps.setString(4, ad.getRepeatpassword());
            
            int i=ps.executeUpdate();
            if(i==1){
                f=true;
            }          
            
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return f;
        
    }
    
    Admin adm=null;
    public Admin AdminLogin(String e,String p){
        boolean f=false;
        try{
            String sql="select * from admin where email=? and password=?;";
             PreparedStatement ps=conn.prepareStatement(sql);
             ps.setString(1, e);
             ps.setString(2, p);
             ResultSet rs=ps.executeQuery();
             while(rs.next()){
                  adm=new Admin();
                 adm.setId(rs.getInt(1));
                 adm.setName(rs.getString(2));
                 adm.setEmail(rs.getString(3));
                 adm.setPassword(rs.getString(4));
                 adm.setRepeatpassword(rs.getString(5));
                 
             }
            
        }catch(Exception ex){
            ex.printStackTrace();
        }
        
        
        return adm;
        
    }
    
    
    
}
