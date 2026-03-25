package contact;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CDeleteServlet")
public class CDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String contactId = request.getParameter("contactId");

        boolean isTrue;
        isTrue= ContactControl.deleteData(contactId);
        if (isTrue==true) {
        	String alertMessage="Deleted successfully";
            response.getWriter().println("<script>alert('"+alertMessage+"'); window.location.href='CGetAllServlet';</script>");
        } else {
        	List<ContactModel> contact= ContactModel.getById(contactId);
            request.setAttribute("contact", contact);
            RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
            dispatcher.forward(request, response);
        }
    }
	}


