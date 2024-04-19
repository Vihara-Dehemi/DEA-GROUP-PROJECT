<%-- 
    Document   : allPet
    Created on : 16-Apr-2024, 08:04:28
    Author     : wwwkr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: All Laptops</title>
        <%@include file= "allCss.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <h3 class="text-center">Hello Admin</h3>
        <table class="table table-striped">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Pet category</th>
      <th scope="col">Age</th>
      <th scope="col">Price</th>
      <th scope="col">Owner</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>Otto</td>
      
      <td>
          <a href="#" class="btn btn-sm btn-primary">Edit</a>
          <a href="#" class="btn btn-sm btn-danger">Delete</a>
      </td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td>Otto</td>
      
      <td>
          <a href="#" class="btn btn-sm btn-primary">Edit</a>
          <a href="#" class="btn btn-sm btn-danger">Delete</a>
      </td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>Otto</td>
      
      <td>
          <a href="#" class="btn btn-sm btn-primary">Edit</a>
          <a href="#" class="btn btn-sm btn-danger">Delete</a>
      </td>
    </tr>
  </tbody>
</table>
        <div style="margin-top:280px ">
            <%@include file="footer.jsp" %></div>
    </body>
</html>
