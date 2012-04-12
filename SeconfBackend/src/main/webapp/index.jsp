<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%
    String hostName=request.getServerName();
    if (session.getAttribute("date") == null) {
        session.setAttribute("date", new Date());
    }
    Date date = (Date) session.getAttribute("date");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Second Backend</title>
    </head>
    <body>
        <h1>Second Backend</h1>
		<p>Hello World!</p>
		<ul>
			<li>Host name: <%=hostName%></li>
			<li>Session ID: <%= session.getId() %></li>
			<li>Session date: <%= date %></li>
		</ul>
    </body>
</html>