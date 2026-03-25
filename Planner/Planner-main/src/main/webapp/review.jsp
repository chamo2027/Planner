<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Feedback Form</title>
    <link rel="stylesheet" href="rStyle.css">
</head>
<body style="background-image: url('images2/background.jpg'); background-size: cover;">
<div class="header-wrapper">
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
	<img src="images2/login-icon.jpg" alt="login" class="login-icon">
	</a>
	<a href="useracc.jsp">Profile Info.</a>
  </nav>
</header>

</div>

<section class="hero">
    <form id="feedbackForm" action="InsertServletG" method="post">
        <div class="container">
            <h1>Event Feedback Form</h1>

            <div class="form-group">
                <label for="name">Your Name</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="event">Event Attended</label>
                <select id="event" name="event" required>
                    <option value="">Select an event</option>
                    <option value="conference">Annual Conference</option>
                    <option value="workshop">Marketing Workshop</option>
                    <option value="seminar">Leadership Seminar</option>
                    <option value="networking">Networking Event</option>
                </select>
            </div>

            <div class="form-group">
                <label>Event Rating</label>
                <div class="rating-container">
                    <div class="rating">
                        <input type="radio" id="star5" name="rating" value="5">
                        <label for="star5">★</label>
                        <input type="radio" id="star4" name="rating" value="4">
                        <label for="star4">★</label>
                        <input type="radio" id="star3" name="rating" value="3">
                        <label for="star3">★</label>
                        <input type="radio" id="star2" name="rating" value="2">
                        <label for="star2">★</label>
                        <input type="radio" id="star1" name="rating" value="1">
                        <label for="star1">★</label>
                    </div>
                </div>
                <div class="rating-value" id="ratingValue"></div>
                <input type="hidden" id="ratingInput" name="rating" value="0">
            </div>

            <div class="form-group">
                <label for="comment">Comments/Suggestions</label>
                <textarea name="comment" required></textarea>
            </div>

            <button type="submit">Submit Feedback</button>
            <div id="successMessage" class="success-message">Thank you for your feedback!</div>
            <div id="errorMessage" class="error-message">Error submitting feedback. Please try again.</div>
        </div>
    </form>
    
    		
</section>

<form action="getAllServletG" method="get" style="display: inline-block;">
		    <input type="submit" value="Show all Reviews" 
		               style="background-color: darkgreen; color: white; font-weight: bold; border: none; border-radius: 5px; cursor: pointer; margin: 50px auto; padding:10px 20px; justify-content: center;">     
		    </form>


 <%@ include file="footer.jsp" %>

</body>
</html>
