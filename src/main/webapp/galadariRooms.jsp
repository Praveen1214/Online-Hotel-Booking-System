<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
   
<!DOCTYPE html>
<html>
<head>




<%

	String hotelName = request.getParameter("hotel");
				     
%>





<meta charset="ISO-8859-1">

<link rel="icon" href="images/TitleBarLogo.png" type="image/x-icon">

<link rel="stylesheet" href="css/rooms.css">

<title>Galadari Hotel | Colombo</title>

<style>
	div.table1{
		margin-left: 258px;
	}
	tr.table1{
		background-color:#ffff;
	}
	p.ph1{
		text-align:justify;
		font-size:14px;
		margin:15px;
		position:relative;
		bottom:60px;
	}
	table.sleep{
		border-collapse: collapse;
		border-color: #6fc3ff;
	}
	input[type=submit].reserve{
			background-color: #0071ff;
			border: none;
			color: #fefefe;
			font-size: 20px;
			padding: 10px 25px;
			text-decoration: none;
			cursor: pointer;
			border-radius: 20px;
			position:relative;
			top:15px;
			left:5px;
			margin-left:10px;
			font-weight: 600;
		
		} 
		input[type=submit].reserve:hover{
			transition: 0.2s;
			background-color:#fff;
			color:#0071ff;
			border :solid 1px #0071ff;
			font-weight: 600;
		}
</style>

</head>
<body>
	
		<%@ include file="header.jsp" %>
		
		
		<br><br>
		<div class="table1">
		<h2>Galadari Hotel</h2>
		<p><img src="images/locationIcon.png" width="20">&nbsp;64, Lotus Road, Colombo 1, Fort, 00100 Colombo, Sri Lanka</p>
		<table>
			<tr class="table1">
				<td><img alt="" src="images/GaladariPic.jpg" width=500></td>
				<td width="500"><p class="ph1">You're eligible for a Genius discount at The Galadari Hotel! To save at this property, all you have to do is sign in.

Presenting sweeping views of the Indian Ocean, Galadari Hotel is just 320 metres from Colombo World Trade Centre. With 8 dining options, it also has an outdoor pool and a spa.

Enjoying direct beach access, Galadari Hotel is less than 1 km from local landmarks like Beira Lake and Khan Clock Tower.<br><br> It is 28 km from Bandarainake Airport. Guests who drive enjoy free parking.

The air-conditioned guest rooms at Hotel Galadari have large windows that offer plenty of natural light. Rooms are equipped with a cable TV, tea/coffee making facilities and a personal safe.<br><br>

The Coffee Shop serves a daily buffet breakfast, while the rooftop California Grill offers fresh seafood and steaks. Other dining options include Chinese cuisine at Stix, Arabian food at Sheherezade Restaurant and pastries at Cafe 64. Drinks are available at the hotel's 2 bars and karaoke lounge.

For a refreshing workout, guests can visit the well-equipped fitness centre or enjoy a game of tennis. The Galadari also provides a tour desk and car rentals.</p>

