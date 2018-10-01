<title>FORM 3</title>
<jsp:include page="header.jsp" />

<%@page import="Connection.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*"%>
<div class="container" style="width: 80%;">
	<h3 id="head" style="text-align: center; padding-bottom: 10px;">Form
		3</h3>
	<form action="" method="post">

		<div class="form-row" id="heading" align="center">
			<h3 style="width: 100%;">Completed Case in High Court</h3>
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
					placeholder="Name of Party">
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm">
				<label for="writSubject">Case Subject</label> <input type="text"
					class="form-control" id="writSubject" name="writSubject"
					placeholder="Writ subject">
			</div>
		</div>
		<div class="form-row">
			<div class="col-sm">
				<div class="form-row">
					<div class="col-sm">
						<label for="partySection">Section of Party</label> <input
							type="text" class="form-control" id="partySection"
							name="partySection" placeholder="Party Section">
					</div>

				</div>
				<div class="form-row">
					<div class="col-sm">
						<label for="judgementDate">Judgement Date</label> <input
							type="date" class="form-control" id="judgementDate"
							name="judgementDate" placeholder="Enter the Date of judgement">

					</div>
				</div>

			</div>

			<div class="col-sm-1"></div>
			<div class="col-sm" style="padding-left: 5px;">
				<div class="form-row">
					<label for="judgementDescr" style="padding-left: 5px;">Details
						of Judgement by High Court</label></br>
				</div>
				<div class="form-row">
					<div class="form-check form-check-inline col-sm-3">
						<input class="form-check-input" type="radio" id="judgementDetail"
							name="judgementDetail" value="Denied"> <label
							class="form-check-label" for="inlineRadio1"
							style="padding-left: 5px;">Denied</label>
					</div>
				</div>
				<div class="form-row">

					<div class="form-check form-check-inline col-sm-3">
						<input class="form-check-input" type="radio" id="judgementDetail"
							name="judgementDetail" value="Withdrawn"> <label
							class="form-check-label" for="inlineRadio1"
							style="padding-left: 5px;">Withdrawn</label>
					</div>
					</br>
				</div>
				<div class="form-row">
					<div class="form-check form-check-inline col-sm-3">
						<input class="form-check-input" type="radio" id="judgementDetail"
							name="judgementDetail" value="Suggestion"> <label
							class="form-check-label" for="inlineRadio1"
							style="padding-left: 5px;">Suggestion</label>
					</div>
				</div>
				<div class="form-row">
					<div class="form-check form-check-inline col-sm-3">
						<input class="form-check-input" type="radio" id="judgementDetail"
							name="judgementDetail" value="Order"> <label
							class="form-check-label" for="inlineRadio1"
							style="padding-left: 5px;">Order</label>
					</div>
				</div>
			</div>
		</div>

		<div class="form-row" id="suggestionH" style="display: none;">
			<label for="suggestionHC">Suggestion from High Court</label> <input
				type="text" class="form-control" id="suggestionHC"
				name="suggestionHC" placeholder="Suggestion from High Court">
		</div>
		<div class="form-row" id="orderH" style="display: none;">
			<label for="orderHC">Order from High Court</label> <input type="text"
				class="form-control" id="orderHC" name="orderHC"
				placeholder="Order from High Court">
		</div>
		<div class="form-row" id="actionOnOrder" style="display: none;">
			<label for="actionOnOrder">Action on Order</label> <input type="text"
				class="form-control" id="actionOnOrder" name="actionOnOrder"
				placeholder="Action on Order">
		</div>

		<div class="form-row">
			<div class="col-sm-12">
				<label for="remarks17_3">Remarks</label> <input type="text"
					class="form-control" id="remarks17_3" name="remarks17_3"
					placeholder="Remarks by respondant">
			</div>
		</div>

		<center class="mt-3">
			<button type="submit" class="btn" value="Submit" name="F3submit">Submit</button>
		</center>
		<%
			Date date = new Date();
			try {
				Connect con = new Connect();
				if (request.getParameter("F3submit") != null) {
					if (con.CheckData(
							"select * from form17_3 where writNo='" + request.getParameter("writNumber") + "'")) {
						out.println("<script>alert('Record already exists......');</script>");
					}
					/* You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near  line 1 in jsp */
					else {
						if (con.Ins_Upd_Del(
								"insert into form17_3 (writNo, writYear, partyName, partySection, writSubject, orderDate, detailsbyHC, suggestByHC, orderByHC, actionDoneOnOrder, remarks17_3, enteredOn, enteredBy) VALUES ('"
										+ request.getParameter("writNumber") + "','" + request.getParameter("writYear")
										+ "', '" + request.getParameter("partyName") + "', '"
										+ request.getParameter("partySection") + "', '"
										+ request.getParameter("writSubject") + "', '"
										+ request.getParameter("judgementDate") + "', '"
										+ request.getParameter("judgementDetail") + "', '"
										+ request.getParameter("suggestionHC") + "', '"
										+ request.getParameter("orderHC") + "', '"
										+ request.getParameter("actionOnOrder") + "', '"
										+ request.getParameter("remarks17_3") + "', NOW(), '1');"))
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
							if ($(this).attr('id') == 'judgementDetail'
									&& $(this).attr('value') == 'Suggestion') {
								$('#suggestionH').show();
								$('#orderH').hide();
								$('#actionH').hide();
							} else if ($(this).attr('id') == 'judgementDetail'
									&& $(this).attr('value') == 'Order') {
								$('#suggestionH').hide();
								$('#orderH').show();
								$('#actionH').show();
							} else if ($(this).attr('id') == 'judgementDetail'
									&& $(this).attr('value') == 'Denied') {
								$('#suggestionH').hide();
								$('#orderH').hide();
								$('#actionH').hide();
							} else if ($(this).attr('id') == 'judgementDetail'
									&& $(this).attr('value') == 'Withdrawn') {
								$('#suggestionH').hide();
								$('#orderH').hide();
								$('#actionH').hide();
							} else {
							}
						});
			});
</script>
<!-- <script type="text/javascript">
	window.onscroll = function() {
		myFunction()
	};

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