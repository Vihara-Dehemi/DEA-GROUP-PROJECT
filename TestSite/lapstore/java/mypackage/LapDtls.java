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
public class LapDtls {
    
    private int lapId;
    private String lapName;
    private String price;
    private String photoName;
    private String category;
    public LapDtls(){
        super();
    }
    public LapDtls(String lapName, String price, String photoName,String category){
        super();
        this.lapName=lapName;
        this.price=price;
        this.photoName=photoName;
        this.category=category;
    }
    public void setlapId(int lapId){
        this.lapId=lapId;
    }
    public int getlapId(){
        return lapId;
    }
    
    public void setlapName(String lapName){
        this.lapName=lapName;
    }
    public String getlapName(){
        return lapName;
    }
    public void setPrice(String price){
        this.price=price;
    }
    public String getPrice(){
        return price;
    }
    public void setPhotoName(String photoName){
        this.photoName=photoName;
    }
    public String getPhotoName(){
        return photoName; 
    }
    public void setCategory(String category){
        this.category=category;
    }
    public String getCategory(){
        return category;
    }
    
    @Override
    public String toString(){
        return "LapDtls [lapId="+ lapId +",lapName="+ lapName +",price="+ price +",photoName="+ photoName +",category="+ category +"]";
        
    }
    
}


