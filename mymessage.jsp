
<%@page import="shree.DAO.contactDAO"%>
<%@page import="java.awt.print.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shree-Messages</title>
</head>
<%@ include file="adminHeader.jsp"%>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2>My Messages</h2>
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
			ArrayList<contactDAO> list = (ArrayList<contactDAO>) request.getAttribute("list");
			int i = 1;
			
			
		%>
		<table class="table table-hover" border="1px">
			<thead class="table-dark">
				<tr>
					<th scope="col">SNo.</th>
					<th scope="col">Name</th>
					<th scope="col">Contact_No</th>
					<th scope="col">Subject</th>
					<th scope="col">Message</th>
					
				</tr>
			</thead>
			<%
				for (contactDAO bd : list) {
			%>
			<tr>
				<td>
					<%
						out.print(i);
					%>
				</td>
				<td><%=bd.getName()%></td>
				<td><%=bd.getNumber()%></td>
				<td><%=bd.getSubject()%></td>
				<td><%=bd.getMessage()%></td>
				

				<%
					i++;
				
				}
				%>
			</tr>

			</tbody>
		</table><br>
<center>

<a href="#"><button type="button" class="btn btn-outline-info"> << Previous</button></a>&nbsp;&nbsp;&nbsp;
<a href="#"><button type="button" class="btn btn-outline-info"> 1</button></a>&nbsp;&nbsp;&nbsp;
<a href="#"><button type="button" class="btn btn-outline-info"> 2</button></a>&nbsp;&nbsp;&nbsp;
<a href="#"><button type="button" class="btn btn-outline-info"> 3</button></a>&nbsp;&nbsp;&nbsp;
<a href="#"><button type="button" class="btn btn-outline-info">NEXT >></button></a>
<br><br><br>
</center>
	</div>

</body>
</html>