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
				#cb.mainView()#
			</div>
			<aside class="three columns"><!--- Sidebar --->
			  <div class="panel">
			    <h5>Categories</h5>
			  	#cb.widget(name="Categories")#
			  </div>
			</aside>
		</div>
		#cb.quickView("_footer")#<!--- Footer --->
	</body>
</html>
	</cfoutput>
</cfprocessingdirective>