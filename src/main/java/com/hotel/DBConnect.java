// Data base connection file

package com.hotel;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnect {
	
	private static String url= "jdbc:mysql://localhost:3306/hotels";
	private static String username = "root";          // Database user name 
	private static String password = "KTK2000rk";     // Data base password
	private static Connection con;
	
	public static Connection getConnection() {
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
		}
		catch(Exception e)
		{
			System.out.println("Database connection is not success!");
		}
		return con;
	}

}