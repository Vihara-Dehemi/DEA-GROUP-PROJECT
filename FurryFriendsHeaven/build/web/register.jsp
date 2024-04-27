<%-- 
    Document   : register
    Created on : 20-Apr-2024, 20:15:33
    Author     : 15U560
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
         <%@include file="all_component/allCSS.jsp"%>
    </head>
    <body style="background-color:#BDBDBD">
       <%@include file="all_component/navbar.jsp"%>
       <div class="container p-2">
           <div class="row">
               <div class="col-md-4 offset-md-4">
                   <div class="card">
                       <div class="card-body">
                           <h4 class="text-center">Registration Page</h4>
                           <form>
  
                               
    <div class="form-group">
    <label for="exampleInputEmail1">Enter Full Name</label>
    <input type="text" class="form-control" id="exampleInputName" aria-describedby="" required="required" placeholder="">
   
   </div>
                               
   <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="" required="required" placeholder="">
   
   </div>
          
                               
   <div class="form-group">
    <label for="exampleInputEmail1">Mobile Number</label>
    <input type="number" class="form-control" id="exampleInputNumber" aria-describedby="" required="required" placeholder="">
   
   </div>
          
   <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" required="required" placeholder="">
   </div>
                               
   <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
   </div>
   <button type="submit" class="btn btn-primary">Submit</button>
</form>
                           
                       </div>
               </div>
           </div>
       </div>
    </body>
    <%@include file="all_component/Footer.jsp"%>
   
</html>
