<%@page import="shree.DAO.UserDAO"%>
<%@page import="java.awt.print.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shree-Show User</title>
</head>
<%@ include file="adminHeader.jsp"%>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2>Users Details</h2>
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
			ArrayList<UserDAO> list = (ArrayList<UserDAO>) request.getAttribute("list");
			int i = 1;
			
			
		%>
		<table class="table table-hover" border="1px">
			<thead class="table-dark">
				<tr>
					<th scope="col">SNo.</th>
					<th scope="col">Name</th>
					<th scope="col">Contact</th>
					<th scope="col">Email</th>
					<th scope="col">Gender</th>
					<th scope="col">Aadhar No.</th>
					<th scope="col">Username</th>
					<th scope="col">Password</th>
				</tr>
			</thead>
			<%
				for (UserDAO bd : list) {
			%>
			<tr>
				<td>
					<%
						out.print(i);
					%>
				</td>
				<td><%=bd.getName()%></td>
				<td><%=bd.getContact()%></td>
				<td><%=bd.getEmail()%></td>
				<td><%=bd.getGender()%></td>
				<td><%=bd.getAadhar()%></td>
				<td><%=bd.getUname()%></td>
				<td><%=bd.getPass()%></td>
				
				
	

				<%
					i++;
				
				}
				%>
			</tr>

			</tbody>
		</table><br>
<center>

<br><br><br>
</center>
	</div>

</body>
</html>