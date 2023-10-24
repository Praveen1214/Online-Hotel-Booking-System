package RegisterController;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        boolean isTrue = false;

        
            isTrue = RegisteredUserDButil.DeleteRegisteredUser(id);
        

        if (isTrue) {
        	
        	jakarta.servlet.RequestDispatcher dis=request.getRequestDispatcher("RegisteredUserInsert.jsp");
			 dis.forward(request,response);
            
        } else {
        	 jakarta.servlet.RequestDispatcher dis=request.getRequestDispatcher("InsertionUnsuccess.jsp");
			  dis.forward(request,response);
        }
    }
}
