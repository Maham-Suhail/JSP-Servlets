<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/4/2020
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <c:set var ="stuff" value = "<%= new java.util.Date()%>"/>

  Time on the server is ${stuff}

  </body>
</html>
