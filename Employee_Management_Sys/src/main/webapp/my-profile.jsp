<%@page import="com.adithya.demo.dao.RegistrationRepo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
<%@ include file="header.jsp" %>

	<%
		String rid = session.getAttribute("rid").toString();
		String eid = session.getAttribute("eid").toString();
		//out.print(rid+"from session");
	%>
	
	   <!-- Myprofile booking -->

    <div class="container-sm" style="width:700px;     margin: 3rem auto 6rem auto;">

        <div class="jumbotron ">
            <div class="card">
                <div class="card-body">
                    <form>
                        <h3>Your Details</h3>
                        <br>
                        
                        <div class=" form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Registration ID</label>
                                <div class="col-sm-10">

                                    <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                        placeholder="Mobile number" value="${rid }" >

                                </div>
                                
                         <div class="form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Employee No</label>
                                <div class="col-sm-10">
                                    <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                        placeholder="Mobile number" value="<%
                                            RegistrationRepo objBb=new RegistrationRepo(); 
                                            String sqBb=" select eno from empmansys.user where eid=" + eid +" ;";
                                            String dataBb=objBb.display_details_one(sqBb);
                                        out.print(dataBb); %>" >

                                </div>
                        
                        <div class="form-group row">
                            <label for="staticEmail" class="col-sm-2 col-form-label">Name</label>
                            <div class="col-sm-10">
                                <input type="text" name="name" readonly class="form-control-plaintext"
                                    			 value="<%
                                                RegistrationRepo objA=new RegistrationRepo(); 
                            		String  sqA="select fname from empmansys.registration where id="+rid+";";
                            		String sqA1="select lname from empmansys.registration where id = " + rid +";";
                                    String dataA=objA.display_details_one(sqA); 
                                    String dataA1=objA.display_details_one(sqA1); 
                                    String res=dataA+" "+dataA1;
                                          out.print(res.toUpperCase()); 
                                            %>">

                            </div>
                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Mobile No</label>
                                <div class="col-sm-10">
                                    <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                        placeholder="Mobile number" value="<%
                                            RegistrationRepo objB=new RegistrationRepo(); 
                                            String sqB=" select phno from empmansys.registration where id=" + rid +" ;";
                                            String dataB=objB.display_details_one(sqB);
                                        out.print(dataB); %>" >

                                </div>
                            </div>
                            <div class=" form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">

                                    <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                        placeholder="Mobile number" value="<%
                                        		RegistrationRepo objC=new RegistrationRepo(); 
                                                    String sqC=" select email from empmansys.registration where id=" + rid+" ;";
                                                    String dataC=objC.display_details_one(sqC);
                                        out.print(dataC); %>" >

                                </div>
                            </div>
                            <div class=" form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Date Of Birth</label>
                                <div class="col-sm-10">

                                    <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                        placeholder="Mobile number" value="<%
                                        		RegistrationRepo obj=new RegistrationRepo(); 
                                                    String sq=" select dob from empmansys.registration where id=" + rid +";";
                                                    String data=obj.display_details_one(sq);
                                                    out.print(data); %>" >

                                </div>

                            </div>
                            <div class=" form-group row">

                                <label for="staticEmail" class="col-sm-2 col-form-label">Department Name</label>

                                <div class="col-sm-10">

                                    <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                        placeholder="Mobile number" value="<%
                                        		RegistrationRepo obj1=new RegistrationRepo(); 
                                                        String sq1=" select dept from empmansys.registration where id=" + rid +" ;"; 
                                                        String data1=obj1.display_details_one(sq1);
                                        out.print(data1); %>" >

                                </div>

                            </div>
	
	
							<div class=" form-group row">

                                <label for="staticEmail" class="col-sm-2 col-form-label">Salary:</label>

                                <div class="col-sm-10">

                                    <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                        placeholder="Mobile number" value="<%
                                        		RegistrationRepo obj1a=new RegistrationRepo(); 
                                                        String sq1a=" select sal from empmansys.registration where id=" + rid +" ;"; 
                                                        String data1a=obj1a.display_details_one(sq1a);
                                        out.print(data1a); %>" >

                                </div>

                            </div>
                            
                            
                            <div class=" form-group row">

                                <label for="staticEmail" class="col-sm-2 col-form-label">Technology:</label>

                                <div class="col-sm-10">

                                    <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                        placeholder="Mobile number" value="<%
                                        		RegistrationRepo obj1aa=new RegistrationRepo(); 
                                                        String sq1aa=" select tech from empmansys.registration where id=" + rid +" ;"; 
                                                        String data1aa=obj1a.display_details_one(sq1aa);
                                        out.print(data1aa); %>" >

                                </div>

                            </div>
 

                            </div>


                            
                            <div class=" form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Address</label>
                                <div class="col-sm-10">
                                    <textarea  rows="4" cols="50" readonly name="admin-id"
                                        class="form-control" placeholder="Address" aria-label="Username"
                                        ria-describedby="basic-addon1"><%
                                        		RegistrationRepo objE = new RegistrationRepo();
                                    String sqE = "select address from empmansys.registration where id = "+ rid +";";  
                                      String dataE = objE.display_details_one(sqE);
                                      out.print(dataE);%></textarea>

                                </div>
                            </div>

                        </div>



                    </form>

                </div>




            </div>




        </div>

    </div>
</div>

    <!-- Myprofile  ends -->
   
	
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
	
	<%@ include file="footer.jsp" %>
</body>
</html>