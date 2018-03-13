<%-- 
    Document   : index
    Created on : 13-mar-2018, 10:07:24
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Factorial!</h1>
            <%-- start web service invocation --%><hr/>
    <%
    try {
	org.WSFactorial_Service service = new org.WSFactorial_Service();
	org.WSFactorial port = service.getWSFactorialPort();
	 // TODO initialize WS operation arguments here
	int number = 5;
	// TODO process result here
	int result = port.factorial(number);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>
