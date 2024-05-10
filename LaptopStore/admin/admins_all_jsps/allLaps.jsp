<%-- 
    Document   : allLaps
    Created on : 04-May-2024, 18:05:37
    Author     : wwwkr
--%>

<%@page import="java.util.List"%>
<%@page import="entity.LapDtls"%>
<%@page import="DAO.LapDAOImpl"%>
<%@page import="DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: All laptops</title>
        <%@include file= "allCss.jsp"%>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <h3 class="text-center">Hello Admin</h3>

        <c:if test="${not empty succMsg}">
            <h3 class="text-center text-success">${succMsg}</h3>
            <c:remove var="succMsg" scope="session"/>
        </c:if>
        <c:if test="${not empty failedMsg}">
            <h3 class="text-center text-danger">${failedMsg}</h3>
            <c:remove var="failedMsg" scope="session"/>
        </c:if>

        <table class="table table-striped ">
            <thead class="bg-primary text-white">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Image</th>
                    <th scope="col">Laptop name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Category</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>

                <%
                    LapDAOImpl dao = new LapDAOImpl(DBConnect.getConn());
                    List<LapDtls> list = dao.getAllLaps();
                    for (LapDtls b : list) {%>
                <tr>
                    <td><%=b.getlapId()%></td>
                    <td><img src="../laptop/<%=b.getPhotoName()%>" style="width: 50px;height: 50px;"> </td>
                    <td><%=b.getLapName()%></td>
                    <td><%=b.getPrice()%></td>
                    <td><%=b.getLapCategory()%></td>
                    <td><%=b.getStatus()%></td>
                    <td>
                        <a href="edit_laps.jsp?id=<%=b.getlapId()%>" class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i> Edit</a>
                        <a href="../LapDeleteServlet?id=<%=b.getlapId()%>" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash-can"></i> Delete</a>
                    </td>
                </tr>
                <%}
                %>
            </tbody>
        </table>
        <div style="margin-top:220px ">
            <%@include file="footer.jsp" %></div>
    </body>
</html>
