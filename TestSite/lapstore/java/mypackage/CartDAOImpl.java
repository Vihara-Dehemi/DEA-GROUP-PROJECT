/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author wwwkr
 */
public class CartDAOImpl implements CartDAO {
    private Connection conn;
    
    public CartDAOImpl (Connection conn){
        this.conn=conn;
    }
    

    @Override
    public boolean addCart(Cart c) {
        boolean f=false;
        try{
            String sql = "INSERT INTO cart (bid,uid,name,price,total_price) VALUES (?,?,?,?)";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setInt(1, c.getBid());
            ps.setInt(2, c.getUserid());
            ps.setString(3, c.getName());
            ps.setDouble(4, c.getPrice());
            ps.setDouble(5, c.getTotalPrice());
            
            int i=ps.executeUpdate();
            if(i==1){
                f=true;
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
}
