<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
 <%@ include file="link" %>

</head>
<body>
	 <!-- login starting -->
        <div class="container-sm" style="width:700px;     margin: 3rem auto 6rem auto;">

            <div class="jumbotron ">
                <div class="card">
    
                    <div class="card-body">
                        <h3 style="  margin: auto auto 2rem auto;text-align-last: center"><strong>Admin-Section</strong> </H3>
    
                        <form action="check" method="post">
                            <div class="form-group row" style="margin-bottom: 1.5rem;">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Admin Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputEmail3" name="aname"
                                        placeholder="Admin-Name">
                                </div>
                            </div>
                            <div class="form-group row" style="margin-bottom: 1rem;">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" name="password" id="inputPassword3"
                                        placeholder="Password">
                                </div>
                            </div>
    
    
    
                            <div class="form-group row">
                                <div class="col-sm-10" style="text-align-last: center; margin-top: 1.5rem; width:100%; margin-left:3rem;">
                                    <button type="submit" class="btn btn-secondary">Sign in</button>
                                </div>
                            </div>
                        </form>
    
                    </div>
                </div>
    
    
            </div>
        </div>
    
        
    
    
    
        <!-- login ending -->
        
 <%@ include file="script" %>
</body>
</html>