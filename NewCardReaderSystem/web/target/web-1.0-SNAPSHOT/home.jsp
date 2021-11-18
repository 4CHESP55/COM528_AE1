<%-- 
    Document   : newjsp
    Created on : 3 Aug 2021, 13:11:36
    Author     : cgallen
--%>

<%@page import="org.solent.com504.oodd.bank.model.dto.BankTransactionStatus"%>
<%@page import="org.solent.com504.oodd.bank.model.dto.TransactionReplyMessage"%>
<%@page import="org.solent.com504.oodd.bank.model.client.BankRestClient"%>
<%@page import="org.solent.com504.oodd.bank.model.dto.CreditCard"%>
<%@page import="java.util.List" %>

<%@page import="org.solent.oodd.NewCardReaderSystem.web.WebObjectFactory" %>
<%@page import="org.solent.oodd.NewCardReaderSystem.web.PropertiesDao" %>
<%@page import="org.solent.com504.oodd.bank.client.impl.BankRestClientImpl" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    request.setAttribute("selectedPage", "home");
    
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
    String status = "Login: ";
    
    // TODO: check details if there is a login save else ask for login and pin
    PropertiesDao propertiesDao = WebObjectFactory.getPropertiesDao();
    String url = propertiesDao.getProperty("org.solent.ood.simplepropertiesdaowebapp.url");
    String username = propertiesDao.getProperty("org.solent.ood.simplepropertiesdaowebapp.username");
    String password = propertiesDao.getProperty("org.solent.ood.simplepropertiesdaowebapp.password");
    String toName = propertiesDao.getProperty("org.solent.ood.simplepropertiesdaowebapp.cardName");
    String toNo = propertiesDao.getProperty("org.solent.ood.simplepropertiesdaowebapp.creditCard");
    String toExpiry = propertiesDao.getProperty("org.solent.ood.simplepropertiesdaowebapp.expiry");
    String toCvv = propertiesDao.getProperty("org.solent.ood.simplepropertiesdaowebapp.cvv");
    String toIssue = propertiesDao.getProperty("org.solent.ood.simplepropertiesdaowebapp.issueNumber");
    
    CreditCard toCard = new CreditCard();
    toCard.setName(toName);
    toCard.setEndDate(toExpiry);
    toCard.setCardnumber(toNo);
    toCard.setCvv(toCvv);
    toCard.setIssueNumber(toIssue);
    
    if ("submit".equals(submit)) {
        // Create card object
        CreditCard fromCard = new CreditCard();
        fromCard.setEndDate(cardExpiry);
        fromCard.setCardnumber(cardNo);
        fromCard.setCvv(cardCvv);
        fromCard.setIssueNumber(cardIssue);
        
        BankRestClient client = new BankRestClientImpl(url);
        Double dAmount = Double.parseDouble(amount);
        TransactionReplyMessage result = client.transferMoney(fromCard, toCard, dAmount);
        status = result.getStatus().name();
        request.setAttribute("message",result);
        
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
        <p>Before using the card reader please make sure the settings for the application are correct</p>
        <p>Use the navigation above to first update the settings and then use the card reader</p>
    </body>
    <jsp:include page="footer.jsp" />
</html>
