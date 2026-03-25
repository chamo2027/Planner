<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
            color: #333;
        }
        
        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        
        h1 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        
        input[type="text"],
        input[type="email"],
        input[type="date"],
        textarea,
        select {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }
        
        textarea {
            height: 120px;
            resize: vertical;
        }
        
        .rating-container {
            display: flex;
            justify-content: center;
            margin: 20px 0;
        }
        
        .rating {
            display: flex;
            flex-direction: row-reverse;
            justify-content: center;
        }
        
        .rating input {
            display: none;
        }
        
        .rating label {
            font-size: 30px;
            color: #ddd;
            cursor: pointer;
            padding: 0 5px;
        }
        
        .rating input:checked ~ label,
        .rating input:hover ~ label {
            color: #ffcc00;
        }
        
        .rating label:hover,
        .rating label:hover ~ label {
            color: #ffcc00;
        }
        
        .rating-value {
            text-align: center;
            font-size: 18px;
            margin-top: 10px;
            font-weight: bold;
            color: #2c3e50;
        }
        
        button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            transition: background-color 0.3s;
        }
        
        button:hover {
            background-color: #2980b9;
        }
     </style>
</head>
<body>
<%
	String contactId = request.getParameter("contactId");
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String eMail = request.getParameter("eMail");
	String phoneNumber = request.getParameter("phoneNumber");
	String comment = request.getParameter("comment");
%>
 <div class="container">
        <h1>Event Feedback Form</h1>
        <form id="feedbackForm" action = "CUpdateServlet" method = "post">
            <div class="form-group">
            
            	<input type = "text" name="contactId" value = "<%=contactId%>" readonly>
            	
                <label for="name">First Name</label>
                <input type="text" name="firstName" value = "<%=firstName%>" required>
            </div>
            
            <div class="form-group">
                <label for="lastName">Last Name</label>
                <input type="text" name="lastName" value = "<%=lastName%>" required>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" name="eMail" value = "<%=eMail%>" required>
            </div>
            
            <div class="form-group">
                <label for="phoneNumber">phoneNumber</label>
                <input type="text" name="phoneNumber" value = "<%=phoneNumber%>" required>
            </div>
            
            <div class="form-group">
                <label for="comment">Comments/Suggestions</label>
                <textarea id="comment" name="comment" required><%=comment%></textarea>
            </div>
            
            <button type="submit">Update Contact</button>
            </div>
       </form>
</body>
</html>