package contact;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CUpdateServlet")
public class CUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CUpdateServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String contactId = request.getParameter("contactId");
	        String firstName = request.getParameter("firstName");
	        String lastName = request.getParameter("lastName");
	        String eMail = request.getParameter("eMail");
	        String phoneNumber = request.getParameter("phoneNumber");
	        String comment = request.getParameter("comment");

	        boolean isTrue;
	        
	        isTrue= ContactControl.updateData(contactId, firstName, lastName, eMail, phoneNumber, comment);

	        if (isTrue == true) {
	        	List<ContactModel> contactDetails = ContactModel.getById(contactId);
	        	request.setAttribute("contactDetails", contactDetails);
	        	
	        	String alertMessage = "Data updated successfully";
	        	response.getWriter().println("<script>alert('"+alertMessage+"'); window.location.href='CGetAllServlet';</script>");
	            
	        } else {
	            
	            RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
	            dis2.forward(request, response);
	        }
	    }
	}


