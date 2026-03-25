<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Bookings</title>
    
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
    	<h1>Review Dashboard</h1>
    </header>
    
    <div class="container">
    	<h2>All Reviews</h2>
    	
    	<!-- back to AdminDashbaord button-->
    	<div style="text-align: right; margin: 20px 30px 0 0;">
		    <form action="review.jsp" method="get" style="display: inline-block;">
		        <input type="submit" value="Go to Review page" 
		               style="background-color: darkgreen; color: white; font-weight: bold; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer;">
		    </form>
		</div>


	    <c:if test="${not empty allReviews}">
	        <table border="1">
	            <thead>
	                <tr>
	                    <th>ID</th>
	                    <th>Name</th>
	                    <th>email</th>
	                    <th>event</th>
	                    <th>rating</th>
	                    <th>comment</th>
	                    <th>Actions</th>
	                    
	                </tr>
	            </thead>
	            <tbody>
	                <c:forEach var="review" items="${allReviews}">
	                    <tr>
	                        <td>${review.id}</td>
	                        <td>${review.name}</td>
	                        <td>${review.email}</td>
	                        <td>${review.event}</td>
	                        <td>${review.rating}</td>
	                        <td>${review.comment}</td>
	                        
	                        <td>
			                    
						          <a href="updateG.jsp?id=${review.id}&name=${review.name}&email=${review.email}&event=${review.event}&rating=${review.rating}&comment=${review.comment}">
						            <button>Edit</button>
						          </a>
			
			                    <form action="deleteServletG" method="post" onsubmit="return confirm('Are you sure you want to delete this feedback?');">
						            <input type="hidden" name="id" value="${review.id}">
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
