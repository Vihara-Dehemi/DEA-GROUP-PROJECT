<%-- 
    Document   : index.jsp
    Created on : 17-Apr-2024, 20:17:45
    Author     : 15U560
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FurryFriends:Index</title>
        <%@include file="all_component/allCSS.jsp"%>
        <style type="text/css">
 .back-img{
     background:url(images/pets.jpg);
     height:60vh;
     width:100%;
     background-repeat:no-repeat;
     background-size:cover;
     
 }
 .crd-ho:hover{
     background-color:#BDBDBD;
 }
    </style>        
    </head>
    <body>
        <%@include file="all_component/navbar.jsp"%>
        <div class="container-fluid back-img">
            <h2 class="text-center text-danger">Pets Essentials</h2>
        </div><br>
 <!--Start most selling products-->
        <div class="container">
            <h3 class="text-center">Most Selling Items</h3>
            <div class="row">
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body">
                         <img alt="" src="Items/Purina one Cat food.jpeg" style="width:200px; height:200px;" class="img-thumblin">
                <p>Purina-One Adult Cat Food 500g</p></div>
                        <p>Categories:New</p>
                        <div class="row ">
                            <a href="" class="btn btn-danger btn-sm ml-1">Add To Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">3500RS</a>
                        </div>
                        </div>
                     </div>
                
                 <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body">
                         <img alt="" src="Items/Purina one Cat food.jpeg" style="width:200px; height:200px;" class="img-thumblin">
                <p>Purina-One Adult Cat Food 500g</p></div>
                        <p>Categories:New</p>
                        <div class="row ">
                            <a href="" class="btn btn-danger btn-sm ml-1">Add To Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">3500RS</a>
                        </div>
                        </div>
                     </div>
                
                 <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body">
                         <img alt="" src="Items/Purina one Cat food.jpeg" style="width:200px; height:200px;" class="img-thumblin">
                <p>Purina-One Adult Cat Food 500g</p></div>
                        <p>Categories:New</p>
                        <div class="row ">
                            <a href="" class="btn btn-danger btn-sm ml-1">Add To Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">3500RS</a>
                        </div>
                        </div>
                     </div>
                 <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body">
                         <img alt="" src="Items/Purina one Cat food.jpeg" style="width:200px; height:200px;" class="img-thumblin">
                <p>Purina-One Adult Cat Food 500g</p></div>
                        <p>Categories:New</p>
                        <div class="row ">
                            <a href="" class="btn btn-danger btn-sm ml-1">Add To Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">3500RS</a>
                        </div>
                        </div>
                     </div>
                 <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body">
                         <img alt="" src="Items/Purina one Cat food.jpeg" style="width:200px; height:200px;" class="img-thumblin">
                <p>Purina-One Adult Cat Food 500g</p></div>
                        <p>Categories:New</p>
                        <div class="row ">
                            <a href="" class="btn btn-danger btn-sm ml-1">Add To Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">3500RS</a>
                        </div>
                        </div>
                     </div>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body">
                         <img alt="" src="Items/Purina one Cat food.jpeg" style="width:200px; height:200px;" class="img-thumblin">
                <p>Purina-One Adult Cat Food 500g</p></div>
                        <p>Categories:New</p>
                        <div class="row ">
                            <a href="" class="btn btn-danger btn-sm ml-1">Add To Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">3500RS</a>
                        </div>
                        </div>
                     </div>
            </div><br><br>
            <div class="text-center mt-1">
                <a href="" class="btn btn-danger btn-sm text-white">View All </a> </div>
        </div> 
 <!--End most selling products--> 
 <%@include file="all_component/Footer.jsp"%>
    </body>
</html>

 