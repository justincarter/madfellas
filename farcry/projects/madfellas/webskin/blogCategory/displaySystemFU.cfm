<cfsetting enablecfoutputonly="true" showdebugoutput="false"> 

<cfset fu = "/blog/">
<cfif len(stObj.alias)>
	<cfset fu = fu & stObj.alias>
<cfelse>
	<cfset fu = fu & stObj.title>
</cfif>

<cfoutput>#fu#</cfoutput>

<cfsetting enablecfoutputonly="false">