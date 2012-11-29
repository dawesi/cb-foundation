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
  
  <div class="row">
    <div class="three columns">
      <h1><img src="http://placehold.it/400x100&text=Logo" /></h1>
    </div>
    <div class="nine columns">
      <ul class="link-list right">
        <li><a href="##">Section 1</a></li>
        <li><a href="##">Section 2</a></li>
        <li><a href="##">Section 3</a></li>
        <li><a href="##">Section 4</a></li>
      </ul>
    </div>
  </div>
 
  
  
  <div class="row">    
    
    <!-- Main Content Section -->
    <!-- This has been source ordered to come first in the markup (and on small devices) but to be to the right of the nav on larger screens -->
    <div class="nine columns push-three">
      
      <h3>Page Title <small>Page subtitle</small></h3>
      
      <p>Bacon ipsum dolor sit amet salami ham hock biltong ball tip drumstick sirloin pancetta meatball short loin. Venison tail chuck pork chop, andouille ball tip beef ribs flank boudin bacon. Salami andouille pork belly short ribs flank cow. Salami sirloin turkey kielbasa. Sausage venison pork loin leberkas chuck short loin, cow ham prosciutto pastrami jowl. Ham hock jerky tri-tip, fatback hamburger shoulder swine pancetta ground round. Tri-tip prosciutto meatball turkey, brisket spare ribs shankle chuck cow chicken ham hock boudin meatloaf jowl.</p>

      <p>Ground round pastrami pork loin tenderloin jerky. Jerky spare ribs biltong, ham hock ham capicola pork. Jerky turducken pork, meatloaf sausage capicola swine corned beef turkey short loin. Tongue prosciutto pork loin, ground round spare ribs venison kielbasa strip steak.</p>

      <p>Hamburger bresaola turkey t-bone, leberkas salami pork chop ham hock beef ribs. Rump biltong meatball venison, short ribs pork loin shank shankle corned beef beef. Cow salami jowl short loin hamburger fatback. Short ribs pork belly shoulder pastrami drumstick salami corned beef ham hock bresaola. Swine filet mignon cow sausage ball tip. Cow ribeye ground round, sausage pork loin pig beef ball tip turkey boudin.</p>

      <p>Prosciutto ball tip filet mignon andouille frankfurter chicken rump sausage meatball. Filet mignon meatloaf ground round andouille ham hock pork. Bresaola short loin meatball chuck hamburger pig. Turkey venison chuck, tongue fatback tail swine jerky corned beef shank kielbasa prosciutto ribeye ham tri-tip. Rump bacon pork belly meatloaf shoulder short loin meatball kielbasa pork loin tongue bresaola brisket corned beef jowl prosciutto. Beef ribs shankle short ribs pork belly corned beef fatback pork chop tongue biltong boudin strip steak sirloin meatloaf pancetta.</p>
            
    </div>
    
    
    <!-- Nav Sidebar -->
    <!-- This is source ordered to be pulled to the left on larger screens -->
    <div class="three columns pull-nine">
        
      <ul class="side-nav">
        <li><a href="##">Section 1</a></li>
        <li><a href="##">Section 2</a></li>
        <li><a href="##">Section 3</a></li>
        <li><a href="##">Section 4</a></li>
        <li><a href="##">Section 5</a></li>
        <li><a href="##">Section 6</a></li>
      </ul>
      
      <p><img src="http://placehold.it/320x240&text=Ad" /></p>
        
    </div>
    
  </div>
    
  
  <!-- Footer -->
  
  <footer class="row">
    <div class="twelve columns">
      <hr />
      <div class="row">
        <div class="six columns">
          <p>&copy; Copyright no one at all. Go to town.</p>
        </div>
        <div class="six columns">
          <ul class="link-list right">
            <li><a href="##">Section 1</a></li>
            <li><a href="##">Section 2</a></li>
            <li><a href="##">Section 3</a></li>
            <li><a href="##">Section 4</a></li>
          </ul>
        </div>
      </div>
    </div> 
  </footer>
  


  
  <script src="#cb.layoutRoot()#/includes/lib/jQuery/js/jquery.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.mediaQueryToggle.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.forms.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.reveal.js"></script>
  <script src="#cb.layoutRoot()#/includes/lib/foundation/js/jquery.foundation.orbit.js"></script>
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
  
    <script>
    $(window).load(function(){
      //$("##featured").orbit();
	  $('##featured').orbit({ fluid: '2x1' });
    });
    </script> 
  
</body>
</html>
</cfoutput>