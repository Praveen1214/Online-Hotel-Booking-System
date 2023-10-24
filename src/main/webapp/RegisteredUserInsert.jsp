<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register new user</title>

<!-- css Part for this page  -->

<style>
body {
	background-color: #cce6ff;
	font-family: Arial, sans-serif;
}

h1 {
	margin-left: 540px;
	margin-top: 100px;
	font-size: 50px;
	color: #007bff;
}

form {
	width: 600px;
	margin: 0 auto;
	text-align: center;
	margin-top: 20px;
	background-color: #ffffff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	margin-bottom: 10px;
}

input {
	width: 80%;
	padding: 10px;
	border: 1px solid #5f9ea0;
	border-radius: 5px;
	margin-bottom: 10px;
}

input[type="submit"] {
	background-color: #007bff;
	color: #fff;
	border: none;
	cursor: pointer;
	padding: 10px 20px;
	border-radius: 5px;
}
</style>

<!-- Form validation when user won't fill any field there will be pop up message  -->

<script>
	function validateForm() {
		var name = document.getElementsByName("name")[0].value;
		var address = document.getElementsByName("address")[0].value;
		var email = document.getElementsByName("email")[0].value;
		var contact_number = document.getElementsByName("contact_number")[0].value;
		var username = document.getElementsByName("username")[0].value;
		var password = document.getElementsByName("password")[0].value;

		if (name === "" || address === "" || email === ""
				|| contact_number === "" || username === "" || password === "") {
			alert("All fields should be filled for the registration");
			return false;
		}
	}
</script>

</head>


<body>


<!-- Registration form after filling this form these values redirect to the servlet page(RegisteredUserInsert.java)  -->
	<h1>
		<b>Registration Form</b>
	</h1>

	<form action="RegisteredUserInsert" method="post"
		onsubmit="return validateForm();">
		<label for="name">Name</label> <input type="text" name="name">

		<label for="address">Address</label> <input type="text" name="address">

		<label for="email">Email</label> <input type="text" name="email">

		<label for="contact_number">Contact Number</label> <input type="text"
			name="contact_number"> <label for="username">Username</label>
		<input type="text" name="username"> <label for="password">Password</label>
		<input type="text" name="password">

		<div style="text-align: center;">
			<input type="submit" name="submit" value="Register">
		</div>
	</form>
</body>
</html>
