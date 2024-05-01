<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration Page</title>
<%@include file="includes/head.jsp"%>
</head>
<body>
<%@include file="includes/navbar.jsp"%>
<div class="container">
  <div  class="card w-50 mx-auto my-5">
    <div class="card-header text-center">Registration Form</div>
    <br>
      <div class="card-body">
        
        <!-- Bootstrap registration form code given below .  -->
        
         <form class="row g-3" action="" method="get">
           
             <div class="col-md-6">
                <label for="inputEmail4" class="form-label">Email</label>
                <input type="email" class="form-control" id="inputEmail4" placeholder="name@gmail.com" required>
             </div>
             
             <div class="col-md-6">
                <label for="inputPassword4" class="form-label">Password</label>
                <input type="password" class="form-control" id="inputPassword4" placeholder="********" required>
             </div>
             
             <div class="col-12">
               <label for="inputAddress" class="form-label">Full Name</label>
               <input type="text" class="form-control" id="inputAddress" placeholder="M.A Mahinda Wickramasingha" required>
             </div>
             
            <div class="col-12">
               <label for="inputAddress2" class="form-label">Address </label>
               <input type="text" class="form-control" id="inputAddress2" placeholder="7/30, Addikaram watha, Mirigama" required>
            </div>
            
            <div class="col-md-6">
                <label for="inputCity" class="form-label">City</label>
                <input type="text" class="form-control" id="inputCity" required>
            </div>
            
            <div class="col-md-4">
                 <label for="inputState" class="form-label">Province</label>
                 <select id="inputState" class="form-select">
                      <option selected>Choose...</option>
                         <option>Western Province</option>
                         <option>Northern Province</option>
                         <option>North Western Province</option>
                         <option>North Central Province</option>
                         <option>Central Province</option>
                         <option>Sabaragamuwa Province</option>
                         <option>Eastern Province</option>
                         <option>Uva Province</option>
                         <option>Southern Province</option>
                      
                      
                 </select>
           </div>
           
          
  
          <div class="col-12">
             <div class="form-check">
                 <input class="form-check-input" type="checkbox" id="gridCheck" required>
                   <label class="form-check-label" for="gridCheck">
                     Check me out
                   </label>
            </div>
          </div>
          
   <div class="col-12">
    <button type="submit" class="btn btn-primary">Sign in</button>
    
  </div>
  
</form>
   
     </div>
    </div>
</div>