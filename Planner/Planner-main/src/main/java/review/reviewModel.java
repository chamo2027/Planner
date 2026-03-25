package review;


public class reviewModel {

	private int id;
	private String name;
	private String email;
	private String event;
	private String rating;
	private String comment;
	
	public reviewModel(int id, String name, String email,String event, String rating, String comment) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.event = event;
		this.rating = rating;
		this.comment = comment;
	}

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEvent() {
		return event;
	}

	public void setEvent(String event) {
		this.event = event;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
	
	
}
