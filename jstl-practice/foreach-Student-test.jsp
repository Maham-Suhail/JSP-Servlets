<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/4/2020
  Time: 4:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import = "java.util.*,javaClasses.Student" %>

<%
     List<Student> data = new ArrayList<>();
     data.add(new Student("Ahmed","ali",true));
     data.add(new Student("Maryam","sarfraz",false));
     data.add(new Student("Maida","akhter",false));

     pageContext.setAttribute("myStudents",data);
%>

<html>
<head>
    <title>Student List</title>
</head>
<body>
        <table border="1">
            <tr>
                <th>First name</th>
                <th>Last name</th>
                <th>Gold Customer</th>
            </tr>
        <c:forEach var ="tempStudent" items = "${myStudents}">
            <tr>
                <td>${tempStudent.firstName}</td>
                <td>${tempStudent.lastName}</td>
                <td>${tempStudent.goldCustomer}</td>
            <br/>
            </tr>
        </c:forEach>
        </table>
</body>
</html>
