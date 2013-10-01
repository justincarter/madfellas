<cfsetting enablecfoutputonly="true">
<!--- @@displayname: Blog Post Type Body --->
<!--- @@author: Justin Carter (justin.w.carter@gmail.com) --->

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin">

<cfset qBlogPosts = application.fapi.getContentObjects(typename="blogPost", orderby="posteddatetime DESC")>

<cfoutput>
	<cfloop query="qBlogPosts" endrow="10">
		<section>
			<skin:view typename="blogPost" objectid="#qBlogPosts.objectid#" webskin="displayBody" />
		</section>
	</cfloop>
</cfoutput>

<cfsetting enablecfoutputonly="false">