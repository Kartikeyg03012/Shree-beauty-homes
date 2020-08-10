package shree.DAO;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="MyBookings")
public class BookDAO {
	private String name;
	@Id
	private String contact;
	private String services;
	private String address;
	private String city;
	private int person;
	
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
	public String getServices() {
		return services;
	}
	public void setServices(String services) {
		this.services = services;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPerson() {
		return person;
	}
	public void setPerson(int person) {
		this.person = person;
	}
	public BookDAO(String name, String contact, String services, String address, String city, int person) {
		super();
		this.name = name;
		this.contact = contact;
		this.services = services;
		this.address = address;
		this.city = city;
		this.person = person;
	}
	public BookDAO() {
		
	}
}
