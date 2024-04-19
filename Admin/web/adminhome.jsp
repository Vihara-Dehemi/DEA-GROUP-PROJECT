<%-- 
    Document   : adminhome
    Created on : 16-Apr-2024, 07:21:44
    Author     : wwwkr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Home</title>
        <%@include file= "allCss.jsp"%>
        
        <style type="text/css">
            a{
                text-decoration: none;
                color: black;
            }
            a:hover {
                text-decoration: none;
                color:black;
            }
        </style>           
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <h3 class="text-center mt-2">Hello Admin</h3>
        <div class="caontainer">
            <div class="row p-5">
                <div class="col-md-3">
                    <a href="addLap.jsp">
                    <div class="card">
                        <div class="card-body text-center" >
                            <i class="fa-solid fa-laptop-medical fa-3x"></i><br> 
                            <h4>Add a Laptop</h4>
                            ............
                        </div>
                    </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="allLap.jsp">
                    <div class="card">
                        <div class="card-body text-center" >
                            <i class="fa-solid fa-house-laptop fa-3x text-danger"></i><br> 
                            <h4>All Laptops</h4>
                            ............
                        </div>
                    </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="Orders.jsp">
                    <div class="card">
                        <div class="card-body text-center" >
                            <i class="fa-solid fa-box-open fa-3x text-warning"></i><br> 
                            <h4>Orders</h4>
                            ..........
                        </div>
                    </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a>
                    <div class="card">
                        <div class="card-body text-center" >
                            <i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i><br> 
                            <h4>Logout</h4>
                            ..........
                        </div>
                    </div>
                    </a>
                </div>                
            </div>

        </div> 
        <div style="margin-top:220px ">
            <%@include file="footer.jsp" %></div>
    </body>
</html>
