<cfprocessingdirective pageEncoding = "utf-8" suppressWhiteSpace = "yes">
	<cfoutput>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" 	 content="width=device-width" />
	<meta name="generator" 	 content="ContentBox powered by ColdBox" />
	<meta name="robots" 	 content="index,follow" />
<cfif cb.isEntryView() AND len(cb.getCurrentEntry().getHTMLDescription())><!--- Meta Description By Page or By Site --->
	<meta name="description" content="#cb.getCurrentEntry().getHTMLDescription()#" />
<cfelse>
	<meta name="description" content="#cb.siteDescription()#" />
</cfif>
<cfif cb.isEntryView() AND len(cb.getCurrentEntry().getHTMLKeywords())><!--- Meta Keywords By Page or By Site --->
	<meta name="keywords" 	 content="#cb.getCurrentEntry().getHTMLKeywords()#" />
<cfelse>
	<meta name="keywords" 	 content="#cb.siteKeywords()#" />
</cfif>
	<base href="#cb.siteBaseURL()#" /><!--- Base HREF for SES enabled URLs --->
	<title>
<cfif cb.isEntryView()>
	#cb.getCurrentEntry().getTitle()#
<cfelse>
	#cb.siteName()# - #cb.siteTagLine()#
</cfif>
	</title>
	<link rel="stylesheet" type='text/css'	href="#cb.layoutRoot()#/includes/css/foundation.css"><!--- CSS Links --->
	<link rel="stylesheet" type='text/css'	href="#cb.layoutRoot()#/includes/css/app.css">
	<link rel='stylesheet' type='text/css'	href='http://fonts.googleapis.com/css?family=Finger+Paint' >
	<link rel="alternate" type="application/rss+xml" 	title="Recent Blog Updates" 			href="#cb.linkRSS()#" /><!--- RSS Links --->
	<link rel="alternate" type="application/rss+xml" 	title="Recent Blog Comment Updates" 	href="#cb.linkRSS(comments=true)#" />
	<link rel="alternate" type="application/rss+xml" 	title="Recent Page Updates" 			href="#cb.linkPageRSS()#" />
	<link rel="alternate" type="application/rss+xml" 	title="Recent Page Comment Updates" 	href="#cb.linkPageRSS(comments=true)#" />	
	<link rel="alternate" type="application/rss+xml" 	title="Recent Content Updates" 			href="#cb.linkSiteRSS()#" />
	<link rel="alternate" type="application/rss+xml" 	title="Recent Content Comment Updates" 	href="#cb.linkSiteRSS(comments=true)#" />	
<cfif cb.isPageView()><!--- RSS Discovery If In View Mode --->
	<link rel="alternate" type="application/rss+xml" 	title="Pages's Recent Comments" 		href="#cb.linkPageRSS(comments=true,page=cb.getCurrentPage())#" />
</cfif>
	<script src="#cb.layoutRoot()#/includes/js/modernizr.foundation.js"></script><!--- JS Links --->
	<script src="#cb.layoutRoot()#/includes/js/jquery.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.placeholder.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.foundation.accordion.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.foundation.alerts.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.foundation.buttons.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.foundation.clearing.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.foundation.forms.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.foundation.joyride.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.foundation.magellan.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.foundation.mediaQueryToggle.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.foundation.navigation.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.foundation.reveal.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.foundation.tabs.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.foundation.tooltips.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.foundation.topbar.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/app.js"></script>
	<!--[if lt IE 9]><!--- IE Fix for HTML5 Tags --->
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	#cb.event("cbui_beforeHeadEnd")#<!--- ContentBoxEvent --->
	</cfoutput>
</cfprocessingdirective>