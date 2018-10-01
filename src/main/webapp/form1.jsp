<title>FORM 1</title>
<jsp:include page="header.jsp" />

<%@page import="Connection.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*"%>

<div class="container" style="width: 80%; margin-bottom: 100px">
	<h3 id="head" style="text-align: center; padding-bottom: 10px;">Form 1</h3>


	<form action="form1.jsp" method="post">
		<div class="form-row" id="heading" align="center">
			<h3 style="width: 100%;">Completed Case in Honorable Court</h3>
		</div>
		<div class="form-row">
			<div class="col-sm">
				<label for="writNumber">Writ Petition Number</label> <input
					type="text" class="form-control" id="writNumber" name="writNumber"
					placeholder="Writ Number">
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm">
				<label for="writYear">Case Year</label> <input type="Date"
					class="form-control" id="writYear" name="writYear"
					placeholder="Writ Year">
			</div>
		</div>

		<div class="form-row">
			<div class="col-sm">
				<label for="respondantName">Name of Party</label> <input type="text"
					class="form-control" id="partyName" name="partyName"
					placeholder="Party Name">
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm">
				<label for="partySection">Section of party</label> <input
					type="text" class="form-control" id="partySection"
					name="partySection" placeholder="Party Section">
			</div>
		</div>

		<div class="form-row">
			<div class="col-sm">
				<label for="judgementDate">Judgement Date</label> <input type="date"
					class="form-control" id="judgementDate" name="judgementDate"
					placeholder="Enter the date of judgement">
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm"></div>
		</div>
		<div class="form-row">
			<div class="col-sm-12">
				<label for="judgementDescr">Brief the Judgement</label> <input
					type="text" class="form-control" id="judgementDescr"
					name="judgementDescr" placeholder="Give the details of Judgement">
			</div>
		</div>

		<div class="form-row">
			<div class="col-sm">
				<label>Opinion of DTE</label><br>
				<div class="form-check form-check-inline col-sm-4">
					<input class="form-check-input" type="radio" id="appealableDTE"
						name="appealableDTE" value="Yes"> <label
						class="form-check-label" for="inlineRadio1">Appealable</label>
				</div>

				<div class="form-check form-check-inline col-sm-1">
					<input class="form-check-input" type="radio" id="appealableDTE"
						name="appealableDTE" value="No"> <label
						class="form-check-label" for="inlineRadio1">Acceptable</label>
				</div>
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm">
				<label>Opinion of AGP</label><br>
				<div class="form-check form-check-inline col-sm-4">
					<input class="form-check-input" type="radio" id="appealableAGP"
						name="appealableAGP" value="Yes"> <label
						class="form-check-label" for="inlineRadio1">Appealable</label>
				</div>
				<div class="form-check form-check-inline col-sm-1">
					<input class="form-check-input" type="radio" id="appealableAGP"
						name="appealableAGP" value="No"> <label
						class="form-check-label" for="inlineRadio1">Acceptable</label>
				</div>
			</div>
		</div>

		<div class="form-row" id="opinionD"
			style="display: none; padding-left: 0px; padding-right: 0px;">
			<label for="opinionDTE">Brief opinion(DTE)</label> <input type="text"
				class="form-control" id="opinionDTE" name="opinionDTE"
				placeholder="Opinion (in brief) of DTE">
		</div>
		<div class="form-row" id="opinionA"
			style="display: none; padding-left: 0px; padding-right: 0px;">
			<label for="opinionAGP">Brief opinion(AGP)</label> <input type="text"
				class="form-control" id="opinionAGP" name="opinionAGP"
				placeholder="Opinion(in brief) of AGP">
		</div>

		<div class="form-row">
			<div class="col-sm">
				<label for="appealDateED">Date of Appeal</label> <input type="date"
					class="form-control" id="appealDateED" name="appealDateED"
					placeholder="Date of Appeal">
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm">
				<label for="judgementLastDate">Judgement Implementation
					Deadline</label> <input type="date" class="form-control"
					id="judgementLastDate" name="judgementLastDate"
					placeholder="Last date for implementation">
			</div>
		</div>

		<div class="form-row">
			<div class="col-sm-12">
				<label for="corED">Details of communication with E.D.</label> <input
					type="text" class="form-control" id="corED" name="corED"
					placeholder="Details of communication">
			</div>
		</div>
		<div class="form-row">
			<div class="col-sm-12">
				<label for="remarks17_1">Remarks</label> <input type="text"
					class="form-control" id="remarks17_1" name="remarks17_1"
					placeholder="Remarks by respondant">
			</div>
		</div>

		<center class="mt-3">
			<button type="submit" class="btn" value="Submit"
				name="F1submit">Submit</button>
		</center>
		<%
			Date date = new Date();
			try {
				Connect con = new Connect();
				if (request.getParameter("F1submit") != null) {
					if (con.CheckData(
							"select * from form17_1 where writNo='" + request.getParameter("writNumber") + "'")) {
						out.println("<script>alert('Record already exists......');</script>");
					}
					/* You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near  line 1 in jsp */
					else {
						if (con.Ins_Upd_Del(
								"insert into form17_1 (writNo, writYear, partyName, partySection, judgementDate, judgementDescr, appealableDTE, opinionDTE, appealableAGP, opinionAGP, appealDateED, judgementLastDate, corED, remarks17_1, enteredOn, enteredBy) VALUES ('"
										+ request.getParameter("writNumber") + "','" + request.getParameter("writYear")
										+ "', '" + request.getParameter("partyName") + "', '"
										+ request.getParameter("partySection") + "', '"
										+ request.getParameter("judgementDate") + "', '"
										+ request.getParameter("judgementDescr") + "', '"
										+ request.getParameter("appealableDTE") + "', '"
										+ request.getParameter("opinionDTE") + "', '"
										+ request.getParameter("appealableAGP") + "', '"
										+ request.getParameter("opinionAGP") + "', '"
										+ request.getParameter("appealDateED") + "', '"
										+ request.getParameter("judgementLastDate") + "', '"
										+ request.getParameter("corED") + "', '" + request.getParameter("remarks17_1")
										+ "', NOW(), '1');"))
							out.println("<script>alert('Record inserted......');</script>");
						else
							out.println("<script>alert('Record was not inserted......');</script>");
					}
				}
			} catch (Exception e) {
				out.println(e);
			}
		%>
	</form>
</div>

<jsp:include page="footer.jsp" />
<script type="text/javascript">
	$(document).ready(
			function() {
				$('input[type="radio"]').click(
						function() {
							if ($(this).attr('id') == 'appealableDTE'
									&& $(this).attr('value') == 'Yes') {
								$('#opinionD').show();
							} else if ($(this).attr('id') == 'appealableDTE'
									&& $(this).attr('value') == 'No') {
								$('#opinionD').hide();
							} else {
							}
						});
			});
	$(document).ready(
			function() {
				$('input[type="radio"]').click(
						function() {
							if ($(this).attr('id') == 'appealableAGP'
									&& $(this).attr('value') == 'Yes') {
								$('#opinionA').show();
							} else if ($(this).attr('id') == 'appealableAGP'
									&& $(this).attr('value') == 'No') {
								$('#opinionA').hide();
							} else {
							}

						});
			});
</script>
<!-- <script type="text/javascript">
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

</script> -->

</body>
</html>