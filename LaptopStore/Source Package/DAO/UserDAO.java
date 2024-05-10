/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.user;



/**
 *
 * @author wwwkr
 */
public interface UserDAO {
    
    public boolean userRegister(user us);
    
    public user login(String email,String password);
    
}
