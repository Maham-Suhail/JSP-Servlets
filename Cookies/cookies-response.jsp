<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/4/2020
  Time: 11:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation</title>
</head>
    <%
        //read form data
        String favLang = request.getParameter("favLanguage");
        //create the cookie
        Cookie theCookie = new Cookie("myAppFavoriteLanguage", favLang);
        // set the life span in seconds
        theCookie.setMaxAge(60*60*24*365);
        //send cookie to browser
        response.addCookie(theCookie);
    %>
<body>
        Thanks! we set your favorite Language: ${param.favLanguage}
        <br/><br/>
        <a href="cookies-homepage.jsp">Return to homepage.</a>
</body>
</html>
