/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 15U560
 */
//public class login{
//    public static void main (String[] arg) throws SQLException{
//        String driver = "com.mysql.jdbc.Driver";
//        String url= "jdbc:mysql://localhost:3306/dea_1";
//        String query= "INSERT INTO data (ID, Username, Password) VALUES (1, 'Nuvi', '1111');";
//        
//        try {
//            Class.forName(driver);
//            Connection con = DriverManager.getConnection(url,"root","");
//            Statement st = con.createStatement();
//            st.executeUpdate(query);
//            System.out.println("Data inserted successfully!");
//        } catch (ClassNotFoundException | SQLException ex ) {
//            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }    
//}

public class login{
    static Statement st;
    public static void main(String[] arg){
       
        inserteBook();
        viewBooks();
    }
    static void connectToDB(){
        String driver = "com.mysql.jdbc.Driver";
        String url= "jdbc:mysql://localhost:3306/dea_1";
        try{
            Class.forName(driver);
            Connection con =DriverManager.getConnection(url, "root", "");
            st = con.createStatement();
        }catch(ClassNotFoundException | SQLException ex){
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    static void inserteBook(){
        
        connectToDB();
        String query = "INSERT INTO data() VALUES(0,'Shara','0000')";
        try {
            st.executeUpdate(query);
            System.out.println("Record inserted.");
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    
    }
    static void viewBooks(){
        connectToDB();
        String viewquery = "SELECT * FROM data";
        try {
            ResultSet rs = st.executeQuery(viewquery);
            while(rs.next()){
                System.out.print(rs.getInt("ID"));
                System.out.print(rs.getString("Username"));
                System.out.print(rs.getString("Password"));
                System.out.println();
            }
        }catch(SQLException ex){
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
 
}
    