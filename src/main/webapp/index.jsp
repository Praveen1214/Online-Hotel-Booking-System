<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<<<<<<< Updated upstream
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
=======
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
>>>>>>> Stashed changes
       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" href="images/TitleBarLogo.png" type="image/x-icon">


<link rel="stylesheet" href="css/index.css">


<title>Booking.lk | Official site | Online hotel reservation site</title>

</head>
<body>
	
	
	<%@ include file="header.jsp" %>
	
		
	<img src="images/HomePic.jpg" class="HomePic">
	<div class="HomePicDiscription"><p class="Discription">Book Your Perfect Stay</p>
	<a href="hotel.jsp" class="srchHotel" style="position: relative;
										left: 680px;
										bottom: 45px;">Search Hotel</a></div>
										
										<style>
											.srchHotel{
												font-weight: 600;
												transition: 0.2s;
											}
											.srchHotel:hover{
												transition: 0.2s;
												background-color:#fff;
												color:#0071ff;
											}
										</style>
										
										
										

	<div class="T1">
		<b><p class="topic1">Trending Destinations</p></b>
		<p class="topic1_1">&nbsp;Travellers searching for Sri Lanka also booked these</p>
	</div>
	
	<table  class="desTable1">
		<tr>
			<th><a href="hotel.jsp"><img src="images/colombo.png" width="550"></a></th>
			<th><a href="hotel.jsp"><img src="images/kandy.png" width="550"></a></th>
		</tr>
	</table>
	<table  class="desTable2">
		<tr>
			<th><a href="hotel.jsp"><img src="images/ella.png" width="370"></a></th>
			<th><a href="hotel.jsp"><img src="images/negambo.png" width="370"></a></th>
			<th><a href="hotel.jsp"><img src="images/galle.png" width="370"></a></th>
		</tr>
	</table>
	
	<div class="T2">
		<b><p class="topic2">Looking for the perfect stay?</p></b>
		<p class="topic2_1">Travellers with similar searches booked these properties</p>
	</div>
	<table class="hotelsTable1">
		<tr>
			<th>
				<a href="galadariRooms.jsp"><img src="images/galadari.png" width="370"></a>
				<div class="hotelnames">
					<p class="hotelname">The Galadari Hotel</p>
					<p class="loc">Colombo, Sri Lanka</p>
					<p><span class="s">starting from</span> LKR 19,013</p>
				</div>
			</th>
			<th>
				<a href="#"><img src="images/hilton.png" width="370"></a>
				<div class="hotelnames">
					<p class="hotelname">Hilton Hotel</p>
					<p class="loc">Colombo, Sri Lanka</p>
					<p><span class="s">starting from</span> LKR 17,688</p>
				</div>
			</th>
			<th>
				<a href="#"><img src="images/sra-la.png" width="370"></a>
				<div class="hotelnames">
					<p class="hotelname">Shangri La Hotel</p>
					<p class="loc">Colombo, Sri Lanka</p>
					<p><span class="s">starting from</span> LKR 34,914</p>
				</div>
			</th>
		</tr>
	</table>
	
	
			
	

	
	
	<%@ include file="footer.jsp" %>
	
	
	
</body>
</html>
