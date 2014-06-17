<cfsetting enablecfoutputonly="true">
<!--- @@displayname: Home Page --->
<!--- @@author: Justin Carter (justin.w.carter@gmail.com)--->

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />


<skin:view stObject="#stObj#" webskin="displayHeaderStandard">

<cfoutput>

<div class="row">
	<div class="col-xs-12 col-sm-6">
		<h2>Xbox Live Gamercard</h2>
		<iframe src="http://gamercard.xbox.com/Noleaf.card" scrolling="no" frameBorder="0" height="136" width="200">Noleaf</iframe>
		<br>
		<h2>Tracks on Spotify</h2>
		<iframe src="https://embed.spotify.com/?uri=spotify:track:6EF0xhfKtQNqUPz2mnE5BD" width="300" height="80" frameborder="0" allowtransparency="true"></iframe>
	</div>
	<div class="col-xs-12 col-sm-6">
		<h2>Latest Tweets</h2>
		<a class="twitter-timeline" data-dnt="true" href="https://twitter.com/justincarter" data-widget-id="478863523749974017" data-tweet-limit="3" data-chrome="noheader nofooter noborders noscrollbar transparent">Tweets by @justincarter</a>
		<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
	</div>
</div>

</cfoutput>

<skin:view stObject="#stObj#" webskin="displayFooterStandard">

	
<cfsetting enablecfoutputonly="false">