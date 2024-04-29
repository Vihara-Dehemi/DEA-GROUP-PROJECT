<%-- 
    Document   : register
    Created on : 17-Apr-2024, 14:51:20
    Author     : wwwkr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lapstore: Register</title>
        <%@include file="allComponent/allCss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2;">
        <%@include file="allComponent/navbar.jsp" %>

        <div class="container p-2">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center">Register</h4>
                            
                            <c:if test="${not empty succMsg}">
                                <p class="text-center text-success">${succMsg }</p>
                                <c:remove var="succMsg"></c:remove>
                            </c:if>
                            
                                <c:if test="${not empty failedMsg}">
                                    <p class="text-center text-danger">${failedMsg }</p>
                                    <c:remove var="failedMsg"></c:remove>
                                </c:if>
                            
                            <form action="RegisterServlet" method="post">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Name</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                           required="required" name="name">                                   
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                           required="required" name="email">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Phone No</label>
                                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                           required="required" name="phno">                                   
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1"
                                           required="required" name="password">
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
                                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
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
