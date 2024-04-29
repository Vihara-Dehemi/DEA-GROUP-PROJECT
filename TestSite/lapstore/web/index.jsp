<%-- 
    Document   : index
    Created on : 17-Apr-2024, 10:27:31
    Author     : wwwkr
--%>


<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="mypackage.user"%>
<%@page import="mypackage.LapDtls"%>
<%@page import="java.util.List"%>
<%@page import="admin.LapDAOImpl"%>
<%@page import="mypackage.DBconnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lapstore: Index</title>
        <%@include file="allComponent/allCss.jsp" %>
        <style type="text/css">
            .back-img {

                background: url("img/lap2.jpg");
                height: 50vh;
                width: 100%;
                background-size: cover;
                background-repeat: no-repeat;

            }
            .crd-ho:hover{
                background-color:  #18ffff;
            }

            

        </style>

    </head>
    <body style="background-color: #e1f5fe ;">

    

    <%
        user u = (user) session.getAttribute("userobj");

    %>
    <%@include file="allComponent/navbar.jsp" %>
    <div class="container-fluid back-img">
        <h2 class="text-center text-danger">laptop Store</h2>
    </div>

    <!-- start MSI-->

    <div class="container">
        <h3 class="text-center">Dell</h3>
        <div class="row">

            <%                    LapDAOImpl dao3 = new LapDAOImpl(DBconnect.getConn());
                List<LapDtls> list3 = dao3.getMSINewLap();
                for (LapDtls b : list3) {%>
            <div class="card crd-ho">
                <div class="col-md-3">
                    <div class="card-body text-center">
                        <img alt="" src="laptop/<%=b.getPhotoName()%>" style="width:150px;height: 200px " class="img-thumblin">
                        <p><%=b.getlapName()%></p>
                        <div class="row">
                            <%
                                if (u == null) {%>
                            <a href="login.jsp" class="btn btn-danger ml-5"><i class="fa-solid fa-cart-shopping"></i> Add cart</a>
                            <%} else {%>
                            <a href="cart?bid=<%=b.getlapId()%>&&uid=<%=u.getId()%>" class="btn btn-danger ml-5"><i class="fa-solid fa-cart-shopping"></i> Add cart</a>
                            <%}
                            %>

                            <a href="" class="btn btn-primary  ml-2 "><i class="fa-solid fa-dollar-sign"></i><%=b.getPrice()%></a>
                        </div>
                    </div>
                </div>
            </div>
            <%}

            %>
        </div>

        <div class="text-center mt-3 mb-3">
            <a href="all_msi.jsp" class="btn btn-danger btn-sm text-white">View All</a>

        </div>    
    </div>

    <!-- End MSI-->
    <hr>
    <!-- start Asus-->

    <div class="container">
        <h3 class="text-center">Dell</h3>
        <div class="row">

            <%                    LapDAOImpl dao2 = new LapDAOImpl(DBconnect.getConn());
                List<LapDtls> list2 = dao2.getASUSNewLap();
                for (LapDtls b : list2) {%>
            <div class="card crd-ho">
                <div class="col-md-3">
                    <div class="card-body text-center">
                        <img alt="" src="laptop/<%=b.getPhotoName()%>" style="width:150px;height: 200px " class="img-thumblin">
                        <p><%=b.getlapName()%></p>
                        <div class="row">
                            <%
                                if (u == null) {%>
                            <a href="login.jsp" class="btn btn-danger ml-5"><i class="fa-solid fa-cart-shopping"></i> Add cart</a>
                            <%} else {%>
                            <a href="cart?bid=<%=b.getlapId()%>&&uid=<%=u.getId()%>" class="btn btn-danger ml-5"><i class="fa-solid fa-cart-shopping"></i> Add cart</a>
                            <%}
                            %>
                            <a href="" class="btn btn-primary  ml-2 "><i class="fa-solid fa-dollar-sign"></i><%=b.getPrice()%></a>
                        </div>
                    </div>
                </div>
            </div>
            <%}

            %>
        </div>

        <div class="text-center mt-3 mb-3">
            <a href="all_asus.jsp" class="btn btn-danger btn-sm text-white">View All</a>

        </div>    
    </div>

    <!-- End Asus-->

    <hr>

    <!-- Dell start-->

    <div class="container">
        <h3 class="text-center">Dell</h3>
        <div class="row">

            <%                    LapDAOImpl dao = new LapDAOImpl(DBconnect.getConn());
                List<LapDtls> list = dao.getNewLap();
                for (LapDtls b : list) {%>
            <div class="card crd-ho">
                <div class="col-md-3">
                    <div class="card-body text-center">
                        <img alt="" src="laptop/<%=b.getPhotoName()%>" style="width:150px;height: 200px " class="img-thumblin">
                        <p><%=b.getlapName()%></p>
                        <div class="row">
                            <%
                                if (u == null) {%>
                            <a href="login.jsp" class="btn btn-danger ml-5"><i class="fa-solid fa-cart-shopping"></i> Add cart</a>
                            <%} else {%>
                            <a href="cart?bid=<%=b.getlapId()%> && uid=<%=u.getId()%>" class="btn btn-danger ml-5"><i class="fa-solid fa-cart-shopping"></i> Add cart</a>
                            <%}
                            %>
                            <a href="" class="btn btn-primary  ml-2 "><i class="fa-solid fa-dollar-sign"></i><%=b.getPrice()%></a>
                        </div>
                    </div>
                </div>
            </div>
            <%}

            %>
        </div>

        <div class="text-center mt-3 mb-3">
            <a href="all_dell.jsp" class="btn btn-danger btn-sm text-white">View All</a>

        </div>    
    </div>
    <!-- End Dell-->

    <%@include file="allComponent/footer.jsp" %>        
</body>
</html>
