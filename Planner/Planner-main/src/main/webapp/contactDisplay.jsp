<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Contacts</title>
    
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f2f4f8;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: darkgreen;
            boarder: 10px;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        .container {
            max-width: 1500px;
            margin: 0px auto;
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
        }

        h2 {
            margin-top: 0;
            color: #333;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border-radius: 10px;
		    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.4);
        }

        th, td {
            padding: 12px;
            text-align: center;
            
        }

        th {
            background-color: darkgreen;
            color: white;
            
        }

        tr:hover {
            background-color: #f9f9f9;
        }

        td form {
            display: inline-block;
            margin: 0 5px;
        }

        input[type="submit"] {
            background-color: #27ae60;
            color: white;
            border: none;
            padding: 6px 12px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        input[type="submit"]:hover {
            background-color: #219150;
        }
        
        footer {
            background-color: black;
            color: #fff;
            padding: 10px;
            text-align: center;
            bottom: 0;
            width: auto;
        }
        
        .footer-credit {
  			text-align: center;
  			margin-top: 20px;
  			font-size: 14px;
 			 color: #aaa;
		}

		.footer-credit span {
  			color: #00ff88;
  			font-weight: bold;
		}
        
    </style>
</head>
<body>

    <header>
    	<h1>Contact Dashboard</h1>
    </header>
    
    <div class="container">
    	<h2>All Contact Details</h2>
    	
    	<!-- back to AdminDashbaord button-->
    	<div style="text-align: right; margin: 20px 30px 0 0;">
		    <form action="ContactUs.jsp" method="get" style="display: inline-block;">
		        <input type="submit" value="Go to Contact page" 
		               style="background-color: darkgreen; color: white; font-weight: bold; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer;">
		    </form>
		</div>


	    <c:if test="${not empty allContact}">
	        <table border="1">
	            <thead>
	                <tr>
	                    <th>ID</th>
	                    <th>First Name</th>
	                    <th>Last Name</th>
	                    <th>e-mail</th>
	                    <th>Phone Number</th>
	                    <th>comment</th>
	                    <th>Actions</th>
	                    
	                </tr>
	            </thead>
	            <tbody>
	                <c:forEach var="contact" items="${allContact}">
	                    <tr>
	                        <td>${contact.contactId}</td>
	                        <td>${contact.firstName}</td>
	                        <td>${contact.lastName}</td>
	                        <td>${contact.eMail}</td>
	                        <td>${contact.phoneNumber}</td>
	                        <td>${contact.comment}</td>
	                        
	                        <td>
			                    
						          <a href="contactUpdate.jsp?contactId=${contact.contactId}&firstName=${contact.firstName}&lastName=${contact.lastName}&eMail=${contact.eMail}&phoneNumber=${contact.phoneNumber}&comment=${contact.comment}">
						            <button>Edit</button>
						          </a>
			
			                    <form action="CDeleteServlet" method="post" onsubmit="return confirm('Are you sure you want to delete this feedback?');">
						            <input type="hidden" name="contactId" value="${contact.contactId}">
						            <button type="submit" class="delete-button">Delete</button>
						          </form>
			                    
			                    
			                </td>
	                    </tr>
	                </c:forEach>
	            </tbody>
	        </table>
	    </c:if>
    </div><br>
	
	<footer>
	    <div class="footer-credit">
    <p>Created By <span>Mr. Web Designer</span> | All Rights Reserved</p>
  </div>
	</footer>
</body>

</html>