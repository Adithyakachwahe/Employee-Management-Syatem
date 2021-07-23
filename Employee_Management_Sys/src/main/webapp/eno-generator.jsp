<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Id Generation</title>
<%@ include file="link" %>
</head>
<body>
<%@ include file="header-admin.jsp" %>
	
	 <!-- generation start -->

    <div class="input-group mb-3">
        <div class="container" style="width:1300px;     margin: 3rem auto 6rem auto;">
            <div class="jumbotron ">
                <table class="table table-bordered   ">
                    <thead>
                        <tr class="table-active">
                            <th colspan="4" style="text-align-last: center;">Successfully Registered</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="table-light">
                            <td colspan="2" style="text-align: center;"><strong> Employee Id Number is : </strong>
                                ${Eid }<span style="margin-left: 15px;"></span> </td>
                            <td colspan="2" style="text-align: center;"><strong> Password is: </strong> ${pass}<span
                                    style="margin-left: 15px;"></span> </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        </div>
        <!-- generation end -->
	
<%@ include file="footer.jsp" %>
<%@ include file="script" %>

</body>
</html>