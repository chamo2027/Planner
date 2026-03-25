package onlineEventPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/insertServlet")
public class insertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String telephone_number = request.getParameter("telephone_number");
		String type = request.getParameter("type");
		String date = request.getParameter("date");
		String location = request.getParameter("location");
		String services = request.getParameter("services");
		String description = request.getParameter("description");
		
		String[] serviceArray = request.getParameterValues("services");
		String services1 = "";  // this will hold all selected services as a single string

		if (serviceArray != null) {
		    services1 = String.join(", ", serviceArray);  // Combine values like: "Music, DJ, Food"
		}
 
		
		
		boolean isTrue;
		
		isTrue = eventControl.insertdata (name, telephone_number, type, date, location, services1,  description);
		
		if(isTrue == true) {
			
			 // Get only the last inserted event
            List<eventModel> lastEvent = eventControl.getLastInsertedEvent();
            request.setAttribute("lastevent", lastEvent);
			
			String alertmessage = "Data Insert Successful";
			response.getWriter().println("<script> alert('"+alertmessage+"'); window.location.href = 'getAllservlet'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request,  response);
		}
		
		
	}

}
