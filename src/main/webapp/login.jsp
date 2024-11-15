<%--
  Created by IntelliJ IDEA.
  User: enigma
  Date: 15/11/24
  Time: 22.40
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
<h2>Login</h2>
<form action="login" method="post">
    <label for="userId">User ID:</label>
    <input type="text" id="userId" name="userId" required><br><br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>
    <button type="submit">Login</button>
</form>
<%
    String error = request.getParameter("error");
    if (error != null) {
%>
<p style="color: red;"><%= error %></p>
<% } %>
</body>
</html>


