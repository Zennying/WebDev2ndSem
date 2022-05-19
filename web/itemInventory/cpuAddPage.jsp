<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base href="${pageContext.request.contextPath}/"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add CPU</title>
        <link href="bootstrap-5.0.2-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="topNavBar.jsp" flush="true" />
        <br>
        <div class="container-fluid">
            <form class="card mx-auto" style="width: 18rem;" method="POST" action="./Inventory/CPU/Add/Success">
                <div class="mb-3 card-body">
                    <label for="ProductBrand" class="form-label">Product Brand:</label>
                    <input class="form-control form-control-sm" type="text" 
                           id="ProductBrand" name="ProductBrand">
                </div>
                <div class="mb-3 card-body">
                    <label for="ProductName" class="form-label">Product Name:</label>
                    <input class="form-control form-control-sm" type="text" 
                           id="ProductName" name="ProductName">
                </div>
                <div class="mb-3 card-body">
                    <label for="ProductStock" class="form-label">No. of Units/Stock:</label>
                    <input class="form-control form-control-sm" type="number" 
                           id="ProductStock" name="ProductStock"/>
                </div>
                <div class="mb-3 card-body">
                    <label for="ProductPrice" class="form-label">Product Price:</label>
                    <input class="form-control form-control-sm" type="text" 
                           id="ProductPrice" name="ProductPrice">
                </div>
                <div class="text-center">
                    <input class="btn btn-outline-primary" type="submit" value="Register"/>
                </div>
                <br>
            </form>
        </div>
    </body>
</html>