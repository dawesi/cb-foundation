<cfoutput>
<!DOCTYPE html>

<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<!--- Set the viewport width to device width for mobile --->
	<meta name="viewport" content="width=device-width" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
	<link rel="stylesheet" href="#cb.layoutRoot()#/includes/lib/foundation/css/foundation.css">
	<link rel="stylesheet" href="#cb.layoutRoot()#/includes/css/app.css">
	<!--- RSS Links --->
	<link rel="alternate" type="application/rss+xml" title="Recent Blog Updates" href="#cb.linkRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Blog Comment Updates" href="#cb.linkRSS(comments=true)#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Updates" href="#cb.linkPageRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Comment Updates" href="#cb.linkPageRSS(comments=true)#" />	
	<link rel="alternate" type="application/rss+xml" title="Recent Content Updates" href="#cb.linkSiteRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Content Comment Updates" href="#cb.linkSiteRSS(comments=true)#" />	
	<!--- RSS Discovery If In View Mode --->
<cfif cb.isPageView()>
	<link rel="alternate" type="application/rss+xml" title="Pages's Recent Comments" href="#cb.linkPageRSS(comments=true,page=cb.getCurrentPage())#" />
</cfif>
	<link href='http://fonts.googleapis.com/css?family=Finger+Paint' rel='stylesheet' type='text/css'>

	<script src="#cb.layoutRoot()#/includes/lib/foundation/js/modernizr.foundation.js"></script>
	<script src="#cb.layoutRoot()#/includes/lib/jQuery/js/jquery.js"></script>
	<script>
       $(document).ready(function() {
			$("##tweet").getTwitter({
				userName: "I_TwitIT",
				numTweets: 5,
				loaderText: "Loading tweets...",
				slideIn: true,
				slideDuration: 750,
				showHeading: false,
				headingText: "",
				showProfileLink: true,
				showTimestamp: true,
				includeRetweets: false,
				excludeReplies: true
			});
		});
	</script>
	  
	<!--- IE Fix for HTML5 Tags --->
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	
	<!--- ContentBoxEvent --->
	#cb.event("cbui_beforeHeadEnd")#
</head>
<body>
	<!--- ContentBoxEvent --->
	#cb.event("cbui_afterBodyStart")#

  <!-- Nav Bar -->
	<header class="row">
		<div class="twelve columns">#cb.quickView("topbar")#</div>
	</header>
  <!-- End Nav -->
  <!-- Content Slider -->
	<div class="row">
		<div class="twelve columns">
			#cb.widget("OrbitSlider")#
		</div>
	</div>
	<div class="row hide-for-small"><div class="twelve columns">&nbsp;</div></div>
  <!-- End Content Slider -->
	<div class="row">
		<div class="twelve columns">
			<div class="row">

				<!-- Shows -->
				<div class="four columns">
					<div class="row show-for-small"><div class="twelve columns">&nbsp;</div></div>
					<h4>Upcoming Shows</h4><hr/>
					<div class="row">
						<div class="one column">
							<img src="http://placehold.it/50x50&text=[img]" />
						</div>
						<div class="nine columns">
							<h5><a href="##">Venue Name</a></h5>
							<h6 class="subheader">Doors at 00:00pm</h6>
						</div>
					</div>
				</div>
				<!-- End Shows -->
				
				<!-- Blog -->
				<div class="four columns">
					<div class="row show-for-small"><div class="twelve columns">&nbsp;</div></div>
					<h4>Blog</h4><hr/>
					#cb.widget("RecentEntries")#
				</div>
				<!-- End Blog -->
							
				<!-- Twitter -->
				<div class="four columns" id="tweet">
					<div class="row show-for-small"><div class="twelve columns">&nbsp;</div></div>
					<h4>Tweets</h4><hr/>
				</div>
				<!-- End Twitter -->
			
			</div>
		</div>
	</div>

    <!-- End Content -->


    <!-- Footer -->

	<footer class="row">
		<div class="twelve columns"><hr />
			<div class="row">
			
				<div class="six columns">
					<p>&copy; Copyright no one at all. Go to town.</p>
				</div>
				
				<div class="six columns">
					<ul class="link-list right">
						<li><a href="##">Link 1</a></li>
						<li><a href="##">Link 2</a></li>
						<li><a href="##">Link 3</a></li>
						<li><a href="##">Link 4</a></li>
					</ul>
				</div>
			
			</div>
		</div>
	</footer>

    <!-- End Footer -->
  <script src="#cb.layoutRoot()#/widgets/jQueryTwitter/jquery.twitter.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.mediaQueryToggle.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.forms.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.reveal.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.navigation.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.buttons.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.tabs.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.tooltips.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.accordion.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.placeholder.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.alerts.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.topbar.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.joyride.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.clearing.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.magellan.js"></script>
  
  <script src="#cb.layoutRoot()#/includes/js/app.js"></script>
</body>
</html>
</cfoutput>
