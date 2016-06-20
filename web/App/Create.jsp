<%-- 
    Document   : Create
    Created on : 20 Jun, 2016, 9:15:14 PM
    Author     : ajayk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="evalApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Create Ticket</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="../css/custom.css"
    </head>
    <body>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="../js/angular.min.js"></script>
        <script src="../js/core.js"></script>
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
                        <li><a href="./Console.jsp">Dash</a></li>
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
            <form class="form-horizontal" ng-controller="TicketController">
                <div class="form-group">
                    <label for="TSUM" class="col-sm-2 control-label">Ticket Summary</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="TSUM" placeholder="Ticket Summary">
                    </div>
                </div>
                <div class="form-group">
                    <label for="TCOM" class="col-sm-2 control-label">Ticket Comments</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="TCOM" placeholder="Ticket Comments">
                    </div>
                </div>
                <div class="form-group">
                    <label for="TA" class="col-sm-2 control-label">Assigned To</label>
                    <div class="col-sm-10">
                        <select class="form-control" ng-options="act for act in agent">
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="TC" class="col-sm-2 control-label">Customer ID</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="TC" placeholder="Customer ID">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Submit Ticket</button>
                    </div>
                </div>
            </form>
        </div>
        <footer class="footer">
            <div class="container">
                <p class="text-muted">&copy; 2016 -  All Rights Reserved.</p>
            </div>
        </footer>
        <script src="../js/bootstrap.min.js"></script>
    </body>
</html>