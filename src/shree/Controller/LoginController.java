package shree.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import shree.DAO.AdminLogin;
import shree.Model.ShreeSalonModel;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		String id=request.getParameter("uname");
		String pass= request.getParameter("pass");
		
		HttpSession session =request.getSession();
		session.setMaxInactiveInterval(10000);
		session.setAttribute("expired", id);
		
		
		AdminLogin al= new AdminLogin();
		ShreeSalonModel shree=new ShreeSalonModel();
		int i=shree.checklogin(id,pass);
	
		if (i != 0) {
			response.sendRedirect("adminHome.jsp");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("adminlogin.jsp");
			request.setAttribute("msg", "Incorrect User Id Or Password");
			rd.forward(request, response);
			// response.sendRedirect("admin.jsp");
		}
	
	
	
	}

}
