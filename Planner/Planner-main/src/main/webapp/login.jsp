<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login Page</title>
  <link rel="stylesheet" href="loginstyle.css">
</head>
<body>

<div class="login-container">
  <h2>Welcome</h2>
  <form action="LoginServlet" method="post">
    <div class="input-box">
      <input type="email" name="email" required>
      <label>Email Address</label>
    </div>
    <div class="input-box">
      <input type="password" name="password" required>
      <label>Password</label>
    </div>
    <div class="forgot">
      <a href="#">Forgot Password</a>
    </div>
    <button type="submit" name="submit" class="login-btn">Login</button>
    <p class="signup-link">
      Don't have an account? <a href="createacc.jsp">SignUp</a>
    </p>
  </form>
</div>

</body>
</html>