/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.Cart;
import entity.LapDtls;
import java.util.List;

/**
 *
 * @author wwwkr
 */
public interface CartDAO {
    
    public boolean addCart(Cart c);
    
    public List<Cart> getLapByUser(int userId);
    
    public boolean deleteLap(int bid,int uid);
    
}
