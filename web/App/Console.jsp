<%-- 
    Document   : Console
    Created on : 20 Jun, 2016, 8:27:16 PM
    Author     : Ajay Kelkar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dash</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="../css/custom.css"
    </head>
    <body>
        <%HttpSession CurSession = request.getSession();%>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Eval App</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%=CurSession.getAttribute("UserID")%> <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="../index.jsp">Logout</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Settings</li>
                                <li><a href="#">Preferences</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="container main">
            <div class="row hub-opt">
                <div class="col-lg-4">
                    <img width="140" height="140" class="img-circle" alt="Generic placeholder image" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==">
                    <h2>Create Ticket</h2>
                    <p>Create a Ticket for an issue</p>
                    <p><a class="btn btn-default" role="button" href="./Create.jsp">Create Ticket »</a></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img width="140" height="140" class="img-circle" alt="Generic placeholder image" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==">
                    <h2>Modify</h2>
                    <p>Change details or status of a ticket</p>
                    <p><a class="btn btn-default" role="button" href="#">Modify Ticket »</a></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img width="140" height="140" class="img-circle" alt="Generic placeholder image" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==">
                    <h2>View</h2>
                    <p>View Tickets</p>
                    <p><a class="btn btn-default" role="button" href="#">View Tickets »</a></p>
                </div><!-- /.col-lg-4 -->
            </div>
        </div>
        <footer class="footer">
            <div class="container">
                <p class="text-muted">&copy; 2016 -  All Rights Reserved.</p>
            </div>
        </footer>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
    </body>
</html>
