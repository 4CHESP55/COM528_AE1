<%-- 
    Document   : newjsp
    Created on : 3 Aug 2021, 13:11:36
    Author     : cgallen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="org.solent.oodd.cardreadersystem.model.dto.CardDetails" %>
<%@ page import="org.solent.oodd.cardreadersystem.model.dto.TransactionDetails" %>
<%@ page import="org.solent.oodd.cardreadersystem.web.WebObjectFactory" %>
<%@ page import="org.solent.oodd.cardreadersystem.model.service.CardInterface" %>
<%@ page import="org.solent.oodd.cardreadersystem.model.service.TransactionInterface" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    request.setAttribute("selectedPage", "home");
    CardInterface card = (CardInterface) session.getAttribute("card");
    if (card == null) {
        card = WebObjectFactory.getCardInterface();
        session.setAttribute("CardDetails", card);
    }
    TransactionInterface transaction = (TransactionInterface) session.getAttribute("TransactionInterface");
    if (transaction == null) {
        transaction = WebObjectFactory.getTransactionInterface();
        session.setAttribute("TransactionDetails", transaction);
        
    }
    //String Connection = (String) request.getParameter("connection");
    //String Stage = (String) request.getParameter("stage");
    String submit = (String) request.getParameter("submit");
    String login = (String) request.getParameter("login");
    String pin = (String) request.getParameter("pin");
    String amount = (String) request.getParameter("amount");
    String cardNo = (String) request.getParameter("cardNo");
    String cardCvv = (String) request.getParameter("cardCvv");
    String cardExpiry = (String) request.getParameter("cardExpiry");
    String cardIssue = (String) request.getParameter("cardIssue");
    
    // TODO: check details if there is a login save else ask for login and pin
    // TODO: retrieve toCard details from settings file
    if ("submit".equals(submit)) {
            // Create card object
            card.addCardDetails(cardNo, cardCvv, cardExpiry, cardIssue);
            
            // TODO: get card details to greate object for transaction
            //transaction.addTransactionDetails(toCard, fromCard, amount);
            
            // TODO: use transaction object to send to bank
        }
%>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Card Reader</title>
        <script language="javascript" type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
 
    </head>
    <body>
        <form action="./home.jsp" method="get">
            <div class="btn-group-vertical ml-4 mt-4" role="group">
                <input class="text-end" style="width: 100%; padding: 0rem 1rem; font-size: 0.75rem; border-radius: 0.3rem 0.3rem 0rem 0rem; border-top: 1px solid black; border-right: 1px solid black; border-left: 1px solid black; border-bottom-style: hidden;" id="connection" name="connection" value="Connected" disabled>
                <input class="form-control-lg" style="border-radius: 0rem; border-top: 1px solid black; border-right: 1px solid black; border-left: 1px solid black; border-bottom-style: hidden;" id="stage" name="stage" value="Login: " disabled>
                <input class="text-center form-control-lg" style="border-radius: 0rem; border-bottom: 1px solid black; border-right: 1px solid black; border-left: 1px solid black; border-top-style: hidden; display: block;" id="code" disabled>
                
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
                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value = document.getElementById('code').value + '.';">.</button>
                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value = document.getElementById('code').value + '0';">0</button>
                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value = document.getElementById('code').value + '-';">-</button>
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
                    <input type="hidden" id="login" name="login" value="">
                    <input type="hidden" id="pin" name="pin" value="">
                    <input type="hidden" id="amount" name="amount" value="">
                    <input type="hidden" id="cardNo" name="cardNo" value="">
                    <input type="hidden" id="cardCvv" name="cardCvv" value="">
                    <input type="hidden" id="cardExpiry" name="cardExpiry" value="">
                    <input type="hidden" id="cardIssue" name="cardIssue" value="">
                    <button type="button" id="submit-login" class="btn btn-success py-3" style="display: block;" >
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"/>
                        </svg>
                    </button>
                    <button type="button" id="submit-pin" class="btn btn-success py-3" style="display: none;" >
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"/>
                        </svg>
                    </button>
                    <button type="button" id="submit-amount" class="btn btn-success py-3" style="display: none;" >
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"/>
                        </svg>
                    </button>
                    <button type="button" id="submit-cardNo" class="btn btn-success py-3" style="display: none;" >
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"/>
                        </svg>
                    </button>
                    <button type="button" id="submit-cardCvv" class="btn btn-success py-3" style="display: none;" >
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"/>
                        </svg>
                    </button>
                    <button type="button" id="submit-cardExpiry" class="btn btn-success py-3" style="display: none;" >
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"/>
                        </svg>
                    </button>
                    <button type="button" id="submit-cardIssue" class="btn btn-success py-3" style="display: none;" >
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"/>
                        </svg>
                    </button>
                    <button type="submit" id="go" name="submit" class="btn btn-success py-3" style="display: none;" value="submit" onclick="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"/>
                        </svg>
                    </button>
                </div>
            </div>
        </form>
    </body>
<jsp:include page="footer.jsp" />
<script language="javascript">
                $("#submit-login").click(function(){
                    $('#submit-login').toggle();
                    $('#login').val(document.getElementById('code').value);
                    $('#code').val('');
                    $('#stage').val('PIN: ');
                    $('#submit-pin').toggle();
                });
                $("#submit-pin").click(function(){
                    $('#submit-pin').toggle();
                    $('#pin').val(document.getElementById('code').value);
                    $('#code').val('');
                    $('#stage').val('Amount: ');
                    $('#submit-amount').toggle();
                });
                $("#submit-amount").click(function(){
                    $('#submit-amount').toggle();
                    $('#amount').val(document.getElementById('code').value);
                    $('#code').val('');
                    $('#stage').val('Card Number: ');
                    $('#submit-cardNo').toggle();
                });
                $("#submit-cardNo").click(function(){
                    $('#submit-cardNo').toggle();
                    $('#cardNo').val(document.getElementById('code').value);
                    $('#code').val('');
                    $('#stage').val('Card CVV: ');
                    $('#submit-cardCvv').toggle();
                });
                $("#submit-cardCvv").click(function(){
                    $('#submit-cardCvv').toggle();
                    $('#cardCvv').val(document.getElementById('code').value);
                    $('#code').val('');
                    $('#stage').val('Card Expiry: ');
                    $('#submit-cardExpiry').toggle();
                });
                $("#submit-cardExpiry").click(function(){
                    $('#submit-cardExpiry').toggle();
                    $('#cardExpiry').val(document.getElementById('code').value);
                    $('#code').val('');
                    $('#stage').val('Card Issue: ');
                    $('#submit-cardIssue').toggle();
                });
                $("#submit-cardIssue").click(function(){
                    $('#submit-cardIssue').toggle();
                    $('#cardIssue').val(document.getElementById('code').value);
                    $('#code').val('');
                    $('#stage').val('Confirm!');
                    $('#go').toggle();
                });
        </script>
</html>
