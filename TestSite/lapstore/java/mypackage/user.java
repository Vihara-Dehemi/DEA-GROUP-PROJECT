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
public class user {
    
    private int id;
    private String name;
    private String email;
    private String phone;
    private String password;
    
    public user(){
        super();
    }
    public int getId(){
        return id;
    }
    
    public void setId(int id){
        this.id=id;
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
    public void setPhone(String phone){
        this.phone=phone;
    }
    public String getPhone(){
        return phone;
    }
    
    @Override
    public String toString(){
        return "user[id="+ id +",name="+ name +",email="+ email +",password="+
                password +",phone="+ phone +"]";
    }
}
