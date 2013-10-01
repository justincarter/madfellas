<cfsetting enablecfoutputonly="true">
<!--- @@displayname: Standard Body --->
<!--- @@author: Justin Carter (justin.w.carter@gmail.com) --->

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin">
<cfimport taglib="/farcry/core/tags/container" prefix="con">


<cfoutput>
	<h1><a href="#application.fapi.getLink(typename="blogPost", objectid=stObj.objectid)#">#stObj.title#</a></h1>
	<div class="content">
		<cfif structKeyExists(stObj, "body") AND len(stObj.body)>
			#stObj.body#
		</cfif>
	</div>
</cfoutput>

<cfsetting enablecfoutputonly="false">