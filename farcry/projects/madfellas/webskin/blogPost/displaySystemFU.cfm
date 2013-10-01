<cfsetting enablecfoutputonly="true" showdebugoutput="false"> 

<cfset year = datepart("yyyy", stObj.posteddatetime)>
<cfset month = datepart("m", stObj.posteddatetime)>
<cfset day = datepart("d", stObj.posteddatetime)>

<cfset fu = "/blog/#year#/#month#/#day#/">
<cfif len(stObj.alias)>
	<cfset fu = fu & stObj.alias>
<cfelse>
	<cfset fu = fu & stObj.title>
</cfif>

<cfoutput>#fu#</cfoutput>

<cfsetting enablecfoutputonly="false">