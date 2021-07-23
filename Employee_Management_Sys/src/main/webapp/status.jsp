<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix ="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
	<%@ taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Approve/Denial</title>
<%@ include file="link" %>
</head>
<body>
	<%@ include file="header.jsp" %>
	
		     <div class="container">
            <div class="jumbotron ">
    <div class=" card" style="    margin: 2rem auto;">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th scope="col">Employee-ID</th>
                            <th scope="col">Employee-Number</th>
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody>
           <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/empmansys" user="root" password="systemserver"/>
	<sql:query var="rs" dataSource="${db}">SELECT * FROM empmansys.leave;</sql:query> 
	
	<c:forEach var="ele" items="${rs.rows}">

		
					<tr>
                        <th scope="row"><c:out value="${ele.eid}"/></th>
                        <td><c:out value="${ele.ename}"/></td>
                        	<th scope="row"><div class="btn-group" role="group" aria-label="Basic example">
						<button type="button" class="btn  btn-secondary"  disabled >${ele.status}</button>
                          </div></th>                         
                       
                    </tr>	
	</c:forEach>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
	<%@ include file="footer.jsp" %>
	<%@ include file="script" %>
</body>
</html>