<%-- 
    Document   : index
    Created on : 03-May-2024, 19:23:46
    Author     : wwwkr
--%>

<%@page import="entity.user"%>
<%@page import="java.util.List"%>
<%@page import="entity.LapDtls"%>
<%@page import="DAO.LapDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lapstore:Home Page</title>
        <%@include file="allComponent/allCss.jsp" %>
        <style type="text/css">
            .back.img{
                background: url("img/lap.jpeg");
                height: 50vh;
                width: 100%;
                background-size: cover;
                background-repeat: no-repeat;
            }
            .crd-ho:hover{
                background-color: #fcf7f7; 
            }
        </style>
    </head>

    <body style="background-color:#f7f7f7;">
        <%
            user u = (user) session.getAttribute("userobj");
        %>
        <%@include file="allComponent/navbar.jsp" %>
        <div class="container-fluid back img">
            <h2 class="text-center text-danger">Laptop store</h2>
        </div>


        <!---Start Recent Laptops-->

        <div class="container" >
            <h3 class="text-center">Recent Laptops</h3>
            <div class="row">

                <%
                    LapDAOImpl dao2 = new LapDAOImpl(DBConnect.getConn());
                    List<LapDtls> list2 = dao2.getRecentLap();
                    for (LapDtls b : list2) {%>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="laptop/<%=b.getPhotoName()%>" style="width:200px; height: 200px;" class="img-thumblin">
                            <p><%=b.getLapName()%></p>
                            <p>

                                <%
                                    if (b.getLapCategory().equals("Old")) {%>
                                Categories:<%=b.getLapCategory()%></p>
                            <div class="row text-center">
                                <a href="" class="btn btn-success btn-sm ml-5">View Details</a>
                                <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
                            </div>
                            <%} else {%>
                            Categories:<%=b.getLapCategory()%></p>
                            <div class="row text-center">
                                
                                <%if (u == null) {%>
                                   <a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i class="fa-solid fa-cart-plus"></i>Add</a>
                                <%} else {%>
                                    <a href="../CartServlet?bid=<%=b.getlapId() %>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-3"><i class="fa-solid fa-cart-plus"></i>Add</a>
                                 <%}
                                 %>
                                
                                <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                                <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
                            </div>
                            <%}
                            %>    
                        </div>
                    </div>
                </div>
                <% }
                %>  
            </div>
            <div class="text-center mt-2">
                <a href="all_recent_laps.jsp" class="btn btn-danger btn-sm text-white"> View All</a>
            </div>
        </div>

        <!---End Recent Laptops-->
        <hr>

        <!---Start New Laptops-->

        <div class="container" >
            <h3 class="text-center">New Laptops</h3>
            <div class="row">


                <%
                    LapDAOImpl dao = new LapDAOImpl(DBConnect.getConn());
                    List<LapDtls> list = dao.getNewLap();
                    for (LapDtls b : list) {%>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="laptop/<%=b.getPhotoName()%>" style="width:200px; height: 200px;" class="img-thumblin">
                            <p><%=b.getLapName()%></p>
                            <p>Categories:<%=b.getLapCategory()%></p>
                            <div class="row text-center">
                                <%if (u == null) {%>
                                   <a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i class="fa-solid fa-cart-plus"></i>Add</a>
                                <%} else {%>
                                    <a href="CartServlet?bid=<%=b.getlapId() %>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-3"><i class="fa-solid fa-cart-plus"></i>Add</a>
                                 <%}
                                 %>
                                
                                <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                                <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
                            </div>
                        </div>
                    </div>
                </div>
                <%}
                %>

            </div>
            <div class="text-center mt-2">
                <a href="all_new_laps.jsp" class="btn btn-danger btn-sm text-white"> View All</a>
            </div>
        </div>
        <!---End New Laptops-->
        <hr>
        <!---Start Old Laptops-->

        <div class="container" >
            <h3 class="text-center">Old Laptops</h3>
            <div class="row">

                <%
                    LapDAOImpl dao3 = new LapDAOImpl(DBConnect.getConn());
                    List<LapDtls> list3 = dao3.getOldLaps();
                    for (LapDtls b : list3) {%>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="laptop/<%=b.getPhotoName()%>" style="width:200px; height: 200px;" class="img-thumblin">
                            <p><%=b.getLapName()%></p>
                            <p><%=b.getLapCategory()%></p>
                            <div class="row text-center">

                                <a href="" class="btn btn-success btn-sm ml-5">View Details</a>
                                <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
                            </div>

                        </div>
                    </div>
                </div>
                <% }
                %>  
            </div>
            <div class="text-center mt-2">
                <a href="all_old_laps.jsp" class="btn btn-danger btn-sm text-white"> View All</a>
            </div>
        </div>
        <!---End Old Laptops-->

        <%@include file="allComponent/footer.jsp" %>
    </body>
</html>
