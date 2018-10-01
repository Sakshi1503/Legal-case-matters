<title>Home</title>
<jsp:include page="header.jsp" />

<br>
<center>
	<div id="head" class="container" style="margin-top: 0px;">

		<div class="row col-sm-12">
			<br>
			<div class="col-sm-4" style="margin-bottom: 45px;">

				<span style="font-size: 20px; padding-left: 0px"><b>Completed
						Case in Honorable Court</b></span>
				<div class="boxed"
					style="border: 1px; border-style: double; height: 100px; width: 100px;">
					<h1>
						<!--?php echo $admin; ?-->
					</h1>
				</div>
				<h1>
					<?php echo $admin; ?>
				</h1>
			</div>


			<div class="col-sm-4" style="margin-bottom: 45px;"
				style="padding-left: 0px"></div>


			<div class="col-sm-4" style="margin-bottom: 45px;"></div>
		</div>

		<div class="row col-sm-12">

			<div class="col-sm-4" style="margin-bottom: 45px;">

				<span style="font-size: 20px; padding-left: 0px"><b>Case
						Pending in Tribunal Court</b></span>
				<div class="boxed"
					style="border: 1px; border-style: double; height: 100px; width: 100px;">
					<h1>
						<!--?php echo $admin; ?-->
					</h1>
				</div>
				<h1></h1>
			</div>

			<div class="col-sm-4" style="margin-bottom: 45px;">

				<span style="font-size: 20px"><b>Case Pending in High
						Court</b></span>
				<div class="boxed"
					style="border: 1px; border-style: double; height: 100px; width: 100px;">
					<h1></h1>
				</div>
				<h1></h1>
			</div>



			<div class="col-sm-4" style="margin-bottom: 45px;"
				style="padding-left: 0px">
				<!-- <i class="fa fa-certificate fa-2x" aria-hidden="true" style="padding-left: 0x;"></i> -->

				<span style="font-size: 20px; padding-left: 0px"><b>Case
						Pending in Supreme Court</b></span>
				<div class="boxed"
					style="border: 1px; border-style: double; height: 100px; width: 100px;">
					<h1></h1>
				</div>
				<h1></h1>
			</div>
		</div>


		<div class="row col-sm-12">
			<div class="col-sm-4" style="margin-bottom: 25px;">

				<span style="font-size: 20px; padding-left: 0px"><b>Completed
						Case in High Court</b></span>
				<div class="boxed"
					style="border: 1px; border-style: double; height: 100px; width: 100px;">
					<h1></h1>
				</div>
				<h1></h1>
			</div>


			<div class="col-sm-4" style="margin-bottom: 25px;"></div>

			<div class="col-sm-4" style="margin-bottom: 25px;"
				style="padding-left: 0px"></div>
		</div>


	</div>
	</div>
</center>
<jsp:include page="footer.jsp" />
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
