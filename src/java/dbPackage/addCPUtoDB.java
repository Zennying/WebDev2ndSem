package dbPackage;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException; /*jakarta. instead of java. since Tomcat 10 was used*/
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection; /* Importing SQL Connection Package*/
import java.sql.PreparedStatement; /* Importing SQL Connection Package*/

public class addCPUtoDB extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection con = null;

        String ProductName = request.getParameter("ProductName"); /* Variable Declaration and request.getParameter to get the data from the input fields found in cpuAddPage.jsp! */
        String ProductBrand = request.getParameter("ProductBrand"); /* Variable Declaration and request.getParameter to get the data from the input fields found in cpuAddPage.jsp! */
        int ProductStock = Integer.parseInt(request.getParameter("ProductStock")); /* Variable Declaration and request.getParameter to get the data from the input fields found in cpuAddPage.jsp! */
        float ProductPrice = Float.parseFloat(request.getParameter("ProductPrice")); /* Variable Declaration and request.getParameter to get the data from the input fields found in cpuAddPage.jsp! */

        String ProductID = "0000" + ProductBrand + ProductName.replaceAll(" ", "-"); /* Variable Declaration then Concatenated "0000", ProductBrand and ProductName with .replaceAll to change spaces to dash to make a "Product ID" */

        try {
            con = dbConnection.initializeDatabase(); /* Database Initialize by connecting to it */
            
            /* PreparedStatement for INSERT command to put data from cpuAddPage to Database */
            PreparedStatement st = con.prepareStatement("INSERT INTO cpuproducttable (ProductID, ProductBrand, ProductName, ProductStock, ProductPrice) VALUES (?,?,?,?,?)");

            st.setString(1, ProductID);
            st.setString(2, ProductBrand);
            st.setString(3, ProductName);
            st.setInt(4, ProductStock);
            st.setFloat(5, ProductPrice);

            st.executeUpdate(); /* executeUpdate() = execute inserting data to the table in the database */

            // Close all the connections
            st.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        RequestDispatcher rd = request.getRequestDispatcher("/itemInventory/productInventory/cpuInventoryTable/cpuInventoryTable.jsp");
        rd.forward(request, response);
    }
}
