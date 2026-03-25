package onlineEventPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String id = request.getParameter("id");
	    String name = request.getParameter("name");
	    String telephone_number = request.getParameter("telephone_number");
	    String type = request.getParameter("type");
	    String date = request.getParameter("date");
	    String location = request.getParameter("location");
	    String description = request.getParameter("description");

	    // Get checkbox values
	    String[] serviceArray = request.getParameterValues("services");
	    String services1 = "";
	    if (serviceArray != null) {
	        services1 = String.join(", ", serviceArray); 
	    }

	    // call update method
	    boolean isTrue = eventControl.updatedata(id, name, telephone_number, type, date, location, services1, description); // ✅ use services1

	    if (isTrue) {
	        response.getWriter().println("<script>alert('Event updated successfully!'); window.location.href='getAllservlet';</script>");
	    } else {
	        RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
	        dis2.forward(request, response);
	    }
	}

}
