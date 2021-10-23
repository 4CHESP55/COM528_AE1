<%-- 
    Document   : newjsp
    Created on : 3 Aug 2021, 13:11:36
    Author     : cgallen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>

<%
    request.setAttribute("selectedPage", "home");
    String Connection = "Not Connected";
    String Stage = "Login: ";
    String action = (String) request.getParameter("action");
    String input = (String) request.getParameter("code");
    String login = "";
    String PIN = "";
    String ammount = ""; //change to double
    
    if ("Login: ".equals(action)) {
        
            login = input;
            Stage = "PIN: ";
        }
    else if ("PIN: ".equals(action)) {
            PIN = input;
            // TODO Use PIN and Login to login
            Connection = "Connected";
            Stage = "Enter ammount: ";
        }
    else if ("Enter ammount: ".equals(action)){
            ammount = input;
            Stage = "Enter card: ";
    }
%>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Card Reader</title>
    </head>
    <body>
        <form action="./home.jsp" method="get">
            <div class="btn-group-vertical ml-4 mt-4" role="group">
                <input class="text-end" style="width: 100%; padding: 0rem 1rem; font-size: 0.75rem; border-radius: 0.3rem 0.3rem 0rem 0rem; border-top: 1px solid black; border-right: 1px solid black; border-left: 1px solid black; border-bottom-style: hidden;" id="connection" name="connection" value="<%=Connection%>" disabled>
                <input class="form-control-lg" style="border-radius: 0rem; border-top: 1px solid black; border-right: 1px solid black; border-left: 1px solid black; border-bottom-style: hidden;" id="stage" name="stage" value="<%=Stage%>" disabled>
                <input class="text-center form-control-lg" style="border-radius: 0rem; border-bottom: 1px solid black; border-right: 1px solid black; border-left: 1px solid black; border-top-style: hidden;" id="code" name="code" disabled>
                <div class="btn-group">
                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value = document.getElementById('code').value + '1';">1</button>
                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value = document.getElementById('code').value + '2';">2</button>
                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value = document.getElementById('code').value + '3';">3</button>
                </div>
                <div class="btn-group">
                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value = document.getElementById('code').value + '4';">4</button>
                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value = document.getElementById('code').value + '5';">5</button>
                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value = document.getElementById('code').value + '6';">6</button>
                </div>
                <div class="btn-group">
                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value = document.getElementById('code').value + '7';">7</button>
                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value = document.getElementById('code').value + '8';">8</button>
                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value = document.getElementById('code').value + '9';">9</button>
                </div>
                <div class="btn-group">
                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value = document.getElementById('code').value + '*';">*</button>
                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value = document.getElementById('code').value + '0';">0</button>
                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value = document.getElementById('code').value + '#';">#</button>
                </div>
                <div class="btn-group">
                    <button type="button" class="btn btn-danger py-3" onclick="document.getElementById('code').value = document.getElementById('code').value = '';">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z"/>
                        <path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z"/>
                        </svg>
                    </button>
                    <button type="button" class="btn btn-warning py-3" onclick="document.getElementById('code').value = document.getElementById('code').value.slice(0, -1);">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                        </svg>
                    </button>
                    <input type="hidden" name="action" value="<%=Stage%>">
                    <button type="submit" class="btn btn-success py-3" onclick="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"/>
                        </svg>
                    </button>
                </div>
            </div>
        </form>
    </body>
<jsp:include page="footer.jsp" />
</html>
