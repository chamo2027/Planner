<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Customize Your Event</title>
	<link rel="stylesheet" href="insert.css">
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
      
      <script src="validate.js"></script>
      
      
<!--body -->

  <div class="form-container">
    <h2>Customize Your Event</h2>
    <form action="insertServlet" method="post">
      
      <div class="form-group">
        <label for="customerName">Customer Name</label>
        <input type="text" id="name" name="name" required>
      </div>

      <div class="form-group">
        <label for="telephone">Telephone Number</label>
        <input type="tel" id="telephone_number" name="telephone_number" required>
      </div>

      <div class="form-group">
	  	<label for="eventType">Event Type</label>
	 	<select id="type" name="type" onchange="showOtherInput()" required>
	    <option value="">-- Select --</option>
	    <option value="Birthday">Birthday</option>
	    <option value="Wedding">Wedding</option>
	    <option value="Engagement">Engagement</option>
	    <option value="Festival">Festival</option>
	    <option value="Workshop">Workshop</option>
	    <option value="Baby Shower">Baby Shower</option>
	     <option value="Product Launch">Product Launch</option>
	      <option value="Charity Event">Charity Event</option>
 	 </select>
	</div>

      <div class="form-group">
        <label for="eventDate">Event Date</label>
        <input type="date" id="date" name="date" required>
      </div>

      <div class="form-group">
        <label for="eventLocation">Event Location</label>
        <input type="text" id="location" name="location" required>
      </div>

      <div class="form-group checkbox-group">
        <label><strong>Event Services Needed</strong></label>
        <label><input type="checkbox" name="services" value="DJ"> DJ</label>
        <label><input type="checkbox" name="services" value="Food"> Food</label>
        <label><input type="checkbox" name="services" value="Beverages"> Beverages</label>
        <label><input type="checkbox" name="services" value="Photography"> Photography</label>
        <label><input type="checkbox" name="services" value="Decorations"> Decorations</label>
        <label><input type="checkbox" name="services" value="Lighting"> Lighting</label>
      </div>

      <div class="form-group">
        <label for="message">Any Message</label>
        <textarea id="message" name="description" placeholder="Enter any special instructions or notes..."></textarea>
      </div>

      <div class="form-buttons">
        <button type="reset" class="btn-clear">Clear</button>
        <button type="submit" class="btn-submit">Request Event</button>
        
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
