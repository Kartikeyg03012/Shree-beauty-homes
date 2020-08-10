package shree.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shree.Model.ShreeSalonModel;


@WebServlet("/contactController")
public class contactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name,number,subject,message;
		name=request.getParameter("name");
		number=request.getParameter("number");
		subject=request.getParameter("subject");
		message =request.getParameter("message");
		
		ShreeSalonModel ssm =new ShreeSalonModel();
		int i=ssm.checkduplicatevalueforcontactus(number);
		if(i==0) {
		 Object o= ssm.contact(name, number, subject, message);
		 RequestDispatcher rd = request.getRequestDispatcher("contact.jsp");
		if (o != null) {
			request.setAttribute("msg", "success");
			rd.forward(request, response);
		}else{
			request.setAttribute("msg", "fail");
			rd.forward(request, response);
		}
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("contact.jsp");
			request.setAttribute("msg", "fail");
			rd.forward(request, response);
			
		}
	}

}
