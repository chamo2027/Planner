<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Planner</title>
  <link rel="stylesheet" href="displaystyle.css">
</head>
<body>

<%
	int id = Integer.parseInt(request.getParameter("id"));
	String username = request.getParameter("username");
	String email = request.getParameter("email");
	String contactnumber = request.getParameter("contactnumber");
	String bday = request.getParameter("bday");
	String password = request.getParameter("password");
%>

 <!----------- HEADER ------------------>
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


 <!----------- BODY ------------------>
 <section class="hero">
 
 <form action="UpdateUserServlet" method="post">
    <table class="user-table">
    <caption class="capt">Update Profile</caption>
    
            <tr>
                <th>ID</th>
                <td><input type="text" name="id" value="<%= id %>" readonly></td>
            </tr>
            <tr>
                <th>User Name</th>             
                <td><input type="text" name="username" value="<%= username %>"></td>             
            </tr>
             <tr>
                <th>Email</th>
                <td><input type="email" name="email" value="<%= email %>"></td>
            </tr>
             <tr>
                <th>Contact Number</th>
                <td><input type="text" name="contactnumber" value="<%= contactnumber %>"></td>
            </tr>
             <tr>
                <th>BirthDay</th>
                <td><input type="date" name="bday" value="<%= bday %>"></td>
            </tr>
             <tr>
                <th>Password</th>
                <td><input type="password" name="password" value="<%= password %>"></td>
            </tr>
            <tr>
                <th>Re-Enter Password</th>
                <td><input type="password" name="repassword" value="<%= password %>"></td>
            </tr>   

    </table>
    <button type="submit" name="update" value="update" class="login-btn">Update</button>
</form>
</section>


 <!----------- FOOTER ------------------>
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

<script src="validate-password.js"></script>

</body>
</html>