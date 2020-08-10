package shree.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shree.DAO.AdminLogin;
import shree.DAO.UserDAO;
import shree.Model.ShreeSalonModel;

@WebServlet("/UserLoginCtrl")
public class UserLoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		String id=request.getParameter("uname");
		String pass= request.getParameter("pass");
		
		HttpSession session =request.getSession();
		session.setMaxInactiveInterval(10000);
		session.setAttribute("expired", id);
		
		
		UserDAO ud =new UserDAO();
		ShreeSalonModel shree=new ShreeSalonModel();
		int i=shree.checkuserlogin(id, pass);
	
		if (i != 0) {
			response.sendRedirect("main.jsp");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("userLogin.jsp");
			request.setAttribute("msg", "Incorrect User Id Or Password");
			rd.forward(request, response);
			// response.sendRedirect("admin.jsp");
		}	
	
	
	
	
	}

}
