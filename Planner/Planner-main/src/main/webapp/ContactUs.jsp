<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Contact Us - Planner.com</title>
  <!-- External CSS -->
  <link rel="stylesheet" href="contact.css">
  <!-- Font Awesome for icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body style="background-image: url('images2/background.jpg'); background-size: cover;">

  <!-- Contact Info Section (unchanged) -->
  <section class="contact-section">
    <div class="contact-container">
      <div class="contact-info">
        <h1>Get In Touch</h1>
        <div class="info-grid">
          <div class="info-item">
            <i class="fas fa-map-marker-alt"></i>
            <div class="info-content">
              <h3>Our Office</h3>
              <p>1No. 18, Lotus Tower Road, Colombo 02, Western Province, Sri Lanka</p>
            </div>
          </div>
          <div class="info-item">
            <i class="fas fa-phone-alt"></i>
            <div class="info-content">
              <h3>Call Us</h3>
              <p>+94 11 234 5678 <br>+94 81 222 3333</p>
            </div>
          </div>
          <div class="info-item">
            <i class="fas fa-envelope"></i>
            <div class="info-content">
              <h3>Email Us</h3>
              <p>info@planner.com<br>support@planner.com</p>
            </div>
          </div>
          <div class="info-item">
            <i class="fas fa-clock"></i>
            <div class="info-content">
              <h3>Working Hours</h3>
              <p>Monday - Friday: 9AM - 6PM<br>Saturday: 10AM - 4PM<br>Sunday: Closed</p>
            </div>
          </div>
        </div>
        <div class="social-media">
          <div class="social-title">Connect With Us On Social Media</div>
          <div class="social-icons">
            <a href="https://www.facebook.com/yourpage" class="social-icon" target="_blank">
              <i class="fab fa-facebook"></i>
              <span class="social-name">Facebook</span>
            </a>
            <a href="https://www.instagram.com/yourpage" class="social-icon" target="_blank">
              <i class="fab fa-instagram"></i>
              <span class="social-name">Instagram</span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Contact Form Section -->
  <section class="form-container">
    <div class="form-box">
      <h2>Get in Touch</h2>
      <form action ="CInsertServlet"  method = "POST">
        <div class="row">
          <input type="text" placeholder="Please enter first name..." name="firstName" required />
          <input type="text" placeholder="Please enter last name..." name="lastName" required />
        </div>
        <div class="row">
          <input type="email" placeholder="Please enter email..." name="eMail" required />
          <input type="tel" placeholder="Please enter phone number..." name="phoneNumber" required />
        </div>
        <div class="row">
          <textarea placeholder="Please enter query..." name="comment" required></textarea>
        </div>
        <button type="submit" class="submit-btn">Submit</button>
      </form>
    </div>
  </section>

  <%@ include file="footer.jsp" %>
</body>
</html>
