<cfsetting enablecfoutputonly="true" /> 
<!--- @@displayname: Standard Page --->
<!--- @@author: Justin Carter (justin.w.carter@gmail.com)--->

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />


<skin:view objectid="#stobj.objectid#" typename="#stobj.typename#" webskin="displayHeaderStandard">

<skin:view typename="#stobj.typename#" objectid="#stobj.objectid#" webskin="#url.bodyView#" />

<skin:view objectid="#stobj.objectid#" typename="#stobj.typename#" webskin="displayFooterStandard">

	
<cfsetting enablecfoutputonly="false">