package review;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateServletG")
public class updateServletG extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String event = request.getParameter("event");
        String rating = request.getParameter("rating");
        String comment = request.getParameter("comment");

        boolean isTrue;
        
        isTrue= reviewControl.updateData(id, name, email, event, rating, comment);

        if (isTrue == true) {
        	List<reviewModel> reviewDetails = reviewControl.getById(id);
        	request.setAttribute("reviewDetails", reviewDetails);
        	
        	String alertMessage = "Data updated successfully";
        	response.getWriter().println("<script>alert('"+alertMessage+"'); window.location.href='getAllServletG';</script>");
            
        } else {
            
            RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
            dis2.forward(request, response);
        }
    }

}
