<%-- 
    Document   : addLap
    Created on : 04-May-2024, 18:00:59
    Author     : wwwkr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Add Laptops</title>
        <%@include file= "allCss.jsp"%>
    </head>
    <body style="background-color: #f0f2f2;">
        <%@include file="navbar.jsp" %>
        
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp"/>
        </c:if>
        
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center">Add Laptops</h4>

                            <c:if test="${not empty succMsg}">
                                <p class="text-center text-success">${succMsg}</p>
                                <c:remove var="succMsg" scope="session"/>
                            </c:if>
                            <c:if test="${not empty failedMsg}">
                                <p class="text-center text-danger">${failedMsg}</p>
                                <c:remove var="failedMsg" scope="session"/>
                            </c:if>

                            <form action="../LapAddServlet" method="POST" enctype="multipart/form-data">

                                <div class="form-group">
                                    <label for="exampleInputName">Laptop Name</label>
                                    <input type="text" name="lname" class="form-control"/>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputName">Price</label>
                                    <input type="text" name="price" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputName">Category</label>
                                    <select name="ltype" class="form-control">
                                        <option selected>--select--</option>
                                        <option value="New">New</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputName">Status</label>
                                    <select name="lstatus" class="form-control">
                                        <option selected>--select--</option>
                                        <option value="Active">Active</option>
                                        <option value="Inactive">Inactive</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputName">Upload Photo</label>
                                    <input type="file" name="limg" class="form-control-file" />
                                </div>
                                <button type="submit" class="btn btn-primary">Add</button>

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
