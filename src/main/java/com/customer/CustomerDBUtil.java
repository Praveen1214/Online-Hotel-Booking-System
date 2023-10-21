package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String userName , String password){
		
		
		try {
			
			con = DBConnect.getConnection();
			stat = con.createStatement();
			
			String sql = "select * from bookinglk.customer where Username='"+userName+"' and Password='"+password+"'";
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				
				isSuccess = true;
				
			}
			else {
				
				isSuccess = false;
				
			}
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static List<Customer> getCustomerDetails(String username){
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stat = con.createStatement();
			
			String sql = "select * from bookinglk.customer where Username='"+username+"'";
			rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userName = rs.getString(5);
				String password = rs.getString(6);
				
				Customer customer = new Customer(id, name, email, phone, userName, password);
			    cus.add(customer);
			    
			    	
			}
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return cus;
	}
	
	
	 public static boolean insertPaymentDetails(String crdno, String crdholder,String expmounth, String expyear, String cvv) {
	  
		 isSuccess = false;
		 
		 
		 try {
		 
		 con = DBConnect.getConnection(); 
		 stat = con.createStatement();
		 
		 String sql = "insert into bookinglk.payment values (0,'"+crdno+"','"+crdholder+"', '"+expmounth+"','"+expyear+"','"+cvv+"')";
		 int rs = stat.executeUpdate(sql);
		 
		 if(rs > 0) {
			 
			 isSuccess = true;
		 }
		 else {
			 
			 isSuccess = false;
			 		 
		 }
		 
		 } catch (Exception e) {
		 
		 e.printStackTrace(); }
		 
		 return isSuccess; 
		 
	 }
		
	 
	 public static List<Payment> getPaymentDetails(String cno){
		 
		 ArrayList<Payment> pay = new ArrayList<>();
		 
		 
		 try {
			 
			con = DBConnect.getConnection();
			stat = con.createStatement();
			
			String sql = "select * from bookinglk.payment where card_no='"+cno+"'";
			rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				
				String cnum = rs.getString(1);
				String cholder = rs.getString(2);
				String exm = rs.getString(3);
				String exy = rs.getString(4);
				String cvv = rs.getString(5);
				
				Payment p = new Payment(cnum,cholder,exm,exy,cvv);
				pay.add(p);
				
				
			}
		 }
		 catch(Exception e) {
			 
			 e.printStackTrace();
		 }
		 
		 return pay;
	 }
	 
	 public static boolean insertReservationDetails(String cname, String cemail, String hotelname, String noofrooms,String arrival_date, String price, String crdno, String crdholder) {
		 
		 isSuccess = false;
		 
		 try {
			 
			 con = DBConnect.getConnection(); 
			 stat = con.createStatement();
			 
			 String sql = "insert into bookinglk.reservation values (0,'"+cname+"','"+cemail+"','"+hotelname+"','"+noofrooms+"','"+arrival_date+"','"+price+"','"+crdno+"','"+crdholder+"')";
			 int rs = stat.executeUpdate(sql);
			 
			 if(rs > 0) {
				 
				 isSuccess = true;
				 
			 }
			 else {
				 
				 isSuccess = false;
			 }
		 }
		 catch(Exception e) {
			 
			 e.printStackTrace();
		 }
		 
		 return isSuccess;
	 }
	 
	 public static List<Reservation> getReservationDetails(String cusname) {
		 
		    ArrayList<Reservation> res = new ArrayList<>();

		    try {
		        con = DBConnect.getConnection();
		        stat = con.createStatement();

		        String sql = "select * from bookinglk.reservation where customer_name='" + cusname + "'";
		        rs = stat.executeQuery(sql);

		        while (rs.next()) {
		        	String id = rs.getString(1);
		            String cname = rs.getString(2);
		            String cemail = rs.getString(3);
		            String hotel = rs.getString(4);
		            String noofrooms = rs.getString(5);
		            String arrival_date = rs.getString(6);
		            String price = rs.getString(7);
		            String crdno = rs.getString(8);
		            String crdholder = rs.getString(9);

		            Reservation reservation = new Reservation(id,cname, cemail, hotel, noofrooms,arrival_date, price, crdno, crdholder);
		            res.add(reservation);

		            System.out.println(res); // This line is for debugging, you can remove it

		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return res;
		}
	 
	 public static boolean deleteReservationDetails(String cid) {
		 
		 
		 try {
			 
			 	con = DBConnect.getConnection();
		        stat = con.createStatement();
		        
		        String sql = "delete from bookinglk.reservation where RID='"+cid+"'";
		        int rs = stat.executeUpdate(sql);
		        
		        String sql2 = "delete from bookinglk.payment where idpayment='"+cid+"'";
		        int rs2 = stat.executeUpdate(sql2);
		        
		        if(rs > 0 && rs2 > 2) {
					
					isSuccess = true;
				}
				else {
					
					isSuccess = false;
				}

				
			}
			catch(Exception e) {
				
				e.printStackTrace();
			}
		 
		 return isSuccess;
	 }

	 
public static boolean updateReservationDetails(String id,String name, String email, String hotelname, String noofrooms, String arrivaldate, String amount,String cardno,String cardholder) {
		 
		 try {
			 
			 	con = DBConnect.getConnection();
		        stat = con.createStatement();
			 
		        String sql = "update bookinglk.reservation set customer_name='"+name+"',customer_email='"+email+"',hotel_name='"+hotelname+"',no_of_rooms='"+noofrooms+"',arrival_date='"+arrivaldate+"',amount='"+amount+"',card_no='"+cardno+"',card_holder='"+cardholder+"'"
		        		+ "where RID='"+id+"'";
		        int rs = stat.executeUpdate(sql);
		        
		        if(rs > 0) {
					
					isSuccess = true;
				}
				else {
					
					isSuccess = false;
				}
		 }
		 
		 catch(Exception e) {
			 
			 e.printStackTrace();
		 }
		 return isSuccess;
	 }
}
	 
	
	

