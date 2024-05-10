<%-- 
    Document   : register
    Created on : 03-May-2024, 19:35:19
    Author     : wwwkr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lapstore: Register Page</title>
        <%@include file="allComponent/allCss.jsp"%>
    </head>
    <body style="background-color: #f0f1f2;">
        <%@include file="allComponent/navbar.jsp" %>
        <div class="caontainer p-2">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                        
                            <h4 class="text-center">Register here</h4>

                            <c:if test="${not empty succMsg}">
                                <p class="text-center text-success">${succMsg }</p>
                                <c:remove var="succMsg" scope="session"/>
                            </c:if>
                                
                                
                             <c:if test="${not empty failedMsg}">
                                <p class="text-center text-danger">${failedMsg }</p> 
                                <c:remove var="failedMsg" scope="session"/>
                             </c:if>

                            <form action="RegisterServlet" method="POST">
                                <div class="form-group">
                                    <label>Enter name</label>
                                    <input type="text" class="form-control" required="required" name="name">

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" required="required" name="email">

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Phone number</label>
                                    <input type="number" class="form-control" id="exampleInputEmail1" required="required" name="phno">

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
                                </div>
                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
                                    <label class="form-check-label" for="exampleCheck1" >Agree terms & conditions</label>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="allComponent/footer.jsp" %>
    </body>
</html>
