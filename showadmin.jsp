
<%@page import="shree.DAO.AdminLogin"%>
<%@page import="java.awt.print.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shree-Admins</title>
</head>
<%@ include file="adminHeader.jsp"%>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2>My Admins</h2>
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
			ArrayList<AdminLogin> list = (ArrayList<AdminLogin>) request.getAttribute("list");
			int i = 1;
			
			
		%>
		<table class="table table-hover" border="1px">
			<thead class="table-dark">
				<tr>
					<th scope="col">SNo.</th>
					<th scope="col">id</th>
					<th scope="col">PAssword</th>
				</tr>
			</thead>
			<%
				for (AdminLogin bd : list) {
			%>
			<tr>
				<td>
					<%
						out.print(i);
					%>
				</td>
				<td><%=bd.getId()%></td>
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