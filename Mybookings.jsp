<%@page import="java.awt.print.Book"%>
<%@page import="shree.DAO.BookDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shree-My Bookings</title>
</head>
<%@ include file="adminHeader.jsp"%>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2>My Bookings</h2>
			<hr>
		</div>
	
		<%
			String msg = (String) request.getAttribute("msg");
			if (msg != null) {
				if (msg == "success") {
					out.print("<h4 style=color:green> Successful </h4>");
				} else {
					out.print("<h4 style=color:red>  Failed </h4>");
				}
			}
		%>
		
		<%
			ArrayList<BookDAO> list = (ArrayList<BookDAO>) request.getAttribute("list");
			int i = 1;
			
			
		%>
		<table class="table table-hover" border="1px">
			<thead class="table-dark">
				<tr>
					<th scope="col">SNo.</th>
					<th scope="col">Name</th>
					<th scope="col">Contact_No</th>
					<th scope="col">Services</th>
					<th scope="col">Address</th>
					<th scope="col">Date of Booking</th>
					<th scope="col">Persons</th>
					<th scope="col"></th>
					<th scope="col"></th>
				</tr>
			</thead>
			<%
				for (BookDAO bd : list) {
			%>
			<tr>
				<td>
					<%
						out.print(i);
					%>
				</td>
				<td><%=bd.getName()%></td>
				<td><%=bd.getContact()%></td>
				<td><%=bd.getServices()%></td>
				<td><%=bd.getAddress()%></td>
				<td><%=bd.getCity()%></td>
				<td><%=bd.getPerson()%></td>
				
				<td><a href="UpdateController?empup=<%=bd.getContact()%>" class="btn btn-primary">UPDATE</a></td>
				<td><a href="DeleteController?empid=<%=bd.getContact()%>" class="btn btn-danger"
					onclick= " return confirm('Are you Sure Want to Delete this Record')">DELETE</a></td>


				<%
					i++;
				
				}
				%>
			</tr>

			</tbody>
		</table><br>
<center>

<a href="GetEmpDataController?value=previous"><button type="button" class="btn btn-outline-info"> << Previous</button></a>&nbsp;&nbsp;&nbsp;
<a href="GetEmpDataController?value=1"><button type="button" class="btn btn-outline-info"> 1</button></a>&nbsp;&nbsp;&nbsp;
<a href="GetEmpDataController?value=2"><button type="button" class="btn btn-outline-info"> 2</button></a>&nbsp;&nbsp;&nbsp;
<a href="GetEmpDataController?value=3"><button type="button" class="btn btn-outline-info"> 3</button></a>&nbsp;&nbsp;&nbsp;
<a href="GetEmpDataController?value=next"><button type="button" class="btn btn-outline-info">NEXT >></button></a>
<br><br><br>
</center>
	</div>

</body>
</html>