package RegisterController;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import javax.servlet.RequestDispatcher;


public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
		//get details from database and assign them to variables 
		String id= request.getParameter("id");
		String name= request.getParameter("name");
		String address= request.getParameter("address");
		String email= request.getParameter("email");
		String phone= request.getParameter("contact_number");

		
		
		boolean isTrue;
		// check whether updated data insert to database 
		isTrue=RegisteredUserDButil.UpdateRegisteredUser(id, name, address, email, phone);
		
		  if(isTrue==true) {
			  
			  jakarta.servlet.RequestDispatcher dis=request.getRequestDispatcher("InsertionSuccess.jsp");
			  dis.forward(request,response);
		  }
		  else {
			  jakarta.servlet.RequestDispatcher dis=request.getRequestDispatcher("InsertionUnsuccess.jsp");
			  dis.forward(request,response);
			  
		  }
		}

}
