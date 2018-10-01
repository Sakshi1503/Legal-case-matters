<title>FORM 2</title>
<jsp:include page="header.jsp" />

<%@page import="Connection.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*"%>
<div class="container" style="width: 80%;">
	<h3 id="head" style="text-align: center; padding-bottom: 10px;">Form 2</h3>
	<form action="" method="post">
		<!-- <div class="form-row" style="padding-bottom: 15px;">
        </div> -->
		<div class="form-row" id="courtSelect" style="display: block;">
			<div class="form-row"
				style="width: 100%; padding-left: 5px; padding-right: 5px;">
				<div class="col-sm">
					<input type="radio" id="courtType" name="courtType"
						value="tribunalCourt"><label style="padding-left: 10px;">Tribunal
						Court</label>
				</div>
				<div class="col-sm">
					<input type="radio" id="courtType" name="courtType"
						value="highCourt"><label style="padding-left: 10px;">High
						Court</label>
				</div>
				<div class="col-sm">
					<input type="radio" id="courtType" name="courtType"
						value="supremeCourt"><label style="padding-left: 10px;">Supreme
						Court</label>
				</div>
			</div>
		</div>

		<div class="form-row" id="headingTC" align="center"
			style="display: none;">
			<h3 style="width: 100%;">Case Pending in Tribunal Court</h3>
		</div>
		<div class="form-row" id="headingHC" align="center"
			style="display: none;">
			<h3 style="width: 100%;">Case Pending in High Court</h3>
		</div>
		<div class="form-row" id="headingSC" align="center"
			style="display: none;">
			<h3 style="width: 100%;">Case Pending in Supreme Court</h3>
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
				<label for="caseStage">Section of Party</label> <input type="text"
					class="form-control" id="partySection" name="partySection"
					placeholder="Section of Party">
			</div>
		</div>

		<div class="form-row">
			<div class="col-sm">
				<label for="caseStage">Case Stage</label> <input type="text"
					class="form-control" id="caseStage" name="caseStage"
					placeholder="Stage of Case">
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
				<label for="PRDate">Date of Proof Report</label> <input type="Date"
					class="form-control" id="PRDate" name="PRDate"
					placeholder="Date of Proof Report">
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm">
				<label for="affidavitDate">Date of Affidavit</label> <input
					type="Date" class="form-control" id="affidavitDate"
					name="affidavitDate" placeholder="Date of Affidavit">
			</div>
		</div>

		<div class="form-row">
			<div class="col-sm">
				<label for="IRGiven">Intrim Relief Given?</label><br>
				<div class="form-check form-check-inline col-sm-4">
					<input class="form-check-input" type="radio" name="IRGiven"
						value="Y"> <label class="form-check-label"
						for="inlineRadio1">Yes</label>
				</div>
				<div class="form-check form-check-inline col-sm-4">
					<input class="form-check-input" type="radio" name="IRGiven"
						value="N"> <label class="form-check-label"
						for="inlineRadio1">No</label>
				</div>
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm">
				<div class="col-sm" id="ag"
					style="display: none; padding-left: 0px; padding-right: 0px;">
					<label for="AGappeared">AG Appeared?</label><br>
					<div class="form-check form-check-inline col-sm-4">
						<input class="form-check-input" type="radio" id="AGappeared"
							name="AGappeared" value="Yes"> <label
							class="form-check-label" for="inlineRadio1">Yes</label>
					</div>
					<div class="form-check form-check-inline col-sm-4">
						<input class="form-check-input" type="radio" id="AGappeared"
							name="AGappeared" value="No"> <label
							class="form-check-label" for="inlineRadio1">No</label>
					</div>
				</div>
			</div>
		</div>

		<div class="form-row">
			<div class="col-sm">
				<div class="col-sm" id="map"
					style="display: none; padding-left: 0px; padding-right: 0px;">
					<label for="mapped">Mapped?</label><br>
					<div class="form-check form-check-inline col-sm-4">
						<input class="form-check-input" type="radio" name="mapped"
							value="Y"> <label class="form-check-label"
							for="inlineRadio1">Yes</label>
					</div>
					<div class="form-check form-check-inline col-sm-4">
						<input class="form-check-input" type="radio" name="mapped"
							value="N"> <label class="form-check-label"
							for="inlineRadio1">No</label>
					</div>
				</div>
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm">
				<div class="form-row" id="Aname"
					style="display: none; padding-top: 0px; padding-bottom: 0px; padding-left: 5px; padding-right: 5px;">
					<label for="AGName">Name of AG</label> <input type="text"
						class="form-control" id="AGName" name="AGName"
						placeholder="Name of AG">
				</div>
			</div>
		</div>

		<div class="form-row" id="remark17_2_1"
			style="padding-left: 5px; padding-right: 5px; display: none;">
			<label for="remarks17_2_1">Remarks</label> <input type="text"
				class="form-control" id="remarks17_2_1" name="remarks17_2_1"
				placeholder="Remarks">
		</div>
		<div class="form-row" id="remark17_2_2"
			style="padding-left: 5px; padding-right: 5px; display: none;">
			<label for="remarks17_2_2">Remarks</label> <input type="text"
				class="form-control" id="remarks17_2_2" name="remarks17_2_2"
				placeholder="Remarks">
		</div>
		<div class="form-row" id="remark17_2_3"
			style="padding-left: 5px; padding-right: 5px; display: none;">
			<label for="remarks17_2_3">Remarks</label> <input type="text"
				class="form-control" id="remarks17_2_3" name="remarks17_2_3"
				placeholder="Remarks">
		</div>

		<center class="mt-3">
			<button type="submit" class="btn" value="Submit"
				name="F2submit">Submit</button>
		</center>
		<%
			Date date = new Date();
			try {
				Connect con = new Connect();
				if (request.getParameter("F2submit") != null) {
					if (con.CheckData(
							"select * from form17_2 where writNo='" + request.getParameter("writNumber") + "'")) {
						out.println("<script>alert('Record already exists......');</script>");
					}
					/* You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near  line 1 in jsp */
					else {
						if (con.Ins_Upd_Del(
								"insert into form17_2 (writNo, writYear, partyName, partySection, courtType, caseStage, writSubject, PRDate, affidavitDate, IRGiven, AGappeared, mapped, remarks17_2_2, enteredOn, enteredBy) VALUES ('"
										+ request.getParameter("writNumber") + "','" + request.getParameter("writYear")
										+ "', '" + request.getParameter("partyName") + "', '"
										+ request.getParameter("partySection") + "', '"
										+ request.getParameter("courtType") + "', '"
										+ request.getParameter("caseStage") + "', '"
										+ request.getParameter("writSubject") + "', '"
										+ request.getParameter("PRDate") + "', '"
										+ request.getParameter("affidavitDate") + "', '"
										+ request.getParameter("IRGiven") + "', '"
										+ request.getParameter("AGName") + "', '"
										+ request.getParameter("mapped") + "', '"
										+ request.getParameter("remarks17_2_1")
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
							if ($(this).attr('id') == 'AGappeared'
									&& $(this).attr('value') == 'Yes') {
								$('#Aname').show();
							} else if ($(this).attr('id') == 'AGappeared'
									&& $(this).attr('value') == 'No') {
								$('#Aname').hide();
							} else {
							}
						});
			});

	$(document)
			.ready(
					function() {
						$('input[type="radio"]')
								.click(
										function() {
											if ($(this).attr('id') == 'courtType'
													&& $(this).attr('value') == 'tribunalCourt') {
												$('#remark17_2_1').show();
												$('#remark17_2_2').hide();
												$('#remark17_2_3').hide();
												$('#ag').hide();
												$('#map').hide();
												$('#Aname').hide();
												$('#courtSelect').hide();
												$('#headingTC').show();
												$('#headingHC').hide();
												$('#headingSC').hide();
											} else if ($(this).attr('id') == 'courtType'
													&& $(this).attr('value') == 'highCourt') {
												$('#remark17_2_1').hide();
												$('#remark17_2_2').show();
												$('#remark17_2_3').hide();
												$('#ag').show();
												$('#map').show();
												$('input[name=AGappeared]')
														.prop('checked', false);
												$('#courtSelect').hide();
												$('#headingTC').hide();
												$('#headingHC').show();
												$('#headingSC').hide();
											} else if ($(this).attr('id') == 'courtType'
													&& $(this).attr('value') == 'supremeCourt') {
												$('#remark17_2_1').hide();
												$('#remark17_2_2').hide();
												$('#remark17_2_3').show();
												$('#ag').hide();
												$('#map').hide();
												$('#Aname').hide();
												$('#courtSelect').hide();
												$('#headingTC').hide();
												$('#headingHC').hide();
												$('#headingSC').show();
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