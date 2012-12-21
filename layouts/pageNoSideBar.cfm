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
		<div class="row"><div class="twelve columns">&nbsp;</div></div>
		<cfif cb.isMobile() eq false>
		<div class="row"><!--- Content Slider --->
			<div class="twelve columns">
				#cb.widget("OrbitSlider")#
			</div>
		</div>
		</cfif>
		<div class="row">
			<div class="twelve columns">
				<div class="row">
					<div class="four columns"><!--- Shows --->
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
					<div class="four columns"><!--- Blog --->
						<div class="row show-for-small"><div class="twelve columns">&nbsp;</div></div>
						<h4>Blog</h4><hr/>
						#cb.widget("RecentEntries")#
					</div>
					<div class="four columns" id="tweet"><!--- Twitter --->
						<div class="row show-for-small"><div class="twelve columns">&nbsp;</div></div>
						<h4>Tweets</h4><hr/>
					</div>
					#cb.widget("jQueryTwitter",{"userName"="gocontentbox"})#
				</div>
			</div>
		</div>
		#cb.quickView("_footer")#<!--- Footer --->		
	</body>
</html>
	</cfoutput>
</cfprocessingdirective>