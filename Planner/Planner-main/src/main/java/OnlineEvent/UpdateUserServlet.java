package OnlineEvent;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String contactnumber = request.getParameter("contactnumber");
		LocalDate bday = LocalDate.parse(request.getParameter("bday"));
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		
		boolean isTrue;
		
		isTrue = ProfileController.updateUser(id, username, email, contactnumber, bday, password, repassword);
		
		if(isTrue == true) {
			
			List<Profile> cusDetails = ProfileController.getUpdateDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useracc.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			List<Profile> cusDetails = ProfileController.getUpdateDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			String alertMessage = "Your Profile Update Unsuccessfull";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='useracc.jsp'</script>");
		}
	}

}
