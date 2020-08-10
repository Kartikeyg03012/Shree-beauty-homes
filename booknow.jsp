<%@page import="java.util.ArrayList"%>
<html>
<%@ include file="header.jsp"%>
<head>
  <title> Shree -Book Now</title>
  <link rel="icon" href="images/main_icon.png" />
  <!-- CSS only -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <!-- JS, Popper.js, and jQuery -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
    integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
    crossorigin="anonymous"></script>


  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>


</head>

<body background="images/backimage.png">
  
  <br><br>
  <div class="container">
    
      <h1  style="color:azure">Online Appoinment</h1>
    <hr>
    <br>
    <%
			String msg = (String) request.getAttribute("msg");
			if (msg != null) {
				if (msg == "success") {
					out.print("<h2 style=color:white> Successfully Booked </h2>");
				} else {
					out.print("<h2 style=color:red>Booking Failed Please Try With Another Number !!!! </h2>");
				}
			}
		
		
	%>   
    <form action="bookController" method="POST">
      <div class="form-row">
        <div class="form-group col-md-12">
          <label for="inputname" style="color:azure;font-size:30px">Name</label>
          <input type="text" class="form-control" id="inputname" placeholder="Enter Your Name" name="name" required>
        </div>
      </div>
      <div class="form-group">
        <label for="inputcontact" style="color:azure;font-size:30px">Contact No. </label>
        <input type="tel" class="form-control" id="inputcontact" pattern="^(\+91[\-\s]?)?[0]?(91)?[6789]\d{9}$" placeholder="Enter Your contact" name="contact"
          required>
      </div>
      
      <div class="form-group" style="color:azure">
        <label for="inputcontact" style="color:azure;font-size:30px">Looking For</label>
        <input type="text" class="form-control" id="inputcontact" placeholder="Enter Services (if more than one seprate it with ,)  " name="services"
          required>Don't know<a href="services.jsp"> click here </a>
      </div>
     
     
      <div class="form-group">
        <label for="inputAddress" style="color:azure;font-size:30px">Address</label>
        <input type="text" class="form-control" id="inputAddress" placeholder="Enter Your Address" name="address"
          required>

      </div>
      <div class="form-row">
        <label for="inputCity" style="color:azure;font-size:30px">Date Of Booking</label>
        <input type="date" class="form-control" id="inputCity" placeholder=" Enter Date of booking" name="city" required>
      </div>
      <div class="form-row">
        <label for="inputprice" style="color:azure;font-size:30px">Persons</label>
        <input type="text" class="form-control" id="inputperson" placeholder=" Enter how many persons" name="persons"
          required>
      </div>


      <br>

      <button type="submit" class="btn btn-primary ">Book Now</button>&nbsp;
      <button type="submit" class="btn btn-danger" onclick="form.reset();">Reset</button>
    </form>
  </div>
  <%@ include file="footer.jsp" %>
  </body>

</html>