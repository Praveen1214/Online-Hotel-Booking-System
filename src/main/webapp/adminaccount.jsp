<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="com.admin.admin"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Hotel Dashboard Template</title>
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.png">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
<link rel="stylesheet"
	href="assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/css/feathericon.min.css">
<link rel="stylesheet" href="assets/plugins/morris/morris.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="assets/css/style.css">


</head>

<body>
	<div class="main-wrapper">
		<div class="header">
			<div class="header-left">
				<a href="index.html" class="logo"> <img
					src="assets/img/hotel_logo.png" width="50" height="70" alt="logo">
					<span class="logoclass">HOTEL</span>
				</a> <a href="index.html" class="logo logo-small"> <img
					src="assets/img/hotel_logo.png" alt="Logo" width="30" height="30">
				</a>
			</div>
			<a href="javascript:void(0);" id="toggle_btn"> <i
				class="fe fe-text-align-left"></i>
			</a> <a class="mobile_btn" id="mobile_btn"> <i class="fas fa-bars"></i>
			</a>
			<ul class="nav user-menu">
				<li class="nav-item dropdown noti-dropdown"><a href="#"
					class="dropdown-toggle nav-link" data-toggle="dropdown"> <i
						class="fe fe-bell"></i> <span class="badge badge-pill">3</span>
				</a>
					<div class="dropdown-menu notifications">
						<div class="topnav-dropdown-header">
							<span class="notification-title">Notifications</span> <a
								href="javascript:void(0)" class="clear-noti"> Clear All </a>
						</div>
						<div class="noti-content">
							<ul class="notification-list">
								<li class="notification-message"><a href="#">
										<div class="media">
											<span class="avatar avatar-sm"> <img
												class="avatar-img rounded-circle" alt="User Image"
												src="assets/img/profiles/avatar-02.jpg">
											</span>
											<div class="media-body">
												<p class="noti-details">
													<span class="noti-title">Carlson Tech</span> has approved <span
														class="noti-title">your estimate</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">4 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="#">
										<div class="media">
											<span class="avatar avatar-sm"> <img
												class="avatar-img rounded-circle" alt="User Image"
												src="assets/img/profiles/avatar-11.jpg">
											</span>
											<div class="media-body">
												<p class="noti-details">
													<span class="noti-title">International Software Inc</span>
													has sent you a invoice in the amount of <span
														class="noti-title">$218</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">6 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="#">
										<div class="media">
											<span class="avatar avatar-sm"> <img
												class="avatar-img rounded-circle" alt="User Image"
												src="assets/img/profiles/avatar-17.jpg">
											</span>
											<div class="media-body">
												<p class="noti-details">
													<span class="noti-title">John Hendry</span> sent a
													cancellation request <span class="noti-title">Apple
														iPhone XR</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">8 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="#">
										<div class="media">
											<span class="avatar avatar-sm"> <img
												class="avatar-img rounded-circle" alt="User Image"
												src="assets/img/profiles/avatar-13.jpg">
											</span>
											<div class="media-body">
												<p class="noti-details">
													<span class="noti-title">Mercury Software Inc</span> added
													a new product <span class="noti-title">Apple MacBook
														Pro</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">12 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
							</ul>
						</div>
						<div class="topnav-dropdown-footer">
							<a href="#">View all Notifications</a>
						</div>
					</div></li>
				<li class="nav-item dropdown has-arrow"><a href="#"
					class="dropdown-toggle nav-link" data-toggle="dropdown"> <span
						class="user-img"><img class="rounded-circle"
							src="assets/img/profiles/avatar-01.jpg" width="31"
							alt="Soeng Souy"></span>
				</a>
					<div class="dropdown-menu">
						<div class="user-header">
							<div class="avatar avatar-sm">
								<img src="assets/img/profiles/avatar-01.jpg" alt="User Image"
									class="avatar-img rounded-circle">
							</div>
							<div class="user-text">
								<h6>Soeng Souy</h6>
								<p class="text-muted mb-0">Administrator</p>
							</div>
						</div>
						<a class="dropdown-item" href="profile.html">My Profile</a> <a
							class="dropdown-item" href="settings.html">Account Settings</a> <a
							class="dropdown-item" href="login.html">Logout</a>
					</div></li>
			</ul>
		</div>
		<div class="sidebar" id="sidebar">
			<div class="sidebar-inner slimscroll">
				<div id="sidebar-menu" class="sidebar-menu">
					<ul>
						<li><a href="indexAdmin.jsp"><i
								class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a></li>
						<li class="list-divider"></li>
						<li class="submenu"><a href="#"><i
								class="fas fa-suitcase"></i> <span> Booking </span> <span
								class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="adduser.jsp"> All Booking </a></li>
								<li><a href="#"> Edit Booking </a></li>
								<li><a href="customerinsert.jsp"> Add Booking </a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i class="fas fa-user"></i>
								<span> Customers </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="all-customer.html"> All customers </a></li>
								<li><a href="edit-customer.html"> Edit Customer </a></li>
								<li><a class="" href="add-customer.html"> Add Customer
								</a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i class="fas fa-key"></i>
								<span> Rooms </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="all-rooms.html">All Rooms </a></li>
								<li><a href="edit-room.html"> Edit Rooms </a></li>
								<li><a href="add-room.html"> Add Rooms </a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i class="fas fa-user"></i>
								<span> Staff </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="all-staff.html">All Staff </a></li>
								<li><a href="edit-staff.html"> Edit Staff </a></li>
								<li><a href="add-staff.html"> Add Staff </a></li>
							</ul></li>


						<li class="submenu"><a href="#"><i class="fas fa-user"></i>
								<span> Employees </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="employees.html">Employees List </a></li>
								<li><a href="leaves.html">Leaves </a></li>
								<li><a href="holidays.html">Holidays </a></li>
								<li><a href="attendance.html">Attendance </a></li>
							</ul></li>



						<li><a href="settings.html"><i class="fas fa-cog"></i> <span>Settings</span></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="page-header mt-5">
					<div class="row">
						<div class="col">
							<h3 class="page-title">Profile</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
								<li class="breadcrumb-item active">Profile</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12"></div>


					<div class="container-fluid">
						<!-- ============================================================== -->
						<!-- Start Page Content -->
						<!-- ============================================================== -->
						<!-- Row -->
						<div class="row">
							<!-- Column -->
							<div class="col-lg-4 col-xlg-3 col-md-5">
								<div class="card">
									<div class="card-body">
										<center class="m-t-30">
											<img src="assets/images/users/5.jpg" class="rounded-circle"
												width="150" />
											<h4 class="card-title m-t-10">Hanna Gover</h4>
											<h6 class="card-subtitle">Accoubts Manager Amix corp</h6>
											<div class="row text-center justify-content-md-center">
												<div class="col-4">
													<a href="javascript:void(0)" class="link"><i
														class="icon-people"></i> <font class="font-medium">254</font>
													</a>
												</div>
												<div class="col-4">
													<a href="javascript:void(0)" class="link"><i
														class="icon-picture"></i> <font class="font-medium">54</font>
													</a>
												</div>
											</div>
										</center>
									</div>
									<div>
										<hr>
									</div>


									<div class="card-body">
										<small class="text-muted">Email address </small>
										<h6>${adm.email}</h6>
										<small class="text-muted p-t-30 db">Phone</small>
										<h6>${adm.phone}</h6>
										<small class="text-muted p-t-30 db">Address</small>
										<h6>71 Pilgrim Avenue Chevy Chase, MD 20815</h6>
										<small class="text-muted p-t-30 db">Social Profile</small> <br />
										<button class="btn btn-circle btn-secondary">
											<i class="fab fa-facebook-f"></i>
										</button>
										<button class="btn btn-circle btn-secondary">
											<i class="fab fa-twitter"></i>
										</button>
										<button class="btn btn-circle btn-secondary">
											<i class="fab fa-youtube"></i>
										</button>
									</div>
								</div>
							</div>
							<!-- Column -->
							<!-- Column -->
							<div class="col-lg-8 col-xlg-9 col-md-7">
								<div class="card">
									<div class="card-body">


										<form class="form-horizontal form-material mx-2">

											<%
											List<admin> adminDetails = (List<admin>) request.getSession().getAttribute("adminDetails");
											String name = (adminDetails != null && !adminDetails.isEmpty()) ? adminDetails.get(0).getName() : "";
											String email = (adminDetails != null && !adminDetails.isEmpty()) ? adminDetails.get(0).getEmail() : "";
											String phone = (adminDetails != null && !adminDetails.isEmpty()) ? adminDetails.get(0).getPhone() : "";
											String username = (adminDetails != null && !adminDetails.isEmpty()) ? adminDetails.get(0).getUserName() : "";
											String password = (adminDetails != null && !adminDetails.isEmpty()) ? adminDetails.get(0).getPassword() : "";
											%>




											<div class="form-group">
												<label class="col-md-12"> Name</label>
												<div class="col-md-12">
													<input type="text" placeholder=<%=name%>
														class="form-control form-control-line">
												</div>
											</div>

											<div class="form-group">
												<label for="example-email" class="col-md-12">Email</label>
												<div class="col-md-12">
													<input type="email" placeholder=<%=email%>
														class="form-control form-control-line"
														name="example-email" id="example-email">
												</div>
											</div>

											<div class="form-group">
												<label class="col-md-12">Username</label>
												<div class="col-md-12">
													<input type="text" placeholder=<%=username%>
														class="form-control form-control-line">
												</div>
											</div>

											<div class="form-group">
												<label class="col-md-12">Password</label>
												<div class="col-md-12">
													<input type="text" value="<%=password%>"
														class="form-control form-control-line">
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-12">Phone No</label>
												<div class="col-md-12">
													<input type="text" placeholder=<%=phone%>
														class="form-control form-control-line">
												</div>
											</div>


											<div class="form-group">
												<div class="col-sm-12">
													<button class="btn btn-success text-white">Update
														Profile</button>
												</div>

											</div>

										</form>


									</div>
								</div>
							</div>
							<!-- Column -->
						</div>


						<script data-cfasync="false"
							src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
						<script src="assets/js/jquery-3.5.1.min.js"></script>
						<script src="assets/js/popper.min.js"></script>
						<script src="assets/js/bootstrap.min.js"></script>
						<script src="assets/js/moment.min.js"></script>
						<script src="assets/js/select2.min.js"></script>
						<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
						<script src="assets/js/bootstrap-datetimepicker.min.js"></script>
						<script src="assets/js/script.js"></script>
</body>

</html>