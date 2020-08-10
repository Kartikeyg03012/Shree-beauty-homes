package shree.DAO;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="contact")
public class contactDAO {
	private String name;
	@Id
	private String number;
	private String subject;
	private String message;
	
	public contactDAO() {
		
	}
	public contactDAO(String name, String number, String subject, String message) {
		super();
		this.name = name;
		this.number = number;
		this.subject = subject;
		this.message = message;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
}
