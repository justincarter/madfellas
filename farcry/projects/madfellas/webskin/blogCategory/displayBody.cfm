<cfsetting enablecfoutputonly="true">
<!--- @@displayname: Blog Category Body --->
<!--- @@author: Justin Carter (justin.w.carter@gmail.com) --->

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin">

<cfset qBlogPosts = getBlogPostsByCategory(stObj.objectid)>

<cfoutput>
	<cfloop query="qBlogPosts" endrow="10">
		<section>
			<skin:view typename="blogPost" objectid="#qBlogPosts.objectid#" webskin="displayBody" />
		</section>
	</cfloop>
</cfoutput>

<cfsetting enablecfoutputonly="false">