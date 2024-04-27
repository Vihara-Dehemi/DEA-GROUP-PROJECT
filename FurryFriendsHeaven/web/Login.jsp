<%-- 
    Document   : Login
    Created on : 21-Apr-2024, 07:05:23
    Author     : 15U560
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
         <%@include file="all_component/allCSS.jsp"%>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp"%>
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center">Login </h3>
                            <form>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" required="required" placeholder="Enter Email">
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" required="required" placeholder="Password">
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
   
  </div>
                                <div class="text-center"> <button type="submit" class="btn btn-primary">Login</button><br>
                                    <p>New?</p><br>
                                    <a href="register.jsp"> Create Account</a>
                                
                                </div>
</form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <%@include file="all_component/Footer.jsp"%>
</html>
