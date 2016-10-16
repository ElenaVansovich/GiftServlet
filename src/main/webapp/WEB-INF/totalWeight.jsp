<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 16.10.2016
  Time: 0:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Year's gift</title>
</head>
<body>
<div align="center" style="margin-top: 50px;">

  <h1>New Year's gift</h1><br><br>
  <%= request.getAttribute("totalWeight")%>
  <br><br>
  <form action="OperationsWithGiftServlet">
    <input type = "submit" value = "OK"/>
  </form>
</div>
</body>
</html>
