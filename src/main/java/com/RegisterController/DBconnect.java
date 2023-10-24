package RegisterController;

import java.sql.Connection;
import java.sql.DriverManager;
public class DBconnect {

	//this is  database connection page 
	
	private static String url="jdbc:mysql://localhost:3306/hotels";
	private static String  username="root";
	private static String password="Nethmi@20007970";
	public static Connection con;
	
	public static Connection getConnection() {
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con =DriverManager.getConnection(url,username,password);
			
		} catch (Exception e) {

            System.out.println("database connection is not success");
		}
		
		return con;
		
		
	}
}
