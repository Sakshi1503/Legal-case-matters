
<footer class="footer fixed-bottom">
	<div class="container-fluid">
		<span class="text-muted">DTE HACKATHON @2k18</span>
	</div>
</footer>
<script type="text/javascript" src="JScript/passtest.js"></script>
<script type="text/javascript">
         window.onscroll = function() {myFunction()};
        // Get the navbar
        var navbar = document.getElementById("navbar");
        var head = document.getElementById("head");
        // Get the offset position of the navbar
        var sticky = navbar.offsetTop;

        // Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position.. 
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
