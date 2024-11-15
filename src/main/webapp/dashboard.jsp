<%--
  Created by IntelliJ IDEA.
  User: enigma
  Date: 15/11/24
  Time: 22.41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
  String username = (String) session.getAttribute("username");
  if (username == null) {
    response.sendRedirect("login.jsp");
    return;
  }
%>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
    <h2>Welcome, <%= username %>!</h2>
    <p>This is your dashboard.</p>
    <a href="logout">Logout</a>
</body>
</html>
