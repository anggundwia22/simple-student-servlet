<%--<html>--%>
<%--<body>--%>
<%--<h2>Hello World!</h2>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Management</title>
</head>
<body>
<h2>Add Student</h2>
<form action="student" method="post">
    Username: <input type="text" name="username" required><br>
    Password: <input type="password" name="password" required><br>
    <input type="submit" value="Add Student">
</form>

<h2>Student List</h2>
<ul>
    <c:forEach var="student" items="${students}">
        <li>${student.username}</li>
    </c:forEach>
</ul>
</body>
</html>
