package OnlineEvent;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		boolean isTrue;
		isTrue = ProfileController.deleteUser(id);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("createacc.jsp");
			dis.forward(request, response);
		}
		else {
			List<Profile> cusDetails = ProfileController.getUpdateDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			String alertMessage = "Profile Delete Unsuccessfull";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='useracc.jsp'</script>");
		}
	}

}
