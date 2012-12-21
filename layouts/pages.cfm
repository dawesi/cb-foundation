<cfprocessingdirective pageEncoding = "utf-8" suppressWhiteSpace = "yes">
	<cfoutput>
<!DOCTYPE html>
<!--[if lt IE 9]><html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8 |!(IE)]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
	<head>
		#cb.quickView("_htmlHead")#
	</head>
	<body>
		#cb.event("cbui_afterBodyStart")#<!--- ContentBoxEvent --->
		<header class="row"><!--- Nav Bar --->
			<div class="twelve columns">#cb.quickView("_topbar")#</div>
		</header>
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
			<div class="nine columns push-three"><!--- This has been source ordered to come first in the markup (and on small devices) but to be to the right of the nav on larger screens --->
			  #cb.getCurrentPage().renderContent()#
			</div>
			<div class="three columns pull-nine"><!--- Nav Sidebar This is source ordered to be pulled to the left on larger screens --->
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
		#cb.quickView("_footer")#<!--- Footer --->
	</body>
</html>
	</cfoutput>
</cfprocessingdirective>
