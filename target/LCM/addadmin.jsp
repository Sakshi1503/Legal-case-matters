<title>Add Admin</title>
<jsp:include page="header.jsp" />
<%@page import="Connection.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSetMetaData"%>

<div class="container" style="width: 100%;">
	<div class="container col col-sm-4">
		<h3 id="head" style="text-align: center; padding-bottom: 25px;">Add Admin</h3>
		<form action="" method="post">
			<div class="form-group">
				<label for="adminName">Admin Name</label> <input type="text"
					class="form-control" id="adminName" name="adminName"
					placeholder="Enter Admin Name">
			</div>
			<div class="form-group">
				<label for="adminName">Email ID</label> <input type="text"
					class="form-control" id="mailID" name="mailID"
					placeholder="Enter Admin Name">
			</div>
			<div class="form-group">
				<label for="username">Username</label> <input type="text"
					class="form-control" id="username" name="username"
					placeholder="Enter Username">
			</div>
			<div class="form-group">
				<label for="pass1">Password</label> <input type="password"
					class="form-control" name="pass1" id="password"
					placeholder="Enter Password" onkeyup="checkPass(); return false;">
			</div>
			<div class="form-group">
				<label for="pass2">Confirm Password</label> <input type="password"
					class="form-control" name="pass2" id="password2"
					placeholder="Confirm Password" onkeyup="checkPass(); return false;">
				<span id="confirmMessage" class="confirmMessage"></span>
			</div>

			<div class="text-center">
				<button type="submit" class="btn" id="submitbtn" name="btnAdd"
					disabled="true">Add</button>
			</div>
			<%
          try{
        	Connect con=new Connect();
            if(request.getParameter("btnAdd")!=null)
            {
                 if(con.CheckData("select * from admin_master where adminUsername='"+request.getParameter("username")+"'"))
                {
                    out.println("<script>alert('Record already exists......');</script>");
                }
                
              else
                { 
                      if(con.Ins_Upd_Del("insert into admin_master(adminName,mailID,adminUsername,adminPassword) values('"+request.getParameter("adminName")+"','"+request.getParameter("mailID")+"','"+request.getParameter("username")+"','"+request.getParameter("pass1")+"')"))
                       		out.println("<script>alert('Record inserted......');</script>");
                      else
                    	  out.println("<script>alert('Record was not inserted......');</script>");
                 }	
            }
            }
		catch(Exception e){
			out.println(e);
		}
%>
		</form>

	</div>
</div>

<jsp:include page="footer.jsp" />

<!-- <script type="text/javascript" src="JScript/passtest.js"></script>
<script type="text/javascript">
         window.onscroll = function() {myFunction()};

        // Get the navbar
        var navbar = document.getElementById("navbar");
        var head = document.getElementById("head");
        // Get the offset position of the navbar
        var sticky = navbar.offsetTop;

        // Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
        function myFunction() {
          if (window.pageYOffset >= sticky) {
            navbar.classList.add("sticky")
            head.style.marginTop = "100px";
          } else {
            navbar.classList.remove("sticky");
            head.style.marginTop = "0px";
          }
        }

</script>
 -->
</body>
</html>