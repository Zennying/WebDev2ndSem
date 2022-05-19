/*
    Basic Login, Don't touch for now or I'll eat you
 */
package portal.credentials;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author James
 */
public class StaffLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String emailCredential = request.getParameter("emailCredential"); /* Variable Declaration and request.getParameter to get the data from the input fields found in userPortal.jsp! */
        
        request.getSession().setAttribute("emailCredential", emailCredential); /* take the value and store it in a session */
        
        RequestDispatcher rd = request.getRequestDispatcher("/itemInventory/ItemInventoryIndex.jsp"); /* DON'T TOUCH THIS UwU */
        rd.forward(request, response);
    }
}
