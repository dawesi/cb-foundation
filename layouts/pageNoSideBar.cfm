<cfprocessingdirective pageEncoding = "utf-8" suppressWhiteSpace = "yes">
	<cfoutput>
<!DOCTYPE html>
<!--[if lt IE 9]><html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8 |!(IE)]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
	<head>
		#cb.quickView("_htmlHead")#
	</head>
	<body>
		#cb.event("cbui_afterBodyStart")#
		<header class="row">
			<!--- Nav Bar --->
			<div class="twelve columns">#cb.quickView("_topbar")#</div>
		</header>
		<div class="row"><div class="twelve columns">&nbsp;</div></div>
		<cfif cb.isMobile() eq false>
		<div class="row">
			<!--- Content Slider --->
			<div class="twelve columns">
				#cb.widget("OrbitSlider")#
			</div>
		</div>
		</cfif>
		<div class="row">
			<div class="twelve columns">
				<div class="row show-for-small"><div class="twelve columns">&nbsp;</div></div>
				<div class="row">
					<!--- Blog --->
					<div class="four columns">
						<div class="row show-for-small"><div class="twelve columns">&nbsp;</div></div>
						<h4>Blog</h4><hr/>
						#cb.widget("RecentEntries")#
					</div>
					<!--- Twitter --->
					<div class="four columns" id="tweet">
						<div class="row show-for-small"><div class="twelve columns">&nbsp;</div></div>
						<h4>Tweets</h4><hr/>
						#cb.widget("jQueryTwitter",{"userName"="gocontentbox"})#
					</div>
					<!--- Events --->
					<div class="four columns" >
						<script type="text/javascript" src="#cb.layoutRoot()#/widgets/gCalFLow/jquery.gCal_flow.js"></script>
						<h4>Upcoming events</h4><hr/>
						<div id="gcf-custom-template">		
							<div class="gcf-item-container-block">
								<ul class="pricing-table gcf-item-block">
								  <li class="title gcf-item-title">Title</li>
								  <li class="price gcf-item-update-date">Date</li>
								  <li class="description gcf-item-description">Description</li>
								  <li class="cta-button"><a class="button gcf-item-link">Show details</a></li>
								</ul>
							</div>
						</div>
						<a class="right" href="http://www.google.com/calendar/embed?src=contact@cfbeer.com">All events »</a>
					</div>
					<script type="text/javascript">
						$(document).ready(function() {
					    	$('##gcf-custom-template').gCalFlow({
								calid: 'contact@cfbeer.com',
					          	maxitem: 2,
					          	mode: 'upcoming',
								date_formatter: function(d, allday_p) { return (d.getMonth()+1) + "/" + d.getDate() + "/" + d.getYear().toString().substr(-2) }
							});
						});
					</script>					
				</div>
			</div>
		</div>
		<!--- Footer --->	
		#cb.quickView("_footer")#	
	</body>
</html>
	</cfoutput>
</cfprocessingdirective>