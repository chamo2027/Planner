<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Display Details</title>
	<link rel="stylesheet" href="display.css">
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

	<div class="header-box">
	<h1 style="text-align: center;">Event Successfully Added</h1>
	<h2 style="text-align: center;">Your Event Details:</h2>
	</div>
	
<!--body -->
	
	<table>
		<tr>
			<th>Id</th>
			<th>customer name</th>
			<th>telephone number</th>
			<th>Event type</th>
			<th>Event date</th>
			<th>Event location</th>
			<th>Services</th>
			<th>Message</th>
			<th>Action</th>

		</tr> 
		
		<c:forEach var = "event"  items="${lastEvent}">
		
		<tr>
			<td>${event.id}</td>
			<td>${event.name}</td>
			<td>${event.telephone_number}</td>
			<td>${event.type}</td>
			<td>${event.date}</td>
			<td>${event.location}</td>
			<td>${event.services}</td>
			<td>${event.description}</td>	
			
			<td>
				<a href = "update.jsp?id=${event.id}&name=${event.name}&telephone_number=${event.telephone_number}&type=${event.type}&date=${event.date}&location=${event.location}&services=${event.services}&description${event.description}">
					<button>Update</button>
				</a>
				
				<form action="deleteServlet" method="post" style="display:inline;">
                     <input type="hidden" name="id" value="${event.id}">
                     <button type="submit">Delete</button>
				
				</form>
			</td>		
		</tr>	
		
		</c:forEach>
	</table>

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