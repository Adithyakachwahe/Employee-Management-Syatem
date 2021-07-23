<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@ include file="link" %>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<%
		String rid = session.getAttribute("rid").toString();
		out.print(rid+"from session");
	%>
	hello ${user.eno} ${eid } 
	
	<%@ include file="footer.jsp" %>
	
<%@ include file="script" %>

</body>
</html>