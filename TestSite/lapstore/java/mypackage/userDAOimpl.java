/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author wwwkr
 */
public class userDAOimpl implements DAO{
    private Connection conn;
    
    public userDAOimpl(Connection conn){
        super();
        this.conn=conn;
    }
    
    @Override
    public boolean userRegister(user us){
        boolean f=false;
        
        try{
            String sql="INSERT INTO user(name,email,phone,password) VALUES (?,?,?,?)";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1, us.getName());
            ps.setString(2, us.getEmail());
            ps.setString(3, us.getPhone());
            ps.setString(4, us.getPassword());
            
            int i=ps.executeUpdate();
            if(i==1){
                f=true;
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return false;
    } 
    
    @Override
    public user login(String email, String password){
        user us=null;
        try{
            String sql="select * from user where email=? and password=?";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            
           ResultSet rs =ps.executeQuery();
           while(rs.next())
           {
               us = new user();
               us.setId(rs.getInt(1));
               us.setName(rs.getString(2));
               us.setEmail(rs.getString(3));
               us.setPhone(rs.getString(4));
               us.setPassword(rs.getString(5));
           }
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return us;
    }
    
}
