<cfsetting enablecfoutputonly="true">
<!--- @@displayname: Home Page --->
<!--- @@author: Justin Carter (justin.w.carter@gmail.com)--->

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />


<skin:view objectid="#stobj.objectid#" typename="#stobj.typename#" webskin="displayHeaderStandard">

<cfoutput>

<h2>Xbox Live Gamercard</h2>
<iframe src="http://gamercard.xbox.com/Noleaf.card" scrolling="no" frameBorder="0" height="140" width="204">Noleaf</iframe>

</cfoutput>

<skin:view objectid="#stobj.objectid#" typename="#stobj.typename#" webskin="displayFooterStandard">

	
<cfsetting enablecfoutputonly="false">