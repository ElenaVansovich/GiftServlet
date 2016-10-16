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
      <form action="ButterscotchServletGetInf">
        <tr>
          <td align="right" valign="top" width="45%">Name:</td>
          <td align="left" valign="top"><input type="text" name="nameButterscotch" size="20px"><br><br></td>
        </tr>
        <tr>
          <td align="right" valign="top" width="45%">Price:</td>
          <td align="left" valign="top"><input type="text" name="priceButterscotch" size="20px"><br><br></td>
        </tr>
        <tr>
          <td align="right" valign="top" width="45%">Sugar:</td>
          <td align="left" valign="top"><input type="text" name="sugarButterscotch" size="20px"><br><br></td>
        </tr>
        <tr>
          <td align="right" valign="top" width="45%">Weight:</td>
          <td align="left" valign="top"><input type="text" name="weightButterscotch" size="20px"><br><br></td>
        </tr>
        <tr>
          <td align="right" valign="top" width="45%">Milk:</td>
          <td align="left" valign="top"><input type="text" name="chocolateButterscotch" size="20px"><br><br></td>
        </tr>
        <tr>
          <td valign="top" width="45%"></td>
          <td align="left" valign="top">
            <input type="submit" name="submitButterscotchInf" value="OK">
          </td>
        </tr>
      </form>
  </table>
</div>
</body>
</html>
