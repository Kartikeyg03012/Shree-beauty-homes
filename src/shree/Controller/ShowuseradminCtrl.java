package shree.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shree.DAO.UserDAO;
import shree.Model.ShreeSalonModel;

@WebServlet("/ShowuseradminCtrl")
public class ShowuseradminCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ShreeSalonModel ssm=new ShreeSalonModel();
		ArrayList<UserDAO> al = new ArrayList<UserDAO>();
		al = ssm.showuserdata();
		RequestDispatcher rd = request.getRequestDispatcher("showuser.jsp");
		request.setAttribute("list", al);
		rd.forward(request, response);	
	
	}

	

}
