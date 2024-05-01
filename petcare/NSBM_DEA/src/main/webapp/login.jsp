<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<%@include file="includes/head.jsp"%>
</head>
<body>
<%@include file="includes/navbar.jsp"%>

<div class="container">
  <div  class="card w-50 mx-auto my-5">
    <div class="card-header text-center">User Login</div>
      <div class="card-body">
        <form action="" method="post">
        
        <!-- login form enter the email address -->
        
           <div class="form-group">
             <label>Email Address</label>
             <input type="email" class="form-control" name="login-email" placeholder="Enter your email here" required>
           </div>
           <br>
        <!-- login form Password enter -->
        
            <div class="form-group">
             <label>Password</label>
             <input type="password" class="form-control" name="login-password" placeholder="*****************" required>
           </div>
           <br>
        <!-- Login Button code is given below -->
        
           <div class="text-center">
             <button type="submit" class="btn btn-primary">Login</button>
            
           </div>
           
        </form>
      </div>
  </div>
</div>

<!-- attached the footer JSP file -->
<%@include file="includes/footer.jsp"%>
</body>
</html>