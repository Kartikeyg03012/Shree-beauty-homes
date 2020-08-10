package shree.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shree.DAO.AdminLogin;

import shree.Model.ShreeSalonModel;

@WebServlet("/showadminCtrl")
public class showadminCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ShreeSalonModel ssm=new ShreeSalonModel();
		ArrayList<AdminLogin> al = new ArrayList<AdminLogin>();
		al = ssm.showAdmin();
		RequestDispatcher rd = request.getRequestDispatcher("showadmin.jsp");
		request.setAttribute("list", al);
		rd.forward(request, response);
		
		
	}

}