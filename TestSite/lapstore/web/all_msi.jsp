<%-- 
    Document   : all_msi
    Created on : 25-Apr-2024, 15:58:27
    Author     : wwwkr
--%>

<%@page import="mypackage.user"%>
<%@page import="java.util.List"%>
<%@page import="mypackage.LapDtls"%>
<%@page import="mypackage.DBconnect"%>
<%@page import="admin.LapDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All MSI Laptops</title>

        <%@include file="allComponent/allCss.jsp" %>
        <style type="text/css">
            .crd-ho:hover{
                background-color:  #18ffff;
            }

            /* toast */
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

            /* toast */

        </style>
         <c:remove var="addCart" scope="session" />
    </head>
    <body>
        <%
            user u = (user) session.getAttribute("userobj");

        %>
    <c:if test="${not empty addCart}">
        <div id="toast"> ${addCart}</div>

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

       

    </c:if>
    <%@include file="allComponent/navbar.jsp" %>
    <div class="container-fluid">
        <div class="row p-3">
            <%                    LapDAOImpl dao3 = new LapDAOImpl(DBconnect.getConn());
                List<LapDtls> list3 = dao3.getAllMSILaps();
                for (LapDtls b : list3) {%>
            <div class="card crd-ho">
                <div class="col-md-3">
                    <div class="card-body text-center">
                        <img alt="" src="lapImg/<%=b.getPhotoName()%>" style="width:150px;height: 200px " class="img-thumblin">
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
    </div>
</body>
</html>
