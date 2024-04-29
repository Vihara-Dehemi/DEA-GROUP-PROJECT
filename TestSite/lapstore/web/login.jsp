<%-- 
    Document   : login
    Created on : 17-Apr-2024, 15:19:49
    Author     : wwwkr
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lapstore: Login</title>
        <%@include file="allComponent/allCss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2;">
        <%@include file="allComponent/navbar.jsp" %>
        <div class="container">
            <div class="row mt-2">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center"> Login</h3>

                            <c:if test="${not empty failedMsg}">
                                <h5 class="text-center text-danger">${failedMsg}</h5>
                                <c:remove var="failedMsg" scope="session"/>
                            </c:if>

                            <c:if test="${not empty succMsg}">
                                <h5 class="text-center text-success">${succMsg}</h5>
                                <c:remove var="failedMsg" scope="session"/>
                            </c:if>

                            <form action="LoginServlet" method="post">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                           required="required" name="email">                                
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1"
                                           required="required" name="password">
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Login</button><br>
                                    <a href="register.jsp">Create Account</a>
                                </div>    
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="allComponent/footer.jsp" %>
    </body>
</html>
