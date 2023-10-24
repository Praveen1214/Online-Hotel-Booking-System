package RegisterController;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;

public class RegisteredUserInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// get the details from view page (RegisteredUserInsert.jsp)
		

		String Name = request.getParameter("name");             //catch the values using request.getParamiter()function 
		String Address = request.getParameter("address");       //assign them to new variables
		String Email = request.getParameter("email");
		String ContactNumber = request.getParameter("contact_number");
		
		String username = request.getParameter("username");          
		String password = request.getParameter("password");          

		
		
		
		
		// get the message of insertion details to database whether successful or not
		// from RegisteredUserDButil class

		boolean Insertionsuccess;

		Insertionsuccess = RegisteredUserDButil.InsertRegistereduser(Name, Address, Email, ContactNumber,username,password); 

		if (Insertionsuccess == true) {

			jakarta.servlet.RequestDispatcher dis = request.getRequestDispatcher("InsertionSuccess.jsp");
			dis.forward(request, response);

		}

		else {
			jakarta.servlet.RequestDispatcher dis2 = request.getRequestDispatcher("InsertionUnsuccess.jsp");
			dis2.forward(request, response);
		}

	}

}
