<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/4/2020
  Time: 11:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Personalized page</title>
</head>
    <%
        // default if there is no cookie
        String favLang = "java";
        // get cookie from browser request
        Cookie[] theCookies = request.getCookies();
        if(theCookies != null)
        {
            for(Cookie tempCookie : theCookies)
            {
                if("myAppFavoriteLanguage".equals(tempCookie.getName()))
                {
                    favLang = tempCookie.getValue();
                    break;
                }
            }
        }
    %>
<body>
<!--------------Now Show the personalized Data------------------->
<h4>New Books for <%= favLang%></h4>
<ul>
    <li>blah blah</li>
    <li>blah blah</li>
    <li>blah blah</li>
    <li>blah blah</li>
</ul>
<h4>New Version for <%= favLang%></h4>
<ul>
    <li>blah blah</li>
    <li>blah blah</li>
    <li>blah blah</li>
    <li>blah blah</li>
</ul>
</body>
</html>
