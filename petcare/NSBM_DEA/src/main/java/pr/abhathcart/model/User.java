package pr.abhathcart.model;

public class User {
	private int id;
	private String email;
	private String password;
	private String name;
	private String address;
	private String city;
	private String province;
	
	
	public User() {
		
	}


	public User(int id, String email, String password, String name, String address, String city, String province) {
		
		this.id = id;
		this.email = email;
		this.password = password;
		this.name = name;
		this.address = address;
		this.city = city;
		this.province = province;
		
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
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


	public String getProvince() {
		return province;
	}


	public void setProvince(String province) {
		this.province = province;
	}
	
	
	

}
