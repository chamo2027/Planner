package review;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteServletG")
public class deleteServletG extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");

        boolean isTrue;
        isTrue= reviewControl.deleteData(id);
        if (isTrue==true) {
        	String alertMessage="Deleted successfully";
            response.getWriter().println("<script>alert('"+alertMessage+"'); window.location.href='getAllServletG';</script>");
        } else {
        	List<reviewModel> reviews=reviewControl.getById(id);
            request.setAttribute("reviews", reviews);
            RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
            dispatcher.forward(request, response);
        }
	}

}
