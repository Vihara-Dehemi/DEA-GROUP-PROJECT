<%-- 
    Document   : allPet
    Created on : 16-Apr-2024, 08:04:28
    Author     : wwwkr
--%>

<%@page import="java.util.List"%>
<%@page import="mypackage.LapDtls"%>
<%@page import="mypackage.DBconnect"%>
<%@page import="admin.LapDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: All Items</title>
        <%@include file= "allCss.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <h3 class="text-center">Hello Admin</h3>

        <c:if test="${not empty succMsg}">
            <h5 class="text-center text-success">${succMsg}</h5>
            <c:remove var="succMsg" scope="session"/>
        </c:if>
        <c:if test="${not empty failedMsg}">
            <h5 class="text-center text-danger">${failedMsg}</h5>
            <c:remove var="sfailedMsg" scope="session"/>
        </c:if>
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp"/>
        </c:if>

        <table class="table table-striped">
            <thead class="bg-primary text-white">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Image</th>
                    <th scope="col">Category</th>
                    <th scope="col">Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">2</th>
                    <td><img src="../laptop/la.jpg" style="width: 50px;height: 50px;"></td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td>Otto</td>

                    <td>
                        <a href="#" class="btn btn-sm btn-primary">Edit</a>
                        <a href="#" class="btn btn-sm btn-danger">Delete</a>
                    </td>
                </tr>

                <%
                    LapDAOImpl dao = new LapDAOImpl(DBconnect.getConn());
                    List<LapDtls> list = dao.getAllLaps();
                    for (LapDtls a : list) {
                %>        
                <tr>
                    <td><%=a.getlapId()%></td>
                    <td><img src="../lapImg/<%=a.getPhotoName()%>" style="width: 50px;height: 50px;"></td>
                    <td><%=a.getCategory()%></td>
                    <td><%=a.getlapName()%></td>
                    <td><%=a.getPrice()%></td>

                    <td>
                        <a href="edit_lap.jsp?id=<%=a.getlapId()%>" class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i> Edit</a>
                        <a href="../LapDeleteServlet?id=<%=a.getlapId()%>" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash-can"></i> Delete</a>
                    </td>
                </tr>
                <%
                    }
                %>


            </tbody>
        </table>
        <div style="margin-top:280px ">
            <%@include file="footer.jsp" %></div>
    </body>
</html>
