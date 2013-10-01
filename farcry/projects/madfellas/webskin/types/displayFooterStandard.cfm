<cfsetting enablecfoutputonly="true">
<!--- @@displayname: Footer Standard --->
<!--- @@author: Justin Carter (justin.w.carter@gmail.com)--->

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin">

<cfoutput>
		</div>
	</div>

	<footer>
		<div class="container">
			<div class="col-md-10 col-md-push-1">
				<p>Copyright &copy; 2003-#datePart("yyyy", now())# Justin Carter.</p>
				<p>madfellas.com is powered by <a href="http://www.farcrycore.org">FarCry Core</a> and <a href="http://www.getrailo.org">Railo</a>.</p>
			</div>
		</div>
	</footer>


	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>

<!--- 
	<script type="text/javascript">
	$(function(){
		$("##header-search input[name='q']").focus(function(){
			if (this.value == "Search") this.value = "";
		});
		$("##header-search input[name='q']").blur(function(){
			if (this.value == "") this.value = "Search";
		});
	});
	</script>
 --->
</body>

</html>
</cfoutput>

<cfsetting enablecfoutputonly="false">