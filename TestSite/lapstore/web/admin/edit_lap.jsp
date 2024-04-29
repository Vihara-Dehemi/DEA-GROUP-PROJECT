<%-- 
    Document   : edit_lap
    Created on : 25-Apr-2024, 12:26:12
    Author     : wwwkr
--%>


<%@page import="mypackage.LapDtls"%>
<%@page import="admin.LapDAOImpl"%>
<%@page import="mypackage.DBconnect"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Edit</title>
        <%@include file= "allCss.jsp"%>
    </head>
    <body styel="background-color:#f0f2f2;">
        <%@include file="navbar.jsp" %>
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp"/>
        </c:if>
        <h3 class="text-center">Hello Admin, Edit Laptops</h3>
        <div class="caontainer">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-3">
                        <div class="card-body mt-2">

                            

                            <%
                                int id = Integer.parseInt(request.getParameter("id"));
                                LapDAOImpl dao = new LapDAOImpl(DBconnect.getConn());
                                LapDtls b = dao.getLapById(id);

                            %>

                            <form action="../EditServlet" method="post">
                                <input type="hidden" name="id" value="<%=b.getlapId()%>"
                                <div class="form-group">
                                    <label for="exampleInputName">Lap category</label>
                                    <%if ("MSI".equals(b.getCategory())) {%>
                                    <option value="New">ASUS</option> 
                                    <option value="New">DELL</option>

                                    <%} else {%>
                                    <option value="New">MSI</option>
                                    <%}
                                    %>

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputName">Laptop Name</label>
                                    <input type="text" name="lname" class="form-control" value="<%=b.getlapName()%>"/>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputName">Price</label>
                                    <input type="number" name="price" class="form-control" value="<%=b.getPrice()%>"/>
                                </div>
                                <button type="submit" class="btn btn-primary">Update</button>

                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div style="margin-top:50px ">
            <%@include file="footer.jsp" %></div>
    </body>
</html>
