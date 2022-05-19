<%-- 
    Literally the topNavBar, for a much neat coding :>
    DONT TOUCH THE href's or I would be very mad
    and turn you into an asado siopao, meow.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-5.0.2-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap-5.0.2-dist/js/bootstrap.bundle.js" type="text/javascript"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <span class="navbar-brand mb-0 h1">Navbar</span>
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/Home">Home</a>
                        </li>
                        <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
                            <ul class="navbar-nav">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Item Manager
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
                                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/Inventory/CPU/Add">Add CPU Listing</a></li>
                                        <li><a class="dropdown-item" href="#">Add GPU Listing</a></li>
                                        <li><a class="dropdown-item" href="#">Add RAM Listing</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
                            <ul class="navbar-nav">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Product Inventory
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
                                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/Inventory/CPU">CPU</a></li>
                                        <li><a class="dropdown-item" href="#">GPU</a></li>
                                        <li><a class="dropdown-item" href="#">RAM</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        
                    </ul>
                    <div class="collapse navbar-collapse justify-content-end dropstart" id="navbarNavDarkDropdown">
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    ${emailCredential}
                                </a>
                                <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
                                    <li><a class="dropdown-item" href="#">Profile</a></li>
                                    <li><a class="dropdown-item" href="#">About</a></li>
                                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/">Log-out</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </body>
</html>
