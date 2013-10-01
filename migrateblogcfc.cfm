<cfset blogcfcDSN = "mfblogcfc">
<cfset farcryDSN = application.dsn>

<cfparam name="url.migrate" default="0">

<cfset oBlogPost = application.fapi.getContentType(typename="blogPost")>
<cfset oBlogCategory = application.fapi.getContentType(typename="blogCategory")>


<cfquery name="qBlogCategories" datasource="#blogcfcDSN#">
	SELECT *
	FROM tblblogcategories
	ORDER BY categoryname DESC
</cfquery>
<cfquery name="qBlogPosts" datasource="#blogcfcDSN#">
	SELECT *
	FROM tblblogentries
</cfquery>



<cfoutput>

<h1>Blog CFC to FarCry migration</h1>
<p><a href="?migrate=1">Migrate</a></p>

<p>Found #qBlogCategories.recordCount# blog categories.</p>
<p>Found #qBlogPosts.recordCount# blog entries.</p>



<cfif url.migrate eq 1>

	<p>Migrating blog categories...</p>
	<cfloop query="qBlogCategories">
		<cfset stBlogCategory = structNew()>
		<cfset stBlogCategory.objectid = qBlogCategories.categoryid>
		<cfset stBlogCategory.label = qBlogCategories.categoryname>
		<cfset stBlogCategory.title = qBlogCategories.categoryname>
		<cfset stBlogCategory.alias = qBlogCategories.categoryalias>
		<cfset stBlogCategory.datetimecreated = now()>
		<cfset stBlogCategory.datetimelastupdated = now()>

		<cfset oBlogCategory.setData(stProperties=stBlogCategory)>
	</cfloop>
	<p>Done.</p>


	<p>Migrating blog entries...</p>
	<cfloop query="qBlogPosts">
		<cfset stBlogPost = structNew()>
		<cfset stBlogPost.objectid = qBlogPosts.id>
		<cfset stBlogPost.label = qBlogPosts.title>
		<cfset stBlogPost.title = qBlogPosts.title>
		<cfset stBlogPost.posteddatetime = qBlogPosts.posted>
		<cfset stBlogPost.body = qBlogPosts.body>
		<cfset stBlogPost.alias = qBlogPosts.alias>
		<cfset stBlogPost.views = qBlogPosts.views>
		<cfif qBlogPosts.released eq 1>
			<cfset stBlogPost.status = "approved">
		<cfelse>
			<cfset stBlogPost.status = "draft">
		</cfif>
		<cfset stBlogPost.datetimecreated = qBlogPosts.posted>
		<cfset stBlogPost.datetimelastupdated = qBlogPosts.posted>

		<cfquery name="qBlogPosts_aCategories" datasource="#blogcfcDSN#">
			SELECT categoryidfk
			FROM tblblogentriescategories
			WHERE entryidfk = '#qBlogPosts.id#'
		</cfquery>
		<cfset stBlogPost.aCategories = listToArray(valueList(qBlogPosts_aCategories.categoryidfk))>

		<cfquery name="qBlogPosts_aRelated" datasource="#blogcfcDSN#">
			SELECT relatedid
			FROM tblblogentriesrelated
			WHERE entryid = '#qBlogPosts.id#'
		</cfquery>
		<cfset stBlogPost.aRelated = listToArray(valueList(qBlogPosts_aRelated.relatedid))>

		<cfset oBlogPost.setData(stProperties=stBlogPost)>
	</cfloop>
	<p>Done.</p>


</cfif>

</cfoutput>
