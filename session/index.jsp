<%@ page import = "java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<body>

<form action = index.jsp>
  <input type="text" name="theitem">
  <input type="submit" value="submit">
</form>

  <%
      List<String> items = (List<String>) session.getAttribute("myToDoList");
      if(items == null)
      {
        items = new ArrayList<String>();
        session.setAttribute("myToDoList",items);
      }
      String theitem = request.getParameter("theitem");
      if(theitem != null && !theitem.trim().equals(""))
      {
         items.add(theitem);
      }
  %>
<hr>
<b>To Do List items:</b></br>
<ol>
    <%
        for(String temp : items)
        {
            out.println("<li>"+ temp +"</li>");
        }
    %>
</ol>
</body>
</html>