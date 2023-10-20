<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="com.admin.admin"%> 
<%@ page import="java.util.List" %>


<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="dist/css/header.css"> 

<% 
    boolean isLoggedIn = (request.getSession(false) != null && request.getSession().getAttribute("isLoggedIn") != null);
	
	List<admin> cusDetails = (List<admin>) request.getSession().getAttribute("adminDetails");
	String adminName = (cusDetails != null && !cusDetails.isEmpty()) ? cusDetails.get(0).getName() : "";
%> 



</head>
<body>

	<header>
		<div class="logo">
			<img src="images/Logo.png" class="logo">
		</div>
		<input type="checkbox" id="nav_check" hidden>
		<nav>
			<ul>
				<li>
					<a href="index.jsp" class="active">Home</a>
				</li>
				<li>
					<a href="#">Packages</a>
				</li>
	
					<% if(isLoggedIn){ %>
  					
  					
    				<c:forEach var="cus" items="${adminDetails}">
    				
    					<c:set var="id" value="${cus.id}"/>
						<c:set var="name" value="${cus.name}"/>
						<c:set var="email" value="${cus.email}"/>
						<c:set var="phone" value="${cus.phone}"/>
						<c:set var="username" value="${cus.username}"/>
						<c:set var="password" value="${cus.password}"/>
						
					</c:forEach>
						<li>
							<a href="#" style="color:#0071ff">Welcome, <%= adminName %>
							&nbsp;&nbsp;<img alt="profile" src="images/profilepic.png" width="20"></a>
						</li>
						<form action="logout" method="post" class="logout-form">
							<input type="submit" value="Logout" name="logout" style="color: #212526;
																							display: block;
																							margin: 0 2px;
																							font-weight: 600;
																							padding: 8px 18px;
																							transition: 0.2s;
																							border-radius: 30px;
																							border: none;">
																							
																							<style>
																							    input[type="submit"]:hover {
																							    background-color: #0071ff;
																							    border: none;			  
																							    }
																							</style>
						</form>
       
					<% } else { %>
					
					 <li>
                        <a href="#">Register</a>
                    </li>
                    <li>
                        <a href="login.jsp">Login</a>
                    </li>
   
					<% } %>
			</ul>
		</nav>
		<label for="nav_check" class="hamburger">
			<div></div>
			<div></div>
			<div></div>
		</label>	
	</header>
	
</body>
</html>