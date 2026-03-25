package onlineEventPackage;

public class eventModel {
	
	private int id;
	private String name;
	private String telephone_number;
	private String type;
	private String date;
	private String location;
	private String services;
	private String description;
	
	//constructor
	
	public eventModel(int id, String name, String telephone_number, String type, String date, String location,String services, String description) {
		super();
		this.id = id;
		this.name = name;
		this.telephone_number = telephone_number;
		this.type = type;
		this.date = date;
		this.location = location;
		this.services = services;
		this.description = description;
	}

	//getters and setters
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTelephone_number() {
		return telephone_number;
	}

	public void setTelephone_number(String telephone_number) {
		this.telephone_number = telephone_number;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getServices() {
		return services;
	}

	public void setService(String service) {
		this.services = service;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	

}
