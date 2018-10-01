<%@page import="Connection.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<element> <!DOCTYPE html> </element>
<html>
<head>

<title>Login</title>
<link rel="icon" type="image/ico" href="images/logo.png" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/DTE.css">

</head>
<body>

	<div class="bgimg-1">
		<div class="caption-img">
			<a href="login.jsp"> <img src="images/logo.png"></a>
		</div>
		<div class="caption">
			<span class="border-dte"
				style="color: white; font-size: 64px; font: 20px"Lato", sans-serif;">DTE
				HACKATHON</span>
		</div>
	</div>
	<div
		style="color: #777; background-color: white; text-align: center; padding: 50px 80px; text-align: justify;">
		<h3 style="text-align: center;">DTE HACKATHON</h3>
		<p>Education Ministry, Govt. of Gujarat has initiated series of
			interventions to harness creative potential of 14 lacs students
			across 60+ universities and extending all possible support for their
			innovations and start-ups. Students are capable to become the
			country’s largest force of problem solvers and eventually become job
			creators. To orient students towards problem-solving, the Education
			Department had organized "Smart Gujarat for New India Hackathon
			2017-18". Recently, Summer Innovation Challenge 2018 (SIC 2018) on
			the theme of “WATER” has been launched by Education Department.</p>
		<p>Along the lines of these interventions, the Directorate of
			Technical Education (DTE), Government of Gujarat has announced “DTE
			Hackathon”. As a part of this initiative, altogether 20 problem
			statements have been identified within DTE.</p>
	</div>
	<div class="bgimg-1">

		<div class="text-center" style="padding: 50px 0; padding-top: 15%;">
			<div class="logo">Login</div>
			<!-- Main Form -->
			<div class="login-form-1">
				<form id="login-form" class="text-left" method="POST">
					<div class="login-form-main-message"></div>
					<div class="main-login-form">
						<div class="login-group">
							<div class="form-group">
								<label for="username" class="sr-only">Username</label> <input
									type="text" class="form-control" id="username" name="username"
									placeholder="Username">
							</div>
							<div class="form-group">
								<label for="password" class="sr-only">Password</label> <input
									type="password" class="form-control" id="password"
									name="password" placeholder="Password">
							</div>
							<div class="form-group login-group-checkbox">
								<input type="checkbox" id="lg_remember" name="lg_remember">
								<label for="lg_remember">Remember</label>
							</div>
						</div>
						<button type="submit" class="login-button" name="btnLogin">
							<i class="fas fa-angle-right" style="font-size: 40px;"></i>
						</button>
					</div>
					<%
						if (request.getParameter("btnLogin") != null && request.getParameter("username")!=null && request.getParameter("password")!=null)
						{
							Connect con = new Connect();
							if (con.CheckData("select * from admin_master where adminUsername='"+request.getParameter("username")+"' and adminPassword='"+request.getParameter("password")+"'")) 
							{
								response.sendRedirect("adminhome.jsp");
							} 
							else if(con.CheckData("select * from admin_master where adminUsername='"+request.getParameter("username")+"'"))
							{
								out.println("<script>alert('INCORRECT PASSWORD');</script>");
							}
							else
							{
								out.println("<script>alert('USERNAME DOESNOT EXIST');</script>");
							}
						}
					%>
					<div class="etc-login-form">
						<p>
							Forgot Your Password? <a href="#">Click Here</a>
						</p>
					</div>
				</form>
			</div>
			<!-- end:Main Form     https://bootsnipp.com/snippets/featured/custom-login-registration-amp-forgot-password -->
		</div>

	</div>

	<jsp:include page="footer.jsp" />

</body>
</html>
