package OnlineEvent;

import java.time.LocalDate;

public class Profile {
	private int id;
	private String username;
	private String email;
	private String contactnumber;
	private LocalDate bday;
	private String password;
	private String repassword;
	
	
	public Profile(int id, String username, String email, String contactnumber, LocalDate bday, String password,
			String repassword) {
		this.id = id;
		this.username = username;
		this.email = email;
		this.contactnumber = contactnumber;
		this.bday = bday;
		this.password = password;
		this.repassword = repassword;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getContactnumber() {
		return contactnumber;
	}


	public void setContactnumber(String contactnumber) {
		this.contactnumber = contactnumber;
	}


	public LocalDate getBday() {
		return bday;
	}


	public void setBday(LocalDate bday) {
		this.bday = bday;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getRepassword() {
		return repassword;
	}


	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	
	

}
