<%-- 
    Document   : cart
    Created on : 28-Apr-2024, 10:44:19
    Author     : wwwkr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Page</title>
        <%@include file="allComponent/allCss.jsp" %>
    </head>
    <body style="background-color: #e1f5fe;">
        <%@include file="allComponent/navbar.jsp" %>
        <div class="container">
            <div class="row p-2">
                <div class="col-md-6">

                    <div class="card bg-white">
                        <div class="card-body">
                            <h3 class="text-center text-success">Your item</h3>
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">First</th>
                                        <th scope="col">Last</th>
                                        <th scope="col">Handle</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>Larry</td>
                                        <td>the Bird</td>
                                        <td>@twitter</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center text-success">Details</h3>
                            <form>
                                <div class="form-row">
                                    <div class="col">
                                        <label for="exampleInputEmail1">Name</label>
                                        <input type="text" class="form-control">
                                    </div>
                                    <div class="col">
                                        <label for="exampleInputEmail1">Email</label>
                                        <input type="email" class="form-control">
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="col">
                                        <label for="exampleInputEmail1">Phone</label>
                                        <input type="text" class="form-control">
                                    </div>
                                    <div class="col">
                                        <label for="exampleInputEmail1">Address</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col">
                                        <label for="exampleInputEmail1">City</label>
                                        <input type="text" class="form-control">
                                    </div>
                                    <div class="col">
                                        <label for="exampleInputEmail1">Pin Code</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Payment Mode</label>

                                    <select class="form-control">
                                        <option>--select--</option>
                                        <option>Cash on delivery</option>
                                    </select>
                                </div>  
                                <div class="text-center">
                                    <button class="btn btn-warning">Order now</button>
                                    <a href="index.jsp" class="btn btn-success">Continue Shopping</a>
                                </div>



                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>
