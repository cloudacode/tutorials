<%@page import="java.sql.DriverManager"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%> 
<%
String id = request.getParameter("userid"); String driver =
"com.mysql.jdbc.Driver"; String connectionUrl =
"jdbc:mysql://database-1.cxm6fgejlg3y.ap-northeast-2.rds.amazonaws.com:3306/";
String database = "javatest"; String userid = "admin"; String password =
"qazWSX123"; try { Class.forName(driver); } catch (ClassNotFoundException e) {
e.printStackTrace(); } Connection connection = null; Statement statement = null;
ResultSet resultSet = null; %>
<!DOCTYPE html>
<html>
  <body>
    <table border="1">
      <tr>
        <td>session id</td>
        <td><%=session.getId()%></td>
      </tr>
      <tr>
        <td>foo</td>
        <td>bar</td>
      </tr>
      <% try{ connection = DriverManager.getConnection(connectionUrl+database,
      userid, password); statement=connection.createStatement(); String sql
      ="select id, foo, bar from testdata"; resultSet =
      statement.executeQuery(sql); while(resultSet.next()){ %>
      <tr>
        <td><%=resultSet.getString("foo") %></td>
        <td><%=resultSet.getString("bar") %></td>
      </tr>
      <% } connection.close(); } catch (Exception e) { e.printStackTrace(); } %>
    </table>
  </body>
</html>
