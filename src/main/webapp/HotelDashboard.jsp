<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Hotel Reservation System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #add8e6 url(https://hotelenglishpoint.com/blog/wp-content/uploads/2021/02/epm-scaled.jpg) center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            text-align: center;
            color: #fff;
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            min-height: 100vh;
        }

        h1 {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #007bff; /* Blue background color */
            color: #fff;
            margin: 0;
            padding: 20px 0; /* Adjust the top and bottom padding as needed */
            text-align: center;
        }

        .dashboard ul {
            list-style: none;
            padding: 0;
            display: flex;
            justify-content: center;
        }

        .dashboard li {
            margin: 0 10px;
        }

        .dashboard a {
            text-decoration: none;
            color: #fff;
            font-size: 18px;
            padding: 10px 20px;
            background-color: #007bff; /* Blue button color */
            border: none; /* Remove button border */
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .dashboard a:hover {
            background-color: #0056b3; /* Darker blue button color on hover */
        }
    </style>
</head>

<body>
	
<!-- Heading -->

	<h1>Welcome to Booking.lk Hotel Reservation System</h1>
   
    <div class="dashboard">
        <ul>
            <li><a href="HotelInsert.jsp">Manage Hotel Registration Details</a></li>
            <li><a href="viewAvailableRooms.jsp">View Available Rooms</a></li>
            <li><a href="makeReservation.jsp">Make a Reservation</a></li>
            <li><a href="viewReservations.jsp">View My Reservations</a></li>
            <li><a href="cancelReservation.jsp">Cancel My Reservation</a></li>
            <li><a href="HotelDetails.jsp">View Hotel details</a></li>
            
        </ul>
    </div>
</body>
</html>
