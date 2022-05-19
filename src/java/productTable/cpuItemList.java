/*
    DONT TOUCH THIS OR THE COOKIE MONSTER WILL EAT YOU
    This is a servlet to redirect user when
    user clicks the dropdown button in the navbar thru Product Inventory -> CPU
 */

package productTable;

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
public class cpuItemList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        RequestDispatcher rd = request.getRequestDispatcher("/itemInventory/productInventory/cpuInventoryTable/cpuInventoryTable.jsp");
        rd.forward(request, response);
    }

}
