package OnlineEvent;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		List<Profile> cusDetails = ProfileController.validate(email, password);
		
		 if (!cusDetails.isEmpty()) {
		        
			 request.getSession().setAttribute("cusDetails", cusDetails);
			 response.sendRedirect("Home.jsp");
		    } else {
		       
		        String alertMessage = "Invalid Email or Password";
				response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='login.jsp'</script>");
		    }

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
