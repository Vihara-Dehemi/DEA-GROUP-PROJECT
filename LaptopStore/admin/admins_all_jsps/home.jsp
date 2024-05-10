<%-- 
    Document   : adminhome
    Created on : 16-Apr-2024, 07:21:44
    Author     : wwwkr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
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

        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp"/>
        </c:if>

        <h3 class="text-center mt-2">Hello Admin</h3>
        <div class="caontainer">
            <div class="row p-5">
                <div class="col-md-3">
                    <a href="addLap.jsp">
                        <div class="card">
                            <div class="card-body text-center" >
                                <i class="fa-solid fa-laptop-medical fa-3x"></i><br> 
                                <h4>Add Item</h4>
                                ............
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="allLaps.jsp">
                        <div class="card">
                            <div class="card-body text-center" >
                                <i class="fa-solid fa-house-laptop fa-3x text-danger"></i><br> 
                                <h4>All Items</h4>
                                ............
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="order.jsp">
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
                    <a data-toggle="modal" data-target="#exampleModal">
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

        <!--Logout Modal-->

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="text-center">
                            <h4>Do you want logout !.</h4>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <a href="../LogoutServlet" type="button" class="btn btn-primary text-white">Logout</a>
                        </div>
                    </div>
                    <div class="modal-footer">

                    </div>
                </div>
            </div>
        </div>

        <!--End logout modal-->

        <div style="margin-top:220px ">
            <%@include file="footer.jsp" %></div>
    </body>
</html>
