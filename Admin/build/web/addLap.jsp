<%-- 
    Document   : addPet
    Created on : 16-Apr-2024, 08:04:07
    Author     : wwwkr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Add Laptop</title>
        <%@include file= "allCss.jsp"%>
    </head>
    <body styel="background-color:#f0f2f2;">
        <%@include file="navbar.jsp" %>
        <h3 class="text-center">Hello Admin</h3>
        <div class="caontainer">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-3">
                        <div class="card-body mt-2">
                            <form action="" metod="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="exampleInputName">Lap category</label>
                                    <select name="ptype" class="form-control">
                                        <option selected>--select--</option>
                                        <option value="New">MSI</option>
                                        <option value="New">ASUS</option> 
                                        <option value="New">DELL</option> 
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputName">Laptop Name</label>
                                    <input type="text" name="page" class="form-control"/>
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputName">Price</label>
                                    <input type="number" name="price" class="form-control"/>
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputName">Upload Photo</label>
                                    <input type="file" name="pimg" class="form-control-file" />
                                </div>
                                <button type="submit" class="btn btn-primary">Add</button>
                                    
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
