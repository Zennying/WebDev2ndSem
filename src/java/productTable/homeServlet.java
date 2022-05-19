/*
    DONT TOUCH THIS OR THE COOKIE MONSTER WILL EAT YOU
    Used when a user clicked Home in the Navbar
 */

package productTable;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class homeServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        RequestDispatcher rd = request.getRequestDispatcher("/itemInventory/ItemInventoryIndex.jsp");
        rd.forward(request, response);
    }
}
