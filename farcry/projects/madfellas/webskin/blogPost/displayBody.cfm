<cfsetting enablecfoutputonly="true">
<!--- @@displayname: Standard Body --->
<!--- @@author: Justin Carter (justin.w.carter@gmail.com) --->

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin">

<cfset qCategories = application.fapi.getContentObjects(typename="blogCategory", lProperties="objectid,title", objectid_IN=arrayToList(stObj.aCategories), orderby="label ASC")>


<cfoutput>
	<h1><a href="#application.fapi.getLink(typename="blogPost", objectid=stObj.objectid)#">#stObj.title#</a></h1>
	<p class="byline">
		<i class="icon-time icon-fixed-width"></i> #lsDateFormat(stObj.posteddatetime, "d mmmm yyyy")# #lsTimeFormat(stObj.posteddatetime, "h:mm tt")#
		by Justin Carter<br>
		<cfif qCategories.recordCount>
			<i class="icon-tag icon-fixed-width"></i> 
			<cfloop query="qCategories">
				<a href="#application.fapi.getLink(typename="blogCategory", objectid=qCategories.objectid)#">#qCategories.title#</a>
				<cfif qCategories.currentrow neq qCategories.recordCount>
					&middot;
				</cfif>
			</cfloop>
		</cfif>
	</p>

	<div class="content">
		<cfif structKeyExists(stObj, "body") AND len(stObj.body)>
			#stObj.body#
		</cfif>
	</div>
</cfoutput>

<cfsetting enablecfoutputonly="false">