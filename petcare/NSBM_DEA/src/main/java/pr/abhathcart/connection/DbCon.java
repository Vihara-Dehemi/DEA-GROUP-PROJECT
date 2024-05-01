
package pr.abhathcart.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DbCon {
	
	public static void main(String[]args) {
		connection();
	}
	public  static Connection connection (){
		Connection conn=null;
	 try{
		 
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 conn=DriverManager.getConnection("jdbc:mysql:localhost:4306/NSBM_DEA","root","Hiru16546");
		 System.out.println("Connection ok");
		 
	 } catch(Exception e) {
		 System.out.print("Error DBConnection Class:" +e);
	 }
	 
	 return conn;
  }
}
	
	
	
	
	
	
	
	
	
