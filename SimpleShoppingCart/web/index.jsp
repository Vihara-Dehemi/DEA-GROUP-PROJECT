<%-- 
    Document   : index
    Created on : Apr 25, 2024, 11:42:30 AM
    Author     : Hirushi
--%>

<%@page import="Cart.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Products</h1>
        <table border="1">
            <tr>
                <th>pid</th>
                <td>name</td>
                <th>price</th>
                <th>available quantity</th>
                <th>qty</th>
                <th>add to cart</th>
               
            </tr>
            <% ResultSet rs = DB.getConnection().createStatement().executeQuery("select * form products");
            while(rs.next()){
            %>
            <tr>
                <td><%=rs.getString("pid") %></td>
                <td><%=rs.getString("name") %></td>
                <td><%=rs.getString("price") %></td>
                <td><%=rs.getString("ava_qty") %></td>
            <form action="addtocart" method="post">
                <input type="hhidden" name="pid" value="<%=rs.getString("pid") %>" />
                <td><input type="text" name="qty" /></td>
                <td><input type="submit" value="Add to Cart" /></td>
            </form>
            </tr>
            <% } %>
        </table>   
    </body>
    
    <br/>
    <form action="ShoppingCart.jsp">
        <input type="submit" value="Shopping Cart" />
    </form>
</html>
