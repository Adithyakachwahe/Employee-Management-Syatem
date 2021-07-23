<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<%@ include file="link" %>
</head>
<body>
<%@ include file="header-admin.jsp" %>
	<!-- Registration start -->
         <div class="container-sm" style="width:700px;     margin: 3rem auto 6rem auto;">
            <div class="jumbotron ">
                <div class="card">
                    <div class="card-body">
                        <form action="register" method="post">
                            <h3>Employee Registration</h3>
                            <br>
                            
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">First-Name:*</span>
                                <input type="text" name="fname" class="form-control" placeholder="FirstName"
                                    aria-label="fname" aria-describedby="basic-addon1">
                            </div>
    
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Last-Name:*</span>
                                <input type="text" name="lname" class="form-control" placeholder="LastName"
                                    aria-label="Username" aria-describedby="basic-addon1">
                            </div>
    
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Mobile No:*</span>
                                <input type="text" name="phno" class="form-control" placeholder="Mobile number"
                                    aria-label="Username" aria-describedby="basic-addon1">
                            </div>
    
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Email:*</span>
                                <input type="email" name="email" class="form-control" placeholder="Email@gmail.com"
                                    aria-label="Username" aria-describedby="basic-addon1">
                            </div>
    <!--  
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Date:*</span>
                                <input type="date" name="date" class="form-control" placeholder="Date"
                                    aria-label="Username" aria-describedby="basic-addon1">
                            </div>
                            -->
                            
                            
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Date Of Birth:*</span>
                                    <input type="date" data-date="" data-date-format="DD MMMM YYYY" value="2001-07-22" name="dob"class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                            </div>
                            
                            
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Department:*</span>
                                <select name="dept" id="inputState" class="form-control">
                                    <option>The service department</option>
                                    <option>The supply chain management</option>
                                    <option>The production and quality assurance</option>
                                    <option>The finance department</option>
                                    <option>The information technology</option>
                                 
                                </select>
                            </div>
    	
    						<div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Salary:*</span>
                                    <input type="number" data-date=""  value="99,999" name="sal" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                            </div>
                            
                            
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Technology:*</span>
                                    <input type="text" data-date="" value="JAVA" name="tech" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                            </div>
                            
                            
                            
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Address:*</span>
                                <textarea type="textarea"  rows="4" cols="50" name="address" class="form-control"
                                    placeholder="Address" aria-label="Username" aria-describedby="basic-addon1"></textarea>
                            </div>
    
    
                            <div class="btn1" style="margin-left: 35%;">
                                <button type="submit" class="btn btn-primary">Proceed Registration</button>
                            </div>
                            
                            
                            
                       </form>
    
                            
                            
                    </div>
                </div>
            </div>
        </div>
    <!-- Registration ends -->
    
    <%@ include file="footer.jsp" %>
    <%@ include file="script" %>
</body>
</html>