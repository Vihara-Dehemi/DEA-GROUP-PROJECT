<%-- 
    Document   : allLaps
    Created on : 04-May-2024, 18:05:37
    Author     : wwwkr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Orders</title>
        <%@include file= "allCss.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <h3 class="text-center">Hello Admin</h3>
        <table class="table table-striped ">
            <thead class="bg-primary text-white">
                <tr>
                    <th scope="col">Order Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Address</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Laptop name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Payment type</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>Otto</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td>Otto</td>
                   <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                    <td>Otto</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    
                </tr>
            </tbody>
        </table>
        <div style="margin-top:220px ">
            <%@include file="footer.jsp" %></div>
    </body>
</html>
