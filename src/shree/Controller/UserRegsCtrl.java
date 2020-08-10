package shree.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shree.DAO.UserDAO;
import shree.Model.ShreeSalonModel;

/**
 * Servlet implementation class UserRegsCtrl
 */
@WebServlet("/UserRegsCtrl")
public class UserRegsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		String name=request.getParameter("name");
		String contact=request.getParameter("number");
		String email=request.getParameter("email");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		String aadhar=request.getParameter("aadhar");
		String gender=request.getParameter("gender");
		
		ShreeSalonModel ssm =new ShreeSalonModel();
		
		int i=ssm.checkduplicatevalue(uname);
		if(i==0) {
		UserDAO ud =new UserDAO(name,  contact,  email,  uname,  pass,  aadhar,  gender);
		Object o=ssm.userregister(ud);
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			if (o != null) {
				request.setAttribute("msg", "success");
				rd.forward(request, response);
			}else {
				request.setAttribute("msg", "fail");
				rd.forward(request, response);
			}
	
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			request.setAttribute("msg", "fail");
			rd.forward(request, response);
		}
	
	}

}
