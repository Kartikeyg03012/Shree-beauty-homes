<%@page import="shree.DAO.BookDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Softvin- Employee Update</title>
</head>
<%@ include file="adminHeader.jsp"%>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2>Update Data</h2>
			<hr>
		</div>
		<%
			String msg = (String) request.getAttribute("msg");
			if (msg != null) {
				out.println("<h2 style=color:blue>" + msg + "</h2>");
			}
			//response.sendRedirect("StudentDetailsServlet");

			BookDAO ee = (BookDAO) request.getAttribute("STD");
		%>
	
		<form action="UpdateController" method="post">
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Name</label>
				<div class="col-sm-10">
					<input type="text" class="form-control"
						placeholder="Enter your Full Name" value="<%=ee.getName()%>"
						name="name" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Contact Number</label>
				<div class="col-sm-10">
					<input type="tel" class="form-control" pattern="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"
						placeholder="Enter your number" name="number"
						value="<%=ee.getContact()%>" Readonly="readonly">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Services</label>
				<div class="col-sm-10">
					<input type="text" class="form-control"
						placeholder="Enter your Designation" name="services"
						value="<%=ee.getServices()%>" required>
				</div>

			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Address</label>
				<div class="col-sm-10">
					<input type="text" class="form-control"
						placeholder="Enter your Designation" name="address"
						value="<%=ee.getAddress()%>" required>
				</div>

			</div>
			
				<div class="form-group row">
				<label class="col-sm-2 col-form-label">City</label>
				<div class="col-sm-10">
					<input type="text" class="form-control"
						placeholder="Enter Softvin-id" name="city"
						value="<%=ee.getCity()%>" required>
				</div>

			</div>
				<div class="form-group row">
				<label class="col-sm-2 col-form-label">Persons</label>
				<div class="col-sm-10">
					<input type="number" class="form-control"
						placeholder="Enter your Salary" name="persons"
						value="<%=ee.getPerson()%>" required>
				</div>
			</div>
			  <button type="submit" class="btn btn-primary ">Update</button>&nbsp;
      <button type="submit" class="btn btn-danger" onclick="form.reset();">Reset</button>
		</form>
		<br><br>
	</div>

</body>
</html>