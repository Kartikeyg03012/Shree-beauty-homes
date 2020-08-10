package shree.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import shree.DAO.BookDAO;
import shree.Model.ShreeSalonModel;


@WebServlet("/bookController")
public class bookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		
		String name,contact,services,address,city;
		name=request.getParameter("name");
		contact=request.getParameter("contact");
		services=request.getParameter("services");
		address=request.getParameter("address");
		city=request.getParameter("city");
		int person= Integer.parseInt(request.getParameter("persons"));
		ShreeSalonModel ssm =new ShreeSalonModel();
		int i=ssm.checkduplicatevalueforbook(contact);
		if(i==0) {
		 Object o= ssm.book(name, contact, services, address, city, person);
		 RequestDispatcher rd = request.getRequestDispatcher("booknow.jsp");
		if (o != null) {
			request.setAttribute("msg", "success");
			rd.forward(request, response);
		}else {
			request.setAttribute("msg", "fail");
			rd.forward(request, response);
		}

		}else {
			RequestDispatcher rd = request.getRequestDispatcher("booknow.jsp");
			request.setAttribute("msg", "fail");
			rd.forward(request, response);
		}
	}

}
