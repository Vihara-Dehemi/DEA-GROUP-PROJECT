<%-- 
    Document   : all_old_laps
    Created on : May 10, 2024, 6:22:41 PM
    Author     : vihan
--%>

<%@page import="java.util.List"%>
<%@page import="entity.LapDtls"%>
<%@page import="DAO.LapDAOImpl"%>
<%@page import="DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Recent Laptops</title>
        <%@include file="allComponent/allCss.jsp" %>
        <style type="text/css">
            .crd-ho:hover{
                background-color: #fcf7f7; 
            }
        </style>
    </head>
    <body>
        <%@include file="allComponent/navbar.jsp" %>

        <div class="container-fluid">
            <div class="row p-3">

                    <%
                    LapDAOImpl dao = new LapDAOImpl(DBConnect.getConn());
                    List<LapDtls> list = dao.getAllOldLaps();
                    for (LapDtls b : list) {%>
                <div class="col-md-3">
                    <div class="card crd-ho mt-2">
                        <div class="card-body text-center">
                            <img alt="" src="laptop/<%=b.getPhotoName()%>" style="width:100px; height: 100px;" class="img-thumblin">
                            <p><%=b.getLapName()%></p>
                            <p>Categories:<%=b.getLapCategory()%></p>
                            <div class="row text-center">
                                
                                <a href="" class="btn btn-success btn-sm ml-5">View Details</a>
                                <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
                            </div>
                        </div>
                    </div>
                </div>
                <%}
                %>
                </div>
            </div>
        
    </body>
</html>
