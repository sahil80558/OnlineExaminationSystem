
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String data[]=(String[])request.getAttribute("data");
        %>
        <h1>marks=<%=data[3]%></h1>
    </body>
</html>
