<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap-5.0.2-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap-5.0.2-dist/js/bootstrap.js" type="text/javascript"></script>
    </head>
    <body>
        <video id="background-video" autoplay loop muted>
            <source src="media/videos/portalLiveWallpaper.mp4" type="video/mp4">
        </video>
        <div class="container">
            <div class="d-flex flex-column min-vh-100 justify-content-center align-items-center">
                <div class="card border-light bg-transparent text-white" style="width: 35rem; text-shadow: 1px 1px 5px black;">
                    <div class="card-header border-light text-center">
                        Portal
                    </div>
                    <form class="card-body" method="POST" action="${pageContext.request.contextPath}/Staff">
                        <div class="form-group">
                            <label for="emailCredential">Email address:</label>
                            <input type="email" class="form-control border-light bg-transparent text-white" id="emailCredential" name="emailCredential" aria-describedby="emailHelp">
                            <br>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password:</label>
                            <input type="password" class="form-control border-light bg-transparent text-white" id="exampleInputPassword1">
                            <br>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-outline-light">Sign-in</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
