<%@ page import="com.enigma.entity.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: enigma
  Date: 15/11/24
  Time: 22.41
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
<h2>Welcome Page</h2>
<a href="logout">Logout</a>
<h3>Student List</h3>
<table border="1">
    <tr>
        <th>Student ID</th>
        <th>Student Name</th>
        <th>Department</th>
        <th>Marks</th>
        <th>Pass%</th>
    </tr>
    <%
        List<Student> students = (List<com.enigma.entity.Student>) request.getAttribute("students");
        for (com.enigma.entity.Student student : students) {
    %>
    <tr>
        <td><%= student.getStudentId() %></td>
        <td><%= student.getStudentName() %></td>
        <td><%= student.getDepartment() %></td>
        <td><%= student.getMarks() %></td>
<%--        <td><a href="studentDetails.jsp?studentId=<%= student.getStudentId() %>">View Details</a></td>--%>
    </tr>
    <% } %>
</table>
</body>
</html>

