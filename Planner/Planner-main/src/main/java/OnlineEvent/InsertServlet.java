package OnlineEvent;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String contactnumber = request.getParameter("contactnumber");
		LocalDate bday = LocalDate.parse(request.getParameter("bday"));
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		
		boolean isTrue;
		
		isTrue = ProfileController.insertdata(username, email, contactnumber, bday, password, repassword);
		
		if(isTrue==true) {
			String alertMessage = "Youer Account Has Create Successfull";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='login.jsp'</script>");
		}
		else {
			String alertMessage = "Data Insert Unsuccessfull";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='createacc.jsp'</script>");
			
		}
	
	}

}
