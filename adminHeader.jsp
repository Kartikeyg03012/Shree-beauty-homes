<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%response.setHeader("Pragma","no-cache"); 
	response.addHeader("cache-control", "no-store");
	response.addHeader("expired", "0"); %>

<link rel="icon" href="images/main_icon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
 <a class="navbar-brand" href="#">
    <img src="images/main_icon.png" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy">
    <h style="font-family:Algerian; font-size:25px">Shree Beauty Home Services</h>
  </a>
  <a class="navbar-brand" href="adminHome.jsp">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="GetEmpDataController">My Bookings <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="messageController">My Message<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="showadminCtrl">Show Admin <span class="sr-only">(current)</span></a>
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="ShowuseradminCtrl">Show Users <span class="sr-only">(current)</span></a>
      </li>     
    </ul>
  <div style="float:right">
        <a class="nav-link" href="Logout"><button class="btn btn-outline-danger">Logout</button> <span class="sr-only">(current)</span></a>
    	</div>  
   
  </div>
  </nav><br>
  <div class="container">
		<%
			String s = (String) session.getAttribute("expired");
			if (s != null) {
				out.print("<marquee width=500 height=60><h2 style=color:#DAF7A6> Welcome " + s + " ,</h2></marquee>");
			} else {
				response.sendRedirect("adminlogin.jsp");
			}
		%>
	</div>

</body>
</html>