<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    if (session.getAttribute("cusDetails") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Planner</title>
  <link rel="stylesheet" href="displaystyle.css">
  <style>
        .delete {
            width: 25%;
            background-color: red;
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-weight: bold;
            display: block;
            margin: 20px auto;
            padding: 10px;
        }

        .delete:hover {
            background-color: darkred;
        }
    </style>
</head>
<body>

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
 
 
    <table class="user-table">
    <caption class="capt">User Profile Details</caption>
    
            <tr>
                <th>ID</th>
                <c:forEach var="cus" items="${sessionScope.cusDetails}">
                <c:set var="id" value="${cus.id}"/>                                                                                         
                <td>${cus.id}</td>
                </c:forEach>
            </tr>
            <tr>
                <th>User Name</th>
                <c:forEach var="cus" items="${sessionScope.cusDetails}">
                <c:set var="username" value="${cus.username}"/>
                <td>${cus.username}</td>
                </c:forEach>
            </tr>
             <tr>
                <th>Email</th>
                <c:forEach var="cus" items="${sessionScope.cusDetails}">
                <c:set var="email" value="${cus.email}"/>
                <td>${cus.email}</td>
                </c:forEach>
            </tr>
             <tr>
                <th>Contact Number</th>
                <c:forEach var="cus" items="${sessionScope.cusDetails}">
                <c:set var="contactnumber" value="${cus.contactnumber}"/>
                <td>${cus.contactnumber}</td>
                </c:forEach>
            </tr>
             <tr>
                <th>BirthDay</th>
                <c:forEach var="cus" items="${sessionScope.cusDetails}">
                <c:set var="bday" value="${cus.bday}"/>
                <td>${cus.bday}</td>
                </c:forEach>
            </tr>
             <tr>
                <th>Password</th>
                <c:forEach var="cus" items="${sessionScope.cusDetails}">
                <c:set var="password" value="${cus.password}"/>
                <td>${cus.password}</td>
                </c:forEach>
            </tr>   

    </table>
    
    <c:url value="updateuser.jsp" var="cusupdate">
    <c:param name="id" value="${id}"/>
    <c:param name="username" value="${username}"/>
    <c:param name="email" value="${email}"/>
    <c:param name="contactnumber" value="${contactnumber}"/>
    <c:param name="bday" value="${bday}"/>
    <c:param name="password" value="${password}"/>
    </c:url>
    
   	<button type="button" class="login-btn" onclick="location.href='${cusupdate}'">Update</button>
   	
   	
   	<c:url value="deleteuser.jsp" var="cusdelete">
    <c:param name="id" value="${id}"/>
    <c:param name="username" value="${username}"/>
    <c:param name="email" value="${email}"/>
    <c:param name="contactnumber" value="${contactnumber}"/>
    <c:param name="bday" value="${bday}"/>
    <c:param name="password" value="${password}"/>
    </c:url>
	
	<button type="button" class="delete" onclick="location.href='${cusdelete}'">Delete My Account</button>

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

</body>
</html>