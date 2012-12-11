<cfoutput>
	<!--- Set the viewport width to device width for mobile --->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" 	 content="width=device-width" />
	<meta name="generator" 	 content="ContentBox powered by ColdBox" />
	<meta name="robots" 	 content="index,follow" />
	<!--- Meta Description By Page or By Site --->
<cfif cb.isEntryView() AND len(cb.getCurrentEntry().getHTMLDescription())>
	<meta name="description" content="#cb.getCurrentEntry().getHTMLDescription()#" />
<cfelse>
	<meta name="description" content="#cb.siteDescription()#" />
</cfif>
	<!--- Meta Keywords By Page or By Site --->
<cfif cb.isEntryView() AND len(cb.getCurrentEntry().getHTMLKeywords())>
	<meta name="keywords" 	 content="#cb.getCurrentEntry().getHTMLKeywords()#" />
<cfelse>
	<meta name="keywords" 	 content="#cb.siteKeywords()#" />
</cfif>
	<!--- Base HREF for SES enabled URLs --->
	<base href="#cb.siteBaseURL()#" />
	<title>
<cfif cb.isEntryView()>
	#cb.getCurrentEntry().getTitle()#
<cfelse>
	#cb.siteName()# - #cb.siteTagLine()#
</cfif>
	</title>
	<!--- CSS Links --->
	<link rel="stylesheet" type='text/css'	href="#cb.layoutRoot()#/includes/css/foundation.css">
	<link rel="stylesheet" type='text/css'	href="#cb.layoutRoot()#/includes/css/app.css">
	<link rel='stylesheet' type='text/css'	href='http://fonts.googleapis.com/css?family=Finger+Paint' >
	<!--- RSS Links --->
	<link rel="alternate" type="application/rss+xml" 	title="Recent Blog Updates" 			href="#cb.linkRSS()#" />
	<link rel="alternate" type="application/rss+xml" 	title="Recent Blog Comment Updates" 	href="#cb.linkRSS(comments=true)#" />
	<link rel="alternate" type="application/rss+xml" 	title="Recent Page Updates" 			href="#cb.linkPageRSS()#" />
	<link rel="alternate" type="application/rss+xml" 	title="Recent Page Comment Updates" 	href="#cb.linkPageRSS(comments=true)#" />	
	<link rel="alternate" type="application/rss+xml" 	title="Recent Content Updates" 			href="#cb.linkSiteRSS()#" />
	<link rel="alternate" type="application/rss+xml" 	title="Recent Content Comment Updates" 	href="#cb.linkSiteRSS(comments=true)#" />	
	<!--- RSS Discovery If In View Mode --->
<cfif cb.isPageView()>
	<link rel="alternate" type="application/rss+xml" 	title="Pages's Recent Comments" 		href="#cb.linkPageRSS(comments=true,page=cb.getCurrentPage())#" />
</cfif>
	<!--- JS Links --->
	<script src="#cb.layoutRoot()#/includes/js/modernizr.foundation.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.js"></script>
	<!--- IE Fix for HTML5 Tags --->
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	
	<!--- ContentBoxEvent --->
	#cb.event("cbui_beforeHeadEnd")#
</cfoutput>