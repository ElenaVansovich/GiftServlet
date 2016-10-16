<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 15.10.2016
  Time: 12:06
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

    <table align="left" border = "0" width="100%">
      <tr>
        <td valign="top" width="45%"></td>
        <td align="left" valign="top">
          Enter information <br>
        </td>
        <form action="JellyServletGetInf">
          <tr>
            <td align="right" valign="top" width="45%">Name:</td>
            <td align="left" valign="top"><input type="text" name="nameJelly" size="20px"><br><br></td>
          </tr>
          <tr>
            <td align="right" valign="top" width="45%">Price:</td>
            <td align="left" valign="top"><input type="text" name="priceJelly" size="20px"><br><br></td>
          </tr>
          <tr>
            <td align="right" valign="top" width="45%">Sugar:</td>
            <td align="left" valign="top"><input type="text" name="sugarJelly" size="20px"><br><br></td>
          </tr>
          <tr>
            <td align="right" valign="top" width="45%">Weight:</td>
            <td align="left" valign="top"><input type="text" name="weightJelly" size="20px"><br><br></td>
          </tr>
          <tr>
            <td align="right" valign="top" width="45%">Gelatin:</td>
            <td align="left" valign="top"><input type="text" name="gelatin" size="20px"> <br><br></td>
          </tr>
          <tr>
            <td valign="top" width="45%"></td>
            <td align="left" valign="top">
              <input type="submit" value="OK">
            </td>
          </tr>
        </form>
</table>
</div>
</body>
</html>
