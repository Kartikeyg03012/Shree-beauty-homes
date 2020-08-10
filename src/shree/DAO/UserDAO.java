package shree.DAO;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="userdata")
public class UserDAO {

	private String name;
	private String contact;
	private String email;
	@Id
	private String uname;
	private String pass;
	private String aadhar;
	private String gender;
	
	public UserDAO() {
		
	}

	public UserDAO(String name, String contact, String email, String uname, String pass, String aadhar, String gender) {
		super();
		this.name = name;
		this.contact = contact;
		this.email = email;
		this.uname = uname;
		this.pass = pass;
		this.aadhar = aadhar;
		this.gender = gender;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getAadhar() {
		return aadhar;
	}

	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	
}
