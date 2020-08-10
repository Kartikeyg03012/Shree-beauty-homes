<%@page import="java.util.ArrayList"%>
<html>
<%@ include file="header.jsp"%>
<head>
<title>Shree- Contact</title>
<link rel="icon" href="images/main_icon.png" />
<!-- CSS only -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
tr {
	color: rgb(192, 197, 197);
}
</style>


</head>

<body background="images/backimage.png">
	<br>
	<br>
	<div class="container">
		<section class="mb-4">

			<!--Section heading-->
			<h1 style="color: azure">Contact us</h1>
			<hr>
			<br>
			<!--Section description-->
			<h3 style="color: azure; font-size: 20px; float: center">Do you
				have any questions? Please do not hesitate to contact us directly.
				Our team will come back to you within a matter of hours to help you.</h3>
			<br>
			<%
				String msg = (String) request.getAttribute("msg");
				if (msg != null) {
					if (msg == "success") {
						out.print("<h2 style=color:white> We will Inform You Shortly!! </h2>");
					} else {
						out.print("<h2 style=color:red>Something Went Wrong Please Try After Some Time!!!! </h2>");
					}
				}

			%>
			<div class="row">

				<!--Grid column-->
				<div class="col-md-9 mb-md-0 mb-5">
					<form id="contact-form" name="contact-form"
						action="contactController" method="POST">

						<!--Grid row-->
						<div class="row">

							<!--Grid column-->
							<div class="col-md-6">
								<div class="md-form mb-0">
									<label for="name" style="color: azure; font-size: 30px">Your
										name</label> <input type="text" id="name" name="name"
										class="form-control">

								</div>
							</div>
							<!--Grid column-->

							<!--Grid column-->
							<div class="col-md-6">
								<div class="md-form mb-0">
									<label for="email" style="color: azure; font-size: 30px">Your
										Number</label> <input type="text" id="email" pattern="^(\+91[\-\s]?)?[0]?(91)?[6789]\d{9}$" name="number"
										class="form-control">

								</div>
							</div>
							<!--Grid column-->

						</div>
						<!--Grid row-->

						<!--Grid row-->
						<div class="row">
							<div class="col-md-12">
								<div class="md-form mb-0">
									<label for="subject" style="color: azure; font-size: 30px">Subject</label>
									<input type="text" id="subject" name="subject"
										class="form-control">
								</div>
							</div>
						</div>
						<!--Grid row-->

						<!--Grid row-->
						<div class="row">

							<!--Grid column-->
							<div class="col-md-12">

								<div class="md-form">
									<label for="message" style="color: azure; font-size: 30px">Your
										message</label>
									<textarea type="text" id="message" name="message" rows="2"
										class="form-control md-textarea"></textarea>

								</div>

							</div>
						</div>
						<!--Grid row-->

					</form>

					<div class="text-center text-md-left">
						<a class="btn btn-primary"
							onclick="document.getElementById('contact-form').submit();">Send</a>
					</div>
					<div class="status"></div>
				</div>
		</section>

	</div>
	<%@ include file="footer.jsp"%>
</body>

</html>