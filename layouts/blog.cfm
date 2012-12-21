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
			<div class="twelve columns">
				<h1>Blog <small>This is my blog. It's awesome.</small>
				<hr />
			</div>
		</div>
		<div class="row">
			<div class="nine columns" role="content"><!--- Main Blog Content --->
				#cb.quickEntries()#
			</div>
			<aside class="three columns"><!--- Sidebar --->
			  <h5>Categories</h5>
			  <ul class="side-nav">
			    <li><a href="##">News</a></li>
			    <li><a href="##">Code</a></li>
			    <li><a href="##">Design</a></li>
			    <li><a href="##">Fun</a></li>
			    <li><a href="##">Weasels</a></li>
			  </ul>
			  <div class="panel">
			    <h5>Featured</h5>
			    <p>Pork drumstick turkey fugiat. Tri-tip elit turducken pork chop in. Swine short ribs meatball irure bacon nulla pork belly cupidatat meatloaf cow.</p>
			    <a href="##">Read More &rarr;</a>
			  </div>
			</aside>
		</div>
		#cb.quickView("_footer")#<!--- Footer --->
	</body>
</html>
	</cfoutput>
</cfprocessingdirective>