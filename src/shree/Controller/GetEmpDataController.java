package shree.Controller;

import java.awt.print.Book;
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

@WebServlet("/GetEmpDataController")
public class GetEmpDataController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int s=0;
	int x=0;//x=s
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ShreeSalonModel ssm=new ShreeSalonModel();
		ArrayList<BookDAO> al = new ArrayList<BookDAO>();
		al = ssm.getempvalues();
		RequestDispatcher rd = request.getRequestDispatcher("Mybookings.jsp");
		request.setAttribute("list", al);
		rd.forward(request, response);
		
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
