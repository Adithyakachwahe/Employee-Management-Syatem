<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="link" %>
</head>
<body>
<%@ include file="header.jsp" %>


<%

String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/empmansys";
String database = "empmansys";
String userid = "root";
String password = "systemserver";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<div class="container-sm" style="width:700px;     margin: 3rem auto 6rem auto;">
            <div class="jumbotron ">
                <div class="card">
                    <div class="card-body">
<table class = "table table-striped" >
<tr>
<th scope="col">Employee_id</th>
<th scope="col">Employee_name</th>
<th scope="col">Department</th>
<th scope="col">Technology</th>
<th scope="col">Salary</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();

String sql ="select * from empmansys.emp;";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getInt("eid") %></td>
<td><%=resultSet.getString("ename") %></td>
<td><%=resultSet.getString("dep") %></td>
<td><%=resultSet.getString("tech") %></td>
<td><%=resultSet.getInt("sal") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

<form action="first">
<button type="button" class="btn btn-success">Done</button>
</form>

</div>
</div>
</div>
</div>

<%@ include file="script" %>
</body>
</html>
