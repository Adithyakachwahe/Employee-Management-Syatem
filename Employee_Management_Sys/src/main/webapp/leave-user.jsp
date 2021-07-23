<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.adithya.demo.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Request Leave</title>
<%@ include file="link" %>
</head>
<body>
<%@ include file="header.jsp" %>

<%
		String rid = session.getAttribute("rid").toString();
		String eid = session.getAttribute("eid").toString();
		//out.print(rid+"from session");
		//out.print(eid+"from session");
	%>
	
	    <!-- Leave form start -->
    <div class="container-sm" style="width:700px;     margin: 3rem auto 6rem auto;">
        <div class="jumbotron ">
            <h2 ><strong>Request for Leave</strong> </h2>
                <h6 style=" margin-bottom: 3rem;">Request your leave details below</h6>


            <div class="card">
                <div class="card-body">
                    <form action="leave-post" method="post">

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Name</label>
                                <input type="text" name="name" class="form-control" id="inputEmail4" placeholder="Fname"
                                value="<%
                                                RegistrationRepo objA=new RegistrationRepo(); 
                            		String  sqA="select fname from empmansys.registration where id="+rid+";";
                            		String sqA1="select lname from empmansys.registration where id = " + rid +";";
                                    String dataA=objA.display_details_one(sqA); 
                                    String dataA1=objA.display_details_one(sqA1); 
                                    String res=dataA+" "+dataA1;
                                          out.print(res); 
                                            %>"
                                >
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">Employee No</label>
                                <input type="text" name="eno" class="form-control" id="inputPassword4" placeholder="Lname" value="<%
                                            RegistrationRepo objBb=new RegistrationRepo(); 
                                            String sqBb=" select eno from empmansys.user where eid=" + eid +" ;";
                                            String dataBb=objBb.display_details_one(sqBb);
                                        out.print(dataBb); %>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Address</label>
                            <input type="text" name="add" class="form-control" id="inputAddress" placeholder="1234 Main St" value="<%
                                        		RegistrationRepo objE = new RegistrationRepo();
                                    String sqE = "select address from empmansys.registration where id = "+ rid +";";  
                                      String dataE = objE.display_details_one(sqE);
                                      out.print(dataE);%>">
                        </div>
                        <div class="form-group">
                            <label for="inputAddress2">Reason</label>
                            <input type="text" class="form-control" id="inputAddress2" placeholder="Enter Reason">
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputCity">City</label>
                                <input type="text" class="form-control" id="inputCity">
                            </div>
                            <div class="form-group col-md-4">
                                <label for="inputState">State</label>
                                <select id="inputState" class="form-control">
                                    <option selected>Karnataka</option>
                                    <option selected>Hydrabad</option>
                                    <option selected>Asam</option>
                                    <option selected>Goa</option>
                                    <option selected>Kerala</option>
                                </select>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="inputZip">Pin</label>
                                <input type="text" class="form-control" id="inputZip">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck">
                                <label class="form-check-label" for="gridCheck">
                                    Check me out
                                </label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Request</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- requset leave end -->
	
<%@ include file="footer.jsp" %>
<%@ include file="script" %>

</body>
</html>