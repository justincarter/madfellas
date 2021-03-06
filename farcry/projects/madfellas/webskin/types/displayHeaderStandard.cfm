<cfsetting enablecfoutputonly="true">
<!--- @@displayname: Header Standard --->
<!--- @@author: Justin Carter (justin.w.carter@gmail.com)--->

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin">

<!--- params --->
<cfparam name="stParam.title" default="#application.fc.lib.seo.getTitle()#">
<cfparam name="stParam.description" default="#application.fc.lib.seo.getDescription()#">


<cfoutput><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">

	<title>#stParam.title# - #application.fapi.getConfig("general", "sitetitle")#</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="#application.fc.lib.esapi.encodeForHTMLAttribute(stParam.description)#">

	<!--[if lt IE 9]><script src="/js/html5shiv.js"></script><![endif]-->

	<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="/css/style.css" rel="stylesheet" type="text/css">
	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet" type="text/css">

	<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		ga('create', 'UA-44983620-1', 'madfellas.com');
		ga('send', 'pageview');
	</script>
</head>

<body>
<div class="wrap">

<header>
	<div class="mask">
		<nav class="navbar navbar-inverse" role="navigation">
			<div class="container">
				<div class="col-md-10 col-md-push-1 col-sm-12 col-xs-12">
					<skin:simpleNav class="nav navbar-nav">
				</div>
			</div>
		</nav>
		<h1><small><span>Justin Carter's</span></small> madfellas.com</h1>
	</div>
</header>

<div class="main container">
	<div class="col-md-10 col-md-push-1 col-sm-12 col-xs-12">
</cfoutput>

<cfsetting enablecfoutputonly="false">