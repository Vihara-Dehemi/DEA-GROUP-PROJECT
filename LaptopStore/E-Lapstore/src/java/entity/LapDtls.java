/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author wwwkr
 */
public class LapDtls {
    
    private int lapid;
    private String lapName;
    private String price;
    private String lapCategory;
    private String status;
    private String photoName;
    private String email;
    
    public LapDtls(){
        super();
    }
    public LapDtls(String lapName,String price,String lapCategory,String status,String photoName,String email)
    {
        super();
        this.lapName=lapName;
        this.price=price;
        this.lapCategory=lapCategory;
        this.status=status;
        this.photoName=photoName;
        this.email=email;
    }
    
   
    
}
