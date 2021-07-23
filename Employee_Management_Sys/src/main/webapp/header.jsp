<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
</head>
<body>
	        <!-- navbar -->

        <div class="card" >

            <div class="card-body">
                <nav class="navbar navbar-expand-lg navbar-light " style="background: aliceblue;">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">Employee Management System</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="position:absolute;right:50px;">
                                
                                <li class="nav-item">
                                    <a class="nav-link" href="myprofile"><strong>My Profile</strong> </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="view-sal.jsp"><strong>View Salary </strong> </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="display.jsp"><strong>View Attendance</strong> </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="leave"><strong>Ask Leave </strong> </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="status"><strong>Leave Status</strong> </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="logout"><strong>logout</strong> </a>
                                </li>
                                
                            </ul>
                           
                        </div>
    
                    </div>
    
                </nav>
            </div>
        </div>
        <!-- navbar ends-->
</body>
</html>