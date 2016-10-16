<%@ page import="servlets.SearchServlet" %>
<%@ page import="sweets.*" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 16.10.2016
  Time: 2:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Year's gift</title>
</head>
<body>
<div align="center" style="margin-top: 50px;">
  <h1>New Year's gift</h1>

  <table align="center" border = "0" width="70%">
    <form action="OperationsWithGiftServlet">
      <tr>
        <td align="center" valign="top" width="14%">Class:</td>
        <td align="center" valign="top" width="14%">Name:</td>
        <td align="center" valign="top" width="14%">Price:</td>
        <td align="center" valign="top" width="14%">Sugar:</td>
        <td align="center" valign="top" width="14%">Weight:</td>
        <td align="center" valign="top" width="14%">Additional information:</td>
      </tr>

      <%for(Sweet sweet: SearchServlet.sweetList){%>
      <tr>
        <%Double sweetInf = 0.0;%>
        <%if(sweet.getClass().getName().equals(new Butterscotch().getClass().getName())){%>
        <%Butterscotch butterscotch = (Butterscotch)sweet;%>
        <%sweetInf = butterscotch.getMilk();%>
        <td align="center" valign="top"><%=SweetType.BUTTERSCOTCH.toString().toLowerCase()%></td>
        <%}%>
        <%if(sweet.getClass().getName().equals(new Chocolate().getClass().getName())){%>
        <%Chocolate chocolate = (Chocolate)sweet;%>
        <%sweetInf = chocolate.getChocolate();%>
        <td align="center" valign="top"><%=SweetType.CHOCOLATE.toString().toLowerCase()%></td>
        <%}%>
        <%if(sweet.getClass().getName().equals(new Jelly().getClass().getName())){%>
        <%Jelly jelly = (Jelly)sweet;%>
        <%sweetInf = jelly.getGelatin();%>
        <td align="center" valign="top"><%=SweetType.JELLY.toString().toLowerCase()%></td>
        <%}%>
        <%if(sweet.getClass().getName().equals(new Liqueur().getClass().getName())){%>
        <%Liqueur liqueur = (Liqueur)sweet;%>
        <%sweetInf = liqueur.getLiqueur();%>
        <td align="center" valign="top"><%=SweetType.LIQUEUR.toString().toLowerCase()%></td>
        <%}%>
        <%if(sweet.getClass().getName().equals(new Wafer().getClass().getName())){%>
        <%Wafer wafer = (Wafer)sweet;%>
        <%sweetInf = wafer.getWafer();%>
        <td align="center" valign="top"><%=SweetType.WAFER.toString().toLowerCase()%></td>
        <%}%>
        <td align="center" valign="top"><%=sweet.getName().toString()%></td>
        <td align="center" valign="top"><%=sweet.getPrice()%></td>
        <td align="center" valign="top"><%=sweet.getSugar()%></td>
        <td align="center" valign="top"><%=sweet.getWeight()%></td>
        <td align="center" valign="top"><%=sweetInf.toString()%></td>
      </tr>
      <%}%>
      <br><br>
      <tr>
        <td colspan="6" align="center">
          <input type = "submit" value = "OK"/>
        </td>
      </tr>
    </form>
  </table>
</div>
</body>
</html>
