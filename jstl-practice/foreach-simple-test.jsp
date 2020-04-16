<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/4/2020
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String[] cities = {"Lahore","Islamabad","Faislabad"};
    pageContext.setAttribute("myCities",cities);
%>
<html>

<body>
      <c:forEach var = "tempCity" items ="${myCities}">
          ${tempCity} <br/>
      </c:forEach>
</body>
</html>