</td>
			</tr>
		</table>
		</div>
		<center><img src="images/fasility1.png" width="1000"></center><br>
		<h3 style="margin-left: 258px">Most popular facilities</h3><br>
		<center><img src="images/fasility2.png" width="1000"></center><br>
		
		<h3 style="margin-left: 258px">Availability</h3><br><br>
		
		<b><p style="margin-left: 258px;color:#0c883d">Arrival date :- </p></b><br>
		<input type="date" name=arrival_date id="arrival_date" required style="border:none;margin-left:260px;width:200px;height:30px;"><br><br>

		<center><table class="sleep" border="1" width="66%">
			<tr style="color:#ffff">
				<th width="300" height="50" style="background-color:#0071ff">Room type</th>
				<th width="100" style="background-color:rgb(0, 78, 172)">Sleeps</th>
				<th width="200" style="background-color:#0071ff">Today's price</th>
				<th width="300" style="background-color:rgb(0, 78, 172)">Your choices</th>
				<th width="100" style="background-color:#0071ff">Select rooms</th>
				<th width="300" style="background-color:#0071ff"></th>
			</tr>
			<tr>
				<td width="300" height="300">
					<b><p style="text-decoration: underline;color:rgb(0, 78, 172);margin-left:20px;position:relative;bottom:100px;">Single Room</p></b>
					<p style="margin-left:20px;position:relative;bottom:90px;font-size:14px;">Bed type assigned at check-in</p>
					<b><p style="margin-left:20px;position:relative;bottom:90px;font-size:14px;color:#d52942">Free WiFi</p></b>
				</td>
				<td width="100" ><img src="images/humanIcon.png"width="20" style="position:relative;bottom:100px;margin-left:20px;"></b></td>
				<td width="200" ><b><p  style="position:relative;bottom:100px;margin-left:20px;">LKR 19,013</p></td>
				<td width="300" >
					<img src="images/Breakfast-Icon.png"width="20" style="margin-left:20px;position:relative;bottom:10px;">&nbsp;<b><p  style="position:relative;bottom:35px;left:48px;font-size:13px;">Good</p></b><p style="font-size:13px;position:relative;left:85px;bottom:52px;">breakfast LKR 3,889</p>
					
					
					  <p style="font-size:12px;margin-left:20px;position:relative;bottom:40px;">Breakfast & dinner included<br>
					  <b><span style="color:#0c883d">Free cancellation</span></b><br>
					  Pay in advance<br>
					  <b><span style="color:#d52942">Dsiscount available</span></b><br>
					  No modifications<br>
					  Confirmed within 2 minutes<br>
					  Can't be combined with other offersS
					
				</td>
				<td width="100" >
					
					<select id="singleRoomSelect" onchange="updateTotal()" style="position:relative;bottom:95px;border:none;">
					    <option value="0">0</option>
					    <option value="1">1 (LKR 19,013)</option>
					    <option value="2">2 (LKR 38,026)</option>
					    <option value="3">3 (LKR 57,039)</option> 
					    <option value="4">4 (LKR 76,052)&nbsp;&nbsp;</option>
					     
					     
  					</select>
  				
					
				</td>
				<td width="300" style="background-color:#ebf3ff">
				
					
				<div>
				    <p style="position:relative;bottom:46px;left:20px;font-size:12px;">Single Rooms: <b><span id="totalSingleRooms" style="color:#0c883d">0</span></b></p>
				    <p style="position:relative;bottom:46px;left:20px;font-size:12px;">Double Rooms: <b><span id="totalDoubleRooms" style="color:#0c883d" >0</span></b></p>
				    <p style="position:relative;bottom:46px;left:20px;font-size:12px;">Total selected rooms: <b><span id="totalRooms" style="color:#d52942" >0</span></b></p>
				</div>
					
					<p style="position:relative;bottom:46px;left:20px;font-size:12px;">Total price:</p>
					<b><div style="margin-left:20px;position:relative;bottom:30px;font-size:18px;">LKR <span id="totalAmount" style="color:#d52942;">0</span></div></b>
					<input type="submit" name="reserve" value="Reserve" class="reserve" onclick="validateAndSubmit();"><br><br>

					<p style="margin-left:20px;font-size:12px;">You'll be taken to the next step</p>
				</td>
				
			</tr>
			<tr>
				<td width="300" height="300">
					<b><p style="text-decoration: underline;color:rgb(0, 78, 172);margin-left:20px;position:relative;bottom:100px;">Double Room</p></b>
					<p style="margin-left:20px;position:relative;bottom:90px;font-size:14px;">Bed type assigned at check-in</p>
					<b><p style="margin-left:20px;position:relative;bottom:90px;font-size:14px;color:#d52942">Free WiFi</p></b>
				</td>
				<td width="100" ><img src="images/humanIcon.png"width="20" style="position:relative;bottom:100px;margin-left:20px;"><img src="images/humanIcon.png"width="20" style="position:relative;bottom:100px;margin-left:5px;"></td>
				<td width="200" ><b><p  style="position:relative;bottom:100px;margin-left:20px;">LKR 41,526</p></td>
				<td width="300" >
					<img src="images/Breakfast-Icon.png"width="20" style="margin-left:20px;position:relative;bottom:10px;">&nbsp;<b><p  style="position:relative;bottom:35px;left:48px;font-size:13px;">Good</p></b> <p style="font-size:13px;position:relative;left:85px;bottom:52px;">breakfast LKR 8,768</p>
					
					
					  <p style="font-size:12px;margin-left:20px;position:relative;bottom:40px;">Breakfast & dinner included<br>
					  <b><span style="color:#0c883d">Free cancellation</span></b><br>
					  Pay in advance<br>
					  <b><span style="color:#d52942">Dsiscount available</span></b><br>
					  No modifications<br>
					  Confirmed within 2 minutes<br>
					  Can't be combined with other offersS
					
				</td>
				
				<td width="100" >
					 <select id="doubleRoomSelect" onchange="updateTotal()" style="position:relative;bottom:95px;border:none;">
					    <option value="0">0</option>
					    <option value="1">1 (LKR 41,526)</option>
					    <option value="2">2 (LKR 83,052)</option>
					    <option value="3">3 (LKR 124,578)</option>
					     
  					</select>
  				
				</td>
				<td width="300" style="background-color:#ebf3ff">
			</tr>
			
		</table></center>
			<br><br><br><br><br><br><br><br><br><br>
			
			
			<script>
			
				  function updateTotal() {
				    
				    var singleRoomSelect = document.getElementById('singleRoomSelect');
				    var singleRoomAmount = singleRoomSelect.value * 19013; 
				
				   
				    var doubleRoomSelect = document.getElementById('doubleRoomSelect');
				    var doubleRoomAmount = doubleRoomSelect.value * 41526; 
				
				   
				    var totalAmount = singleRoomAmount + doubleRoomAmount;
				    		  
				    document.getElementById('totalAmount').innerText = totalAmount;
				    
				    TotalSelectedRooms();
				    
				 
				
				  }
				  
			</script>
			
			<%
			    // Get the session
			    HttpSession session = request.getSession();
			
			    // Get the value of isLoggedIn attribute
			    boolean isLoggedInCheck = session.getAttribute("isLoggedIn") != null && (boolean) session.getAttribute("isLoggedIn");
			%>
			
			<script>
			
    				function validateAndSubmit() {
    					
				        var singleRoomSelect = document.getElementById('singleRoomSelect');
				        var doubleRoomSelect = document.getElementById('doubleRoomSelect');
				        var arrivalDateInput = document.getElementById('arrival_date');
				        
				        
				        var singleRoomAmount = singleRoomSelect.value * 19013;
				        var doubleRoomAmount = doubleRoomSelect.value * 41526;
				        var totalAmount = singleRoomAmount + doubleRoomAmount;
				        
				        var totalSelectedSingleRooms = parseInt(singleRoomSelect.value);
				        var totalSelectedDoubleRooms = parseInt(doubleRoomSelect.value);
				        var totalRooms = totalSelectedSingleRooms + totalSelectedDoubleRooms;
				        
				        var totAmount = totalAmount.toString(10);
				        var totRooms = totalRooms.toString(10);
						

				     	// Use the isLoggedIn value in your script
				        var isLoggedIn = <%= isLoggedInCheck %>;
				            
				      

				        if (isLoggedIn == true) {
				        	
				        	if (!arrivalDateInput.value) {
				        		
				                alert('Please select an arrival date before proceeding.');
				        	}
				        	else{
				        		
				        		if (singleRoomSelect.value == '0' && doubleRoomSelect.value == '0') {
					            	
					                alert('Please select at least one room before proceeding.');
					                
					            } else {
					            	
					            	window.location.href = 'payment.jsp?amount=' + totAmount + '&noofrooms=' + totRooms + '&hotel=' + '<%= hotelName %>' + '&arrival_date=' + document.getElementById('arrival_date').value;

					            }
				        		
				        		
				       	 	}
				        	
				            
				            
				        } else {
				        	
				            alert('You are not logged in. Please log in to proceed.');
				            window.location.href = 'login.jsp';
				        }
				    }
</script>
			
			<script>
			
			    function TotalSelectedRooms() {
			    	
			        var singleRoomSelect = document.getElementById('singleRoomSelect');
			        var doubleRoomSelect = document.getElementById('doubleRoomSelect');
			
			        var totalSelectedSingleRooms = parseInt(singleRoomSelect.value);
			        var totalSelectedDoubleRooms = parseInt(doubleRoomSelect.value);
			
			        document.getElementById('totalSingleRooms').innerText = totalSelectedSingleRooms;
			        document.getElementById('totalDoubleRooms').innerText = totalSelectedDoubleRooms;
			
			        var totalRooms = totalSelectedSingleRooms + totalSelectedDoubleRooms;
			        
			        document.getElementById('totalRooms').innerText = totalRooms;

    			}
			    
			</script>

			
			
			
			
		
			<%@ include file="footer.jsp" %>
			
			

</body>
</html>