<%--
  Created by IntelliJ IDEA.
  User: enigma
  Date: 16/11/24
  Time: 00.28
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Details</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".student-id").click(function () {
                let studentName = $(this).data("name");
                alert("Student Name: " + studentName);
            });
        });
    </script>
</head>
<body>
<h1>Welcome, <%= request.getAttribute("username") %>! Here are the Student Details</h1>

<table border="1">
    <thead>
    <tr>
        <th>Department</th>
        <th>Student ID</th>
        <th>Marks</th>
        <th>Pass %</th>
    </tr>
    </thead>
    <tbody>
    <%
        // Mengambil data mahasiswa dan pass percentages dari request
        List<com.enigma.entity.Student> students = (List<com.enigma.entity.Student>) request.getAttribute("students");
        Map<String, Double> passPercentages = (Map<String, Double>) request.getAttribute("passPercentages");

        if (students != null) {
            for (com.enigma.entity.Student student : students) {
    %>
    <tr>
        <td><%= student.getDepartment() %></td>
        <td>
            <a href="studentDetails.jsp?studentId=<%= student.getStudentId() %>" class="student-id" data-name="<%= student.getStudentName() %>">
                <%= student.getStudentId() %>
            </a>
        </td>
        <td><%= student.getMarks() %></td>
        <td><%= passPercentages.get(student.getDepartment()) != null ? passPercentages.get(student.getDepartment()) + "%" : "N/A" %></td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>

</body>
</html>




