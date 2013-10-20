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

</div>


<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>

<!--- disqus comment count --->
<script type="text/javascript">
var disqus_shortname = '#application.fapi.getConfig("blogfc", "disqusShortname")#';
(function () {
var s = document.createElement('script'); s.async = true;
s.type = 'text/javascript';
s.src = 'http://' + disqus_shortname + '.disqus.com/count.js';
(document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
}());
</script>

</body>

</html>
</cfoutput>

<cfsetting enablecfoutputonly="false">