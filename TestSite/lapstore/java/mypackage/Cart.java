/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

/**
 *
 * @author wwwkr
 */
public class Cart {
    
    private int cid;
    private int bid;
    private int userid;
    private String name;
    private Double price;
    private Double total_price;
    
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
    public void setUserid(int userid){
        this.userid=userid;
    }
    public int getUserid(){
        return userid;
    }
    public void setName(String name){
        this.name=name;
    }
    public String getName(){
        return name;
    }
    public void setPrice(Double pricce){
        this.price=price;
        
    }
    public Double getPrice(){
        return price;
    }
    public void setTotiPrice(Double tottal_prcie){
        this.total_price=total_price;
    }
    public Double getTotalPrice(){
        return total_price;
    }
    
}
