<cfsetting enablecfoutputonly="true" /> 
<!--- @@displayname: Standard Page --->
<!--- @@author: Justin Carter (justin.w.carter@gmail.com)--->

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />


<skin:view stObject="#stObj#" webskin="displayHeaderStandard">

<skin:view stObject="#stObj#" webskin="#url.bodyView#" />

<skin:view stObject="#stObj#" webskin="displayFooterStandard">

	
<cfsetting enablecfoutputonly="false">