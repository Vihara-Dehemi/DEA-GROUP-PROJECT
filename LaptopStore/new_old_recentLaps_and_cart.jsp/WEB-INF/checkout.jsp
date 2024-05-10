<%-- 
    Document   : checkout
    Created on : May 10, 2024, 6:28:45 PM
    Author     : vihan
--%>

<%@page import="java.util.List"%>
<%@page import="entity.Cart"%>
<%@page import="entity.user"%>
<%@page import="DAO.CartDAOImpl"%>
<%@page import="DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Page</title>
        <%@include file="allComponent/allCss.jsp" %>
    </head>
    <body style="background-color:#f7f7f7;">
        <%@include file="allComponent/navbar.jsp" %>

        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"> </c:redirect>  
        </c:if>

        <c:if test="${not empty succMsg}">
            <div class="alert alert-success" role="alert">
               ${succMsg}
            </div>
            <c:remove var="succMsg" scope="session"/>
        </c:if>
        
        <c:if test="${not empty failedMsg}">
            <div class="alert alert-danger" role="alert">
                ${failedMsg}
            </div>
            <c:remove var="failedMsg" scope="session"/>
        </c:if>

        <div class="container">
            <div class="row p-2">
                <div class="col-md-6">

                    <div class="card bg-white">
                        <div class="card-body">
                            <h3 class="text-center text-success">Your selected item</h3>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">Laptop Name</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Action</th>

                                    </tr>
                                </thead>
                                <tbody>

                                    <%
                                        user u = (user) session.getAttribute("userobj");
                                        CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
                                        List<Cart> cart = dao.getLapByUser(u.getId());
                                        Double totalPrice = 0.00;
                                        for (Cart c : cart) {
                                            totalPrice = c.getTottalPrice();

                                    %>

                                    <tr>
                                        <th scope="row"><%=c.getLapName()%></th>
                                        <td><%=c.getPrice()%></td>
                                        <td>
                                            <a href="RemoveCartLap?bid=<%=c.getBid()%>&&uid=<%=c.getUserId()%>" class="btn btn-sm btn-danger">Remove</a>
                                        </td>
                                    </tr>
                                    <%}
                                    %>
                                    <tr>
                                        <td>Total Price</td>
                                        <td></td>

                                        <td><%=totalPrice%></td>
                                    </tr>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center text-success">Your Details</h3>
                            <form>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label>Name</label>
                                        <input type="text" class="form-control" value="<%=u.getName()%>" readonly="readonly">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">Email</label>
                                        <input type="email" class="form-control" value="<%=u.getEmail()%>" readonly="readonly">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label>Phone Number</label>
                                        <input type="number" class="form-control" value="<%=u.getPhno()%>" readonly="readonly">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>Address</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label>Landmark</label>
                                        <input type="text" class="form-control">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>City</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label>Pin code</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Payment Mode</label>
                                    <select class="form-control">
                                        <option>---select---</option>
                                        <option>Cash on delivery</option>
                                    </select>
                                </div>
                                <div class="text-center">
                                    <button class="btn btn-warning">Order Now</button>
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
