<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Update</title>
	<link rel="stylesheet" href="update.css">
</head>
<body>

<header>
  <div class="logo"> <span>P</span>lanner</div>
  <nav>
    <a href="Home.jsp">Home</a>
    <a href="gallery.jsp">Gallery</a>
    <a href="package.jsp">Package</a>
	<a href="insert.jsp">Customize Event</a>
	<a href="review.jsp">Review</a>
	<a href="ContactUs.jsp">Contact</a>
	<a href="login.jsp">
	<img src="image/login-icon.jpg" alt="login" class="login-icon">
	</a>
	<a href="useracc.jsp">Profile Info.</a>
  </nav>
</header>

	<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String telephone_number = request.getParameter("telephone_number");
	String type = request.getParameter("type");
	String date = request.getParameter("date");
	String location = request.getParameter("location");
	//String services = request.getParameter("services");
	String description = request.getParameter("description");
	
	String[] serviceArray = request.getParameterValues("services");
	java.util.Set<String> selectedServiceSet = new java.util.HashSet<>();

	if (serviceArray != null) {
	    for (String s : serviceArray) {
	        selectedServiceSet.add(s.trim());
	    }
	}


	%>

	<div class="form-container">
    <h1>Update Your Event</h1>
    <form action="updateServlet" method="post">
      
       <div class="form-group">
        <label for="id">ID</label>
        <input type="text" id="id" name="id" value="<%=id %>"readonly>
      </div>
      
      <div class="form-group">
        <label for="customerName">Customer Name</label>
        <input type="text" id="name" name="name" value="<%=name%>"required>
      </div>

      <div class="form-group">
        <label for="telephone">Telephone Number</label>
        <input type="tel" id="telephone_number" name="telephone_number"  value="<%=telephone_number%>" required>
      </div>

      <div class="form-group">
	  	<label for="eventType">Event Type</label>
	 	<select id="type" name="type" onchange="showOtherInput()"  required>
	    <option value="">-- Select --</option>
	    
	    <option value="Birthday" <%= "Birthday".equals(type) ? "selected" : "" %> >Birthday</option>
	    <option value="Wedding" <%= "Wedding".equals(type) ? "selected" : "" %> >Wedding</option>
	    <option value="Engagement" <%= "Engagement".equals(type) ? "selected" : "" %> >Engagement</option>
	    <option value="Festival" <%= "Festival".equals(type) ? "selected" : "" %> >Festival</option>
	    <option value="Workshop" <%= "Workshop".equals(type) ? "selected" : "" %> >Workshop</option>
	    <option value="Baby Shower" <%= "Baby Shower".equals(type) ? "selected" : "" %> >Baby Shower</option>
	    <option value="Product Launch" <%= "Product Launch".equals(type) ? "selected" : "" %> >Product Launch</option>
	     <option value="Charity Event" <%= "Charity Event".equals(type) ? "selected" : "" %> >Charity Event</option>
 	 </select>
	</div>

      <div class="form-group">
        <label for="eventDate">Event Date</label>
        <input type="date" id="date" name="date"  value="<%=date%>" required>
      </div>

      <div class="form-group">
        <label for="eventLocation">Event Location</label>
        <input type="text" id="location" name="location"  value="<%=location%>" required>
      </div>

     <div class="form-group checkbox-group">
    <label><strong>Event Services Needed</strong></label>
    <label><input type="checkbox" name="services" value="DJ" <%= selectedServiceSet.contains("DJ") ? "checked" : "" %>> DJ</label>
    <label><input type="checkbox" name="services" value="Food" <%= selectedServiceSet.contains("Food") ? "checked" : "" %>> Food</label>
    <label><input type="checkbox" name="services" value="Beverages" <%= selectedServiceSet.contains("Beverages") ? "checked" : "" %>> Beverages</label>
    <label><input type="checkbox" name="services" value="Photography" <%= selectedServiceSet.contains("Photography") ? "checked" : "" %>> Photography</label>
    <label><input type="checkbox" name="services" value="Decorations" <%= selectedServiceSet.contains("Decorations") ? "checked" : "" %>> Decorations</label>
    <label><input type="checkbox" name="services" value="Lighting" <%= selectedServiceSet.contains("Lighting") ? "checked" : "" %>> Lighting</label>

	
</div>


      <div class="form-group">
        <label for="message">Any Message</label>
        <textarea id="message" name="description" placeholder="Enter any special instructions or notes..."><%=description%></textarea>
      </div>

      <div class="form-buttons">
        <button type="reset" class="btn-clear">Clear</button>
        <button type="submit" class="btn-submit">Update Event</button>
        
      </div>
      
    </form>
  </div>
  
  
  <footer class="footer">
    <div class="footer-container">
      
      <div class="footer-section">
        <h3>Branches</h3>
        <a href="https://maps.app.goo.gl/s3JgHGM7jmMrc7XQ8">📍Kadawatha</a>
        <a href="https://maps.app.goo.gl/oR2Bvj5FwhDtGwUC8">📍Ragama</a>
        <a href="https://maps.app.goo.gl/iqQ9kUYQwUFcS4Mz7">📍Kiribathgoda</a>
        <a href="https://maps.app.goo.gl/W1Usg8YMWVi4DYzH9">📍Malabe</a>
      </div>
  
      <div class="footer-section">
        <h3>Quick Links</h3>
        <a href="#">📌 Home</a>
        <a href="#">📌 Gallery</a>
        <a href="#">📌 Package</a>
        <a href="#">📌 Customize Event</a>
        <a href="#">📌 Contact</a>
      </div>
  
      <div class="footer-section">
        <h3>Contact Info</h3>
        <a href="https://mail.google.com">📧 planner@gmail.com</a>
        <p>📞 +9411-256-7890</p>
        <p>📞 +9411-222-3333</p>
      </div>
  
      <div class="footer-section">
        <h3>Follow Us</h3>
        <a href="https://www.facebook.com">🌐 Facebook</a>
        <a href="https://www.instagram.com">📸 Instagram</a>
      </div>
  
    </div>
  
    <div class="footer-credit">
      <p>Created By <span>Mr. Web Designer</span> | All Rights Reserved</p>
    </div>
  </footer>
  
  
  
</body>
</html>