<html>
  <body>
    <table border="1">
      <tr>
        <td>Session ID</td>
        <td><%=session.getId()%></td>
      </tr>
      <tr>
        <td>Server IP</td>
        <td><%=request.getLocalAddr()%></td>
      </tr>
    </table>
    <div>Server Name: <b><%=request.getLocalName()%></b></div>
  </body>
</html>
