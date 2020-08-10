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
import shree.DAO.contactDAO;
import shree.Model.ShreeSalonModel;


@WebServlet("/messageController")
public class messageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int s=0;
	int x=0;//x=s
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ShreeSalonModel ssm=new ShreeSalonModel();
		ArrayList<contactDAO> al = new ArrayList<contactDAO>();
		al = ssm.contactvalues();
		RequestDispatcher rd = request.getRequestDispatcher("mymessage.jsp");
		request.setAttribute("list", al);
		rd.forward(request, response);
		//System.out.println("Value of x"+x);
		
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
