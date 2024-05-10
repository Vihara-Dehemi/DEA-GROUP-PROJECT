/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaPackages;

/**
 *
 * @author vihan
 */
public class User {
    private int id;
    private String name;
    private String email;
    private String password;
    private String phno;
    private String address;
    private String landmark;
    private String city;
    private String state;
    private String pincode;
    
    public User(){
        super();
    }
    
    
    public void setId(int id){
        this.id=id;
    }
    public int getId(){
        return id;
    }
    public void setName(String name){
        this.name=name;
    }
    public String getName(){
        return name;
    }
    public void setEmail(String email){
        this.email=email;
    }
    public String getEmail(){
        return email;
    }
    public void setPassword(String password){
        this.password=password;
    }
    public String getPassword(){
        return password;
    }
    public void setPhno(String phno){
        this.phno=phno;
    }
    public String getPhno(){
        return phno;
    }
    public void setAddress(String address){
        this.address=address;
    }
    public String getAddress(){
        return address;
    }
    public void setLandmark(String landmark){
        this.landmark=landmark;
    }
    public String getLandmark(){
        return landmark;
    }
    public void setCity(String city){
        this.city=city;
    }
    public String getCity(){
        return city;
    }
    public void setState(String state){
        this.state=state;
    }
    public String getState(){
        return state;
    }
    public void setPincode(String pincode){
        this.pincode=pincode;
    }
    public String getPincode(){
        return pincode;
    }
    
    @Override
    public String toString(){
        return "user[id="+ id +",name="+ name + ",email="+ email + ",password="+ password +",phno="+ phno + ",address="+ address + ",landmark="+ landmark + ",city="+ city + ",state="+ state + ",pincode="+ pincode + "]";
    }
    
}
    

