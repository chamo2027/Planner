package review;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertServletG")
public class InsertServletG extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    String event = request.getParameter("event");
	    String rating = request.getParameter("rating"); 
	    String comment = request.getParameter("comment");
	    

	    boolean isTrue;
	    
	    isTrue = reviewControl.insertData(name, email, event, rating, comment);
	        
	    if(isTrue) {
	        String alertMessage = "Data inserted successfully";
	        response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='getAllServletG'</script>");
	    } else {
	        
	        RequestDispatcher dis = request.getRequestDispatcher("wrong.jsp");
	        dis.forward(request, response);
	    }
	}

}
