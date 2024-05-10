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
    
    public void setLapId(int lapid){
        this.lapid=lapid;
    }
    public int getlapId(){
        return lapid;
    }
    public void setLapName(String lapName){
        this.lapName=lapName;
    }
    public String getLapName(){
        return lapName;
    }
    public void setPrice(String price){
        this.price=price;
    }
    public String getPrice(){
        return price;
    }
    public void setLapCategory(String lapCategory){
        this.lapCategory=lapCategory;
    }
    public String getLapCategory(){
        return lapCategory;
    }
    public void setStatus(String status){
        this.status=status;
    }
    public String getStatus(){
        return status;
    }
    public void setPhotoName(String photoName){
        this.photoName=photoName;
    }
    public String getPhotoName(){
        return photoName;
    }
    public void setEmail(String email){
        this.email=email;
    }
    public String getEmail(){
        return email;
    }
    
    @Override
    public String toString(){
        return "LapDtls [lapid="+lapid+",lapName="+lapName+",price="+price+",lapCategory="+lapCategory+",status="+status+",photoName="+photoName+",email="+email+"]";
    }
    
}
