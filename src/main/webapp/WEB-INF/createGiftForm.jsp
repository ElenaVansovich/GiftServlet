<%@ page import="servlets.CreateGiftServlet" %>
<%@ page import="sweets.*" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 15.10.2016
  Time: 13:07
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

    <table border = "0">
        <td rowspan="6" valign="top">
          <table width="100%" cellpadding="2" cellspacing="1">
            <tr>
              <td align="center" colspan="6">
                <form action="CreateGiftServlet">
                  <input type = "submit" value = "Create new gift"/>
                </form>
              </td>
            </tr>
            <tr>
              <td width="13%">
                <form action="SortByPriceServlet">
                  <input type = "submit" value = "Sort by price"/>
                </form>
              </td>
              <td width="13%">
                <form action="SortBySugarServlet">
                  <input type = "submit" value = "Sort by sugar"/>
                </form>
              </td>
              <td width="13%">
                <form action="SortByWeightServlet">
                  <input type = "submit" value = "Sort by weight"/>
                </form>
              </td>
              <td width="13%">
                <form action="TotalWeightServlet">
                  <input type = "submit" value = "Total weight"/>
                </form>
              </td>
              <td width="13%">
                <form action="ParametersSearchServlet">
                  <input type = "submit" value = "Search sweets"/>
                </form>
              </td>
            </tr>
            <tr></tr>
            <tr></tr>
            <tr><td colspan="6" align="center">Add sweet</td></tr>
            <tr></tr>
            <tr>
                <td width="15%" align="center">
                    <form action="ButterscotchServlet">
                      <input type = "submit" name="butterscotch" value = "Butterscotch"/>
                    </form>
                </td>
                <td width="15%" align="center">
                  <form action="ChocolateServlet">
                    <input type = "submit" name="chocolate" value = "Chocolate"/>
                  </form>
                </td>
                <td width="15%" align="center">
                  <form action="JellyServlet">
                    <input type = "submit" name="jelly" value = "Jelly"/>
                  </form>
                </td>
                <td width="15%" align="center">
                  <form action="LiqueurServlet">
                    <input type = "submit"  name="liqueur" value = "Liqueur"/>
                  </form>
                </td>
                <td width="15%" align="center">
                  <form action="WaferServlet">
                    <input type = "submit" name="wafer" value = "Wafer"/>
                  </form>
                </td>
            </tr>
            <tr></tr>
            <tr><td colspan="6" align="center">Gift</td></tr>
            <tr></tr>
            <tr colspan="6">
                  <table width="100%">
                    <tr>
                      <td align="center" valign="top" width="13%">Class:</td>
                      <td align="center" valign="top" width="13%">Name:</td>
                      <td align="center" valign="top" width="13%">Price:</td>
                      <td align="center" valign="top" width="13%">Sugar:</td>
                      <td align="center" valign="top" width="13%">Weight:</td>
                      <td align="center" valign="top" width="13%">Additional information:</td>
                    </tr>
                    <table align="center" border = "0" width="100%">
                        <%for(Sweet sweet: CreateGiftServlet.gift.getGift()){%>
                        <tr>
                          <%Double sweetInf = 0.0;%>
                          <%if(sweet.getClass().getName().equals(new Butterscotch().getClass().getName())){%>
                          <%Butterscotch butterscotch = (Butterscotch)sweet;%>
                          <%sweetInf = butterscotch.getMilk();%>
                          <td align="center" valign="top" width="13%"><%=SweetType.BUTTERSCOTCH.toString().toLowerCase()%></td>
                          <%}%>
                          <%if(sweet.getClass().getName().equals(new Chocolate().getClass().getName())){%>
                          <%Chocolate chocolate = (Chocolate)sweet;%>
                          <%sweetInf = chocolate.getChocolate();%>
                          <td align="center" valign="top" width="13%"><%=SweetType.CHOCOLATE.toString().toLowerCase()%></td>
                          <%}%>
                          <%if(sweet.getClass().getName().equals(new Jelly().getClass().getName())){%>
                          <%Jelly jelly = (Jelly)sweet;%>
                          <%sweetInf = jelly.getGelatin();%>
                          <td align="center" valign="top" width="13%"><%=SweetType.JELLY.toString().toLowerCase()%></td>
                          <%}%>
                          <%if(sweet.getClass().getName().equals(new Liqueur().getClass().getName())){%>
                          <%Liqueur liqueur = (Liqueur)sweet;%>
                          <%sweetInf = liqueur.getLiqueur();%>
                          <td align="center" valign="top" width="13%"><%=SweetType.LIQUEUR.toString().toLowerCase()%></td>
                          <%}%>
                          <%if(sweet.getClass().getName().equals(new Wafer().getClass().getName())){%>
                          <%Wafer wafer = (Wafer)sweet;%>
                          <%sweetInf = wafer.getWafer();%>
                          <td align="center" valign="top" width="13%"><%=SweetType.WAFER.toString().toLowerCase()%></td>
                          <%}%>
                          <td align="center" valign="top" width="13%"><%=sweet.getName().toString()%></td>
                          <td align="center" valign="top" width="13%"><%=sweet.getPrice()%></td>
                          <td align="center" valign="top" width="13%"><%=sweet.getSugar()%></td>
                          <td align="center" valign="top" width="13%"><%=sweet.getWeight()%></td>
                          <td align="center" valign="top" width="13%"><%=sweetInf.toString()%></td>
                        </tr>
                        <%}%>
                    </table>
                  </table>
            </tr>
          </table>
        </td>
    </table>
</div>
</body>
</html>