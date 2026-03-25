package contact;

import java.util.List;

public class ContactModel {
	
	private int contactId;
	private String firstName;
	private String lastName;
	private String eMail;
	private String phoneNumber;
	private String comment;
	
	
	
	
	public ContactModel(int contactId, String firstName, String lastName, String eMail, String phoneNumber,
			String comment) {
		super();
		this.contactId = contactId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.eMail = eMail;
		this.phoneNumber = phoneNumber;
		this.comment = comment;
	}

	public int getContactId() {
		return contactId;
	}	
	
	public String getFirstName() {
		return firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public String geteMail() {
		return eMail;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public String getComment() {
		return comment;
	}
	public void setContactId(int contactId) {
		this.contactId = contactId;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}

	public static List<ContactModel> getById(String contactId2) {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
