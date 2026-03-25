package contact;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/CInsertServlet")
public class CInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
	    String lastName= request.getParameter("lastName");
	    String eMail = request.getParameter("eMail");
	    String phoneNumber = request.getParameter("phoneNumber"); 
	    String comment = request.getParameter("comment");
	    
boolean isTrue;
	    
	    isTrue = ContactControl.insertData(firstName, lastName, eMail, phoneNumber , comment);
	    
	    if(isTrue) {
	        String alertMessage = "Data inserted successfully";
	        response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='CGetAllServlet'</script>");
	    } else {
	        
	        RequestDispatcher dis = request.getRequestDispatcher("wrong.jsp");
	        dis.forward(request, response);
	    }
	}

	}
	


