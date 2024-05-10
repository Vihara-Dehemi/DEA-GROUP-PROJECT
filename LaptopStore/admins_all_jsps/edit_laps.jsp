<%-- 
    Document   : addLap
    Created on : 04-May-2024, 18:00:59
    Author     : wwwkr
--%>

<%@page import="entity.LapDtls"%>
<%@page import="DAO.LapDAOImpl"%>
<%@page import="DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Edit Laptops</title>
        <%@include file= "allCss.jsp"%>
    </head>
    <body style="background-color: #f0f2f2;">
        <%@include file="navbar.jsp" %>
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center">Edit Laptops</h4>

                            

                            <%
                                int id = Integer.parseInt(request.getParameter("id"));
                                LapDAOImpl dao = new LapDAOImpl(DBConnect.getConn());
                                LapDtls b = dao.getLapById(id);


                            %>

                            <form action="../EditLapServlet" method="POST">
                                <input type="hidden" name="id" value="<%=b.getlapId()%>"/>

                                <div class="form-group">
                                    <label for="exampleInputName">Laptop Name</label>
                                    <input type="text" name="lname" class="form-control" value="<%=b.getLapName()%>"/>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputName">Price</label>
                                    <input type="text" name="price" class="form-control" value="<%=b.getPrice()%>"/>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputName">Status</label>
                                    <select name="lstatus" class="form-control">

                                        <% if ("Active".equals(b.getStatus())) {%>
                                        <option value="Active">Active</option> 
                                        <option value="Inactive">Inactive</option>
                                        
                                        <%} else {%>
                                         <option value="Inactive">Inactive</option>
                                         <option value="Active">Active</option> 
                                        <%}%>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">Update</button>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="margin-top:220px ">
            <%@include file="footer.jsp" %></div>
    </body>
</html>
