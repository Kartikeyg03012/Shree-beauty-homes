package shree.Model;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.CreateKeySecondPass;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Restrictions;
import shree.DAO.AdminLogin;
import shree.DAO.BookDAO;
import shree.DAO.UserDAO;
import shree.DAO.contactDAO;

public class ShreeSalonModel {

	public Session connection() {
		SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss = sf.openSession();
		return ss;
	}

	public int checklogin(String id, String pass) {
		int i = 0;
		Session ss = connection();
		Criteria c = ss.createCriteria(AdminLogin.class);
		c.add(Restrictions.eq("id", id));
		c.add(Restrictions.eq("pass", pass));
		List list = c.list();
		if (!list.isEmpty()) {
			i = 1;
		}
		ss.close();
		return i;
	}

	public ArrayList<AdminLogin> showAdmin() {
		ArrayList<AdminLogin> list = new ArrayList<AdminLogin>();
		Session ss = connection();
		Criteria c = ss.createCriteria(AdminLogin.class);
		list = (ArrayList<AdminLogin>) c.list();
		ss.close();
		return list;

	}

	public Object book(String name, String contact, String services, String address, String city, int person) {
		BookDAO b = new BookDAO(name, contact, services, address, city, person);
		Session ss = connection();
		Transaction tt = ss.beginTransaction();
		Object o = ss.save(b);
		tt.commit();
		ss.close();
		return o;
	}

	public ArrayList<BookDAO> getempvalues() {
		ArrayList<BookDAO> list = new ArrayList<BookDAO>();
		Session ss = connection();
		Criteria c = ss.createCriteria(BookDAO.class);
		list = (ArrayList<BookDAO>) c.list();
		ss.close();
		return list;

	}

	public Object contact(String name, String contact, String subject, String message) {
		contactDAO cd = new contactDAO(name, contact, subject, message);
		Session ss = connection();
		Transaction tt = ss.beginTransaction();
		Object o = ss.save(cd);
		tt.commit();
		ss.close();
		return o;
	}

	public ArrayList<contactDAO> contactvalues() {
		ArrayList<contactDAO> list = new ArrayList<contactDAO>();
		Session ss = connection();
		Criteria c = ss.createCriteria(contactDAO.class);
		list = (ArrayList<contactDAO>) c.list();
		ss.close();
		return list;

	}

	public BookDAO searchemp(String mobile) {
		BookDAO ee = null;
		SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss = sf.openSession();

		Criteria ct = ss.createCriteria(BookDAO.class);
		ct.add(Restrictions.eq("contact", mobile));// coloum name in table and pass String
		ee = (BookDAO) ct.list().get(0);
		return ee;
	}

	public int deletevalues(String number) {
		SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss = sf.openSession();
		Transaction tt = ss.beginTransaction();
		String Sql = "DELETE FROM BookDAO WHERE contact=:con ";
		Query q = ss.createQuery(Sql);
		q.setString("con", number);
		int i = q.executeUpdate();
		tt.commit();
		ss.close();
		sf.close();
		return i;
	}

	public int updatedata(BookDAO erd) {
		SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss = sf.openSession();
		Transaction tt = ss.beginTransaction();
		String query = "update BookDAO set name=:n, address=:a, services=:s,person=:p, city=:city where contact=:c";

		Query qq = ss.createQuery(query);
		qq.setString("n", erd.getName());
		qq.setString("s", erd.getServices());
		qq.setString("city", erd.getCity());
		qq.setString("c", erd.getContact());
		qq.setString("a", erd.getAddress());
		qq.setInteger("p",erd.getPerson());
		int x = qq.executeUpdate();
		if(x!=0){
			x=1;
		}
		tt.commit();
		ss.close();
		sf.close();
		return x;
		
	}

	public Object userregister(UserDAO ud) {
		Session ss = connection();
		Transaction tt = ss.beginTransaction();
		Object o = ss.save(ud);
		tt.commit();
		ss.close();
		return o;
		
	}
	public int checkuserlogin(String id, String pass) {
		int i = 0;
		Session ss = connection();
		Criteria c = ss.createCriteria(UserDAO.class);
		c.add(Restrictions.eq("uname", id));
		c.add(Restrictions.eq("pass", pass));
		List list = c.list();
		if (!list.isEmpty()) {
			i = 1;
		}
		ss.close();
		return i;
	}//duplicate value
	public int checkduplicatevalue(String id) {
		int i = 0;
		Session ss = connection();
		Criteria c = ss.createCriteria(UserDAO.class);
		c.add(Restrictions.eq("uname", id));
		List list = c.list();
		if (!list.isEmpty()) {
			i = 1;
		}
		ss.close();
		return i;
	}


	public ArrayList<UserDAO> showuserdata() {
		
		ArrayList<UserDAO> list = new ArrayList<UserDAO>();
		Session ss = connection();
		Criteria c = ss.createCriteria(UserDAO.class);
		list = (ArrayList<UserDAO>) c.list();
		ss.close();
		return list;
	}

	public int checkduplicatevalueforbook(String id) {
		int i = 0;
		Session ss = connection();
		Criteria c = ss.createCriteria(BookDAO.class);
		c.add(Restrictions.eq("contact", id));
		List list = c.list();
		if (!list.isEmpty()) {
			i = 1;
		}
		ss.close();
		return i;
	}
	public int checkduplicatevalueforcontactus(String id) {
		int i = 0;
		Session ss = connection();
		Criteria c = ss.createCriteria(contactDAO.class);
		c.add(Restrictions.eq("number", id));
		List list = c.list();
		if (!list.isEmpty()) {
			i = 1;
		}
		ss.close();
		return i;
	}

	}

