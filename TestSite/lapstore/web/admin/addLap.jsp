<%-- 
    Document   : addPet
    Created on : 16-Apr-2024, 08:04:07
    Author     : wwwkr
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Add Laptop</title>
        <%@include file= "allCss.jsp"%>
    </head>
    <body styel="background-color:#f0f2f2;">
        <%@include file="navbar.jsp" %>
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp"/>
        </c:if>
        <h3 class="text-center">Hello Admin, Add Items</h3>
        <div class="caontainer">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-3">
                        <div class="card-body mt-2">
                            
                            <c:if test="${not empty succMsg}">
                                <p class="text-center text-success">${succMsg}</p>
                                <c:remove var="succMsg" scope="session"/>
                            </c:if>
                            <c:if test="${not empty failedMsg}">
                                <p class="text-center text-danger">${failedMsg}</p>
                                <c:remove var="failedMsg" scope="session"/>
                            </c:if>
                            
                            <form action="../LapAdd " method="POST" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="exampleInputName">category</label>
                                    <select name="ltype" class="form-control">
                                        <option selected>--select--</option>
                                        <option value="New">MSI</option>
                                        <option value="New">ASUS</option> 
                                        <option value="New">DELL</option> 
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputName">Name</label>
                                    <input type="text" name="lname" class="form-control"/>
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputName">Price</label>
                                    <input type="text" name="price" class="form-control"/>
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
        <div style="margin-top:50px ">
            <%@include file="footer.jsp" %></div>
    </body>
</html>
