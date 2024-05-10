/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.Cart;
import entity.LapDtls;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author wwwkr
 */
public class CartDAOImpl implements CartDAO {

    private Connection conn;

    public CartDAOImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public boolean addCart(Cart c) {
        boolean f = false;

        try {
            String sql = "INSERT INTO cart (bid,uid,lapName,price,total_price) VALUES (?,?,?,?,?)";
            PreparedStatement ps;
            ps = conn.prepareStatement(sql);
            ps.setInt(1, c.getBid());
            ps.setInt(2, c.getUserId());
            ps.setString(3, c.getLapName());
            ps.setDouble(4, c.getPrice());
            ps.setDouble(5, c.getTottalPrice());

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return f;
    }

    @Override
    public List<Cart> getLapByUser(int userId) {
        List<Cart> list = new ArrayList<Cart>();
        Cart c = null;
        double totalPrice = 0;
        try {
            String sql = "SELECT * FROM cart WHERE uid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                c = new Cart();
                c.setCid(rs.getInt(1));
                c.setBid(rs.getInt(2));
                c.setUserId(rs.getInt(3));
                c.setLapName(rs.getString(4));
                c.setPrice(rs.getDouble(5));

                totalPrice = totalPrice + rs.getDouble(6);
                c.setTotalPrice(totalPrice);
                list.add(c);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean deleteLap(int bid, int uid) {
        boolean f = false;

        try {
            String sql = "DELETE FROM cart WHERE bid=? AND uid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, bid);
            ps.setInt(2, uid);

            int i = ps.executeUpdate();

            if (i == 1) {
                f = true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(CartDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return f;

    }

}
