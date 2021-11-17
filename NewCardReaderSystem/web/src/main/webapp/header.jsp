<%-- 
    Document   : header
    Created on : Jan 4, 2020, 11:19:01 AM
    Author     : cgallen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">
        <!--<link rel="canonical" href="https://getbootstrap.com/docs/3.3/examples/navbar/">-->

        <title>Navbar Template for Bootstrap</title>

        <!-- Bootstrap core CSS -->
        <link href="./resources/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="./resources/css/navbar.css" rel="stylesheet">

    </head>

    <body>

        <div class="container">

            <!-- Static navbar -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">NavBar</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <div class="navbar-nav">
                            <a class="nav-link <% if ("home".equals(request.getAttribute("selectedPage"))) {%> active"  <% } else {%> " <%} %> href="./home.jsp">Home</a> 
                            <a class="nav-link <% if ("about".equals(request.getAttribute("selectedPage"))) {%>  active"  <% } else {%> " <%} %> href="./about.jsp">About</a>
                            <a class="nav-link <% if ("contact".equals(request.getAttribute("selectedPage"))) {%>  active"  <% } else {%> " <%} %> href="./contact.jsp">Contact</a>                        
                        </div>
                    </div><!--/.nav-collapse -->
                </div><!--/.container-fluid -->
            </nav>