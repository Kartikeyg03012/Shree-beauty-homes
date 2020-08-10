package shree.Controller;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import shree.DAO.BookDAO;
import shree.Model.ShreeSalonModel;

@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String number = request.getParameter("empid");
		ShreeSalonModel ssm =new ShreeSalonModel();
		
		int i = ssm.deletevalues(number);
		
		ArrayList<BookDAO> slist = ssm.getempvalues();
	

		if (i != 0) {
			RequestDispatcher rd = request.getRequestDispatcher("Mybookings.jsp");
			request.setAttribute("msg", "success");
			request.setAttribute("list", slist);
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
