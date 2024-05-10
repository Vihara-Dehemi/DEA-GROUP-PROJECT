<%-- 
    Document   : all_new_laps
    Created on : May 10, 2024, 6:19:30 PM
    Author     : vihan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All New Laptops</title>
        <%@include file="allComponent/allCss.jsp" %>
        <style type="text/css">
            .crd-ho:hover{
                background-color: #fcf7f7; 
            }

            #toast {
                min-width: 300px;
                position: fixed;
                bottom: 30px;
                left: 50%;
                margin-left: -125px;
                background: #333;
                padding: 10px;
                color: white;
                text-align: center;
                z-index: 1;
                font-size: 18px;
                visibility: hidden;
                box-shadow: 0px 0px 100px #000;
            }

            #toast.display {
                visibility: visible;
                animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
            }

            @keyframes fadeIn {from { bottom:0;
                                      opacity: 0;
                               }

                               to {
                                   bottom: 30px;
                                   opacity: 1;
                               }

            }
            @keyframes fadeOut {form { bottom:30px;
                                       opacity: 1;
                                }

                                to {
                                    bottom: 0;
                                    opacity: 0;
                                }
            }

        </style>
    </head>
    <body>
        <%
            user u = (user) session.getAttribute("userobj");
        %>

        <c:if test="${not empty addCart }">

            <div id="toast">${addCart}</div>

            <script type="text/javascript">
                showToast();
                function showToast(content)
                {
                $('#toast').addClass("display");
                $('#toast').html(content);
                setTimeout(() = > {
                $("#toast").removeClass("display");
                }, 2000)
                }
            </script>
            <c:remove var="addCart" scope="session"/>

        </c:if>

        <%@include file="allComponent/navbar.jsp" %>

        <div class="container-fluid">
            <div class="row p-3">

                <%
                    LapDAOImpl dao = new LapDAOImpl(DBConnect.getConn());
                    List<LapDtls> list = dao.getAllNewLaps();
                    for (LapDtls b : list) {%>
                <div class="col-md-3">
                    <div class="card crd-ho mt-2">
                        <div class="card-body text-center">
                            <img alt="" src="laptop/<%=b.getPhotoName()%>" style="width:150px; height: 150px;" class="img-thumblin">
                            <p><%=b.getLapName()%></p>
                            <p>Categories:<%=b.getLapCategory()%></p>
                            <div class="row text-center">
                                <%if (u == null) {%>
                                <a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i class="fa-solid fa-cart-plus"></i>Add</a>
                                <%} else {%>
                                <a href="CartServlet?bid=<%=b.getlapId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-3"><i class="fa-solid fa-cart-plus"></i>Add</a>
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
        </div>

    </body>
</html>

