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

@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	ShreeSalonModel ssm =new ShreeSalonModel();
	ArrayList<BookDAO> list = new ArrayList<>();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("empup");
		BookDAO emp =ssm.searchemp(id);
		RequestDispatcher rd = request.getRequestDispatcher("employeeUpdate.jsp");
		request.setAttribute("STD", emp);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name,contact,services,address,city;
		name=request.getParameter("name");
		contact=request.getParameter("number");
		services=request.getParameter("services");
		address=request.getParameter("address");
		city=request.getParameter("city");
		int person= Integer.parseInt(request.getParameter("persons"));

		BookDAO erd = new BookDAO(name, contact, services, address, city, person);
		int o= ssm.updatedata(erd);
		
		ArrayList<BookDAO> slist = ssm.getempvalues();

		if (o != 0) {
			RequestDispatcher rd = request.getRequestDispatcher("Mybookings.jsp");
			request.setAttribute("msg", "success");
			request.setAttribute("list", slist);
			rd.forward(request, response);
		}

	}

}
