<%-- 
    A page used to display the items found in the database :>
    DONT TOUCH or I'll
    turn you into an asado siopao, meow.
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base href="${pageContext.request.contextPath}/"/>
        <title>Home</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-5.0.2-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="../../topNavBar.jsp"/>
        <%
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/webdevproject", "root", ""); //Connects to the Database
                Statement st = con.createStatement(); //Creates an SQL Statement
                ResultSet rs = st.executeQuery("select * from cpuproducttable"); //ResultSet is used to fetch the data thru executeQuery followed by select *
        %>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">Product ID</th>
                    <th scope="col">Product Brand</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Number of Stock</th>
                    <th scope="col">Product Price</th>
                </tr>
            </thead>
            <tbody>
                <% while(rs.next()){ %>
                <tr>
                    <TD> <%= rs.getString(1) %></td> <%-- getString(column) is used to get the data from what column is need in the table found in database --%>
                    <TD> <%= rs.getString(2) %></TD> <%-- getString(column) is used to get the data from what column is need in the table found in database --%>
                    <TD> <%= rs.getString(3) %></TD> <%-- getString(column) is used to get the data from what column is need in the table found in database --%>
                    <TD> <%= rs.getString(4) %></TD> <%-- getString(column) is used to get the data from what column is need in the table found in database --%> 
                    <TD> <%= rs.getString(5) %></TD> <%-- getString(column) is used to get the data from what column is need in the table found in database --%>
                </tr>
                <% } %>
            </tbody>
        </table>
    </table>
</body>
</html>
