/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author User
 */
public class Cart {
    
    private int cid;
    private int bid;
    private int userId;
    private String lapName;
    private Double price;
    private Double totalPrice;
    
    public void setCid(int cid){
        this.cid=cid;
    }
    public int getCid(){
        return cid;
    }
    public void setBid(int bid){
        this.bid=bid;
    }
    public int getBid(){
        return bid;
    }
    public void setUserId(int userId){
        this.userId=userId;
    }
    public int getUserId(){
        return userId;
    }
    public void setLapName(String lapName){
        this.lapName=lapName;
    }
    public String getLapName(){
        return lapName;
    }
    public void setPrice(Double price){
        this.price=price;
    }
    public Double getPrice(){
        return price;
    }
    public void setTotalPrice(Double totalPrice){
        this.totalPrice=totalPrice;
    }
    public Double getTottalPrice(){
        return totalPrice;
    }
    
}

    

