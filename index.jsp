<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="images/main_icon.png" />
<meta charset="utf-8">
<title>Shree-Registration Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- MATERIAL DESIGN ICONIC FONT -->
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

<!-- STYLE CSS -->
<link rel="stylesheet" href="css/style.css">
</head>

<body>

	<div class="container"
		style="background-image: url('images/bg-registration-form-1.jpg');">
	
	<center>
	<h1>Welcome To Shree Home Beauty Services</h1><br>
	<h2>Register Here</h2>
	</center><hr>
	<br>
	
		<div class="inner">
			<div class="image-holder">
				<img src="images/registration-form-1.jpg" alt="">
			</div>
			<form action="UserRegsCtrl" method="post">
			<%
			String msg = (String) request.getAttribute("msg");
			if (msg != null) {
				if (msg == "success") {
					out.print("<h2 style=color:green> Successfully Registered </h2><br><p>Go and Login</p>");
				} else {
					out.print("<h2 style=color:red>Registration Failed Please Try With Another Username !!!! </h2>");
				}
			}
		
		
	%>  
				<h3>Registration Form</h3>
				
				<div class="form-group">
					<input type="text" placeholder="Full name" class="form-control"
						name="name" required> <input type="tel"
						placeholder="Contact No"
						pattern="^(\+91[\-\s]?)?[0]?(91)?[6789]\d{9}$"
						class="form-control" name="number" required>
				</div>
				<div class="form-wrapper">
					<input type="text"
						placeholder="Username"
						class="form-control" name="uname" required> <i
						class="zmdi zmdi-account"></i>
				</div>
				<div class="form-wrapper">
					<input type="text" placeholder="Email Address" class="form-control"
						name="email" required> <i class="zmdi zmdi-email"></i>
				</div>
				<div class="form-wrapper">
					<input type="text" placeholder="Aadhar number "
						class="form-control" name="aadhar" maxlength="12" minlength="12"
						required>
				</div>
				<div class="form-wrapper">
					<select class="form-control" name="gender" required>
					<option value="nil">Select Gender</option>
					<option value="male">Male</option>
					<option value="female">Female</option>
					</select>
				</div>

				<div class="form-wrapper">
					<input type="password" placeholder="Password" class="form-control"
						name="pass" id="myInput" minlength="6" required> 
						<input type="checkbox" onclick="myFunction()">Show Password
				</div>
				<script>
					function myFunction() {
						var x = document.getElementById("myInput");
						if (x.type === "password") {
							x.type = "text";
						} else {
							x.type = "password";
						}
					}
				</script>
				<button type="submit">
					Register <i class="zmdi zmdi-arrow-right"></i>
				</button>
				<a href="userLogin.jsp" style="text-decoration: none; color: white"><button>
						Already Have an Account Sign in <i class="zmdi zmdi-arrow-right"></i></a>
				</button>
			</form>
		</div>
	</div>

</body>
</html>