<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Hotel Details</title>

<!-- CSS part for the page -->
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #cce6ff; /* Light Blue Background */
        margin: 0;
        padding: 0;
    }

    h1 {
        text-align: center;
        margin-bottom: 20px;
        color: #007bff;
        font-size: 36px; /* Larger Font Size */
    }

    form {
        max-width: 600px; /* Increased Form Size */
        margin: 0 auto;
        padding: 30px; /* Increased Padding */
        background: #fff;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }

    form label {
        display: block;
        margin-bottom: 10px;
        color: #333;
        font-weight: bold;
    }

    form input[type="text"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px; /* Larger Font Size */
    }

    form input[type="submit"] {
    width: 150px; /* Set a specific width for the button */
    display: block;
    margin: 0 auto; /* Center the button horizontally */
    background: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 15px;
    cursor: pointer;
    transition: background 0.3s ease;
    font-size: 18px; /* Larger Font Size */
    }

    form input[type="submit"]:hover {
        background: #0056b3;
    }
</style>
</head>
<body>

<h1>Update Hotel Details</h1>

<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String location = request.getParameter("location");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String web = request.getParameter("web");
%>

<!--Hotel Update Form -->

<form action="update" method="post">
    <label for="id">Hotel ID</label>
    <input type="text" name="id" id="id" value="<%= id %>" readonly> <br>
    <label for="name">Hotel Name</label>
    <input type="text" name="name" id="name" value="<%= name%>"> <br>
    <label for="location">Location</label>
    <input type="text" name="location" id="location" value="<%= location %>"> <br>
    <label for="email">Email</label>
    <input type="text" name="email" id="email" value="<%=email %>"> <br>
    <label for="phone">Contact Number</label>
    <input type="text" name="phone" id="phone" value="<%= phone%>"> <br>
    <label for="web">Hotel Web Site</label>
    <input type="text" name="web" id="web" value="<%= web%>"> <br>

    <input type="submit" name="submit" value="Update Hotel">
</form>

<!--Front-End Validations -->

	     <script>
        document.querySelector("form").addEventListener("submit", function (event) {
            var phoneInput = document.getElementById("phone").value;
            var phoneRegex = /^\d{10}$/; // Phone number validation : 10-digit phone number pattern

            if (!phoneRegex.test(phoneInput)) {
                alert("Please enter a valid 10-digit phone number.");
                event.preventDefault(); // If invalid phone number : Prevent form submission
            } else {
                alert("Updation successful!"); // Show alert for successful registration
            }
        });
    </script>
	

</body>
</html>
