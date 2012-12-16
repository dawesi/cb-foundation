<cfoutput>
<!DOCTYPE html>
<!--[if lt IE 9]><html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8 |!(IE)]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	#cb.quickView("_htmlHead")#
	
</head>
<body>
	<!--- ContentBoxEvent --->
	#cb.event("cbui_afterBodyStart")#

  <!-- Nav Bar -->
	<header class="row">
		<div class="twelve columns">#cb.quickView("_topbar")#</div>
	</header>
  <!-- End Nav -->
  <!-- Content Slider -->
	<div class="row">
		<div class="twelve columns">
			<cfif cb.isMobile() eq false>
			#cb.widget("OrbitSlider")#
			</cfif>
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
					#cb.widget("jQueryTwitter",{"userName"="gocontentbox"})#
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
	#cb.getWidget("AssetManager").addFileToHead("
		#cb.layoutRoot()#/includes/js/jquery.placeholder.js,
		#cb.layoutRoot()#/includes/js/jquery.foundation.accordion.js,
		#cb.layoutRoot()#/includes/js/jquery.foundation.alerts.js,
		#cb.layoutRoot()#/includes/js/jquery.foundation.buttons.js,
		#cb.layoutRoot()#/includes/js/jquery.foundation.clearing.js,
		#cb.layoutRoot()#/includes/js/jquery.foundation.forms.js,
		#cb.layoutRoot()#/includes/js/jquery.foundation.joyride.js,
		#cb.layoutRoot()#/includes/js/jquery.foundation.magellan.js,
		#cb.layoutRoot()#/includes/js/jquery.foundation.mediaQueryToggle.js,
		#cb.layoutRoot()#/includes/js/jquery.foundation.navigation.js,
		#cb.layoutRoot()#/includes/js/jquery.foundation.reveal.js,
		#cb.layoutRoot()#/includes/js/jquery.foundation.tabs.js,
		#cb.layoutRoot()#/includes/js/jquery.foundation.tooltips.js,
		#cb.layoutRoot()#/includes/js/jquery.foundation.topbar.js,
		#cb.layoutRoot()#/includes/js/app.js"
	)#
 	#cb.widget("AssetManager")#
    <!-- End Footer -->
</body>
</html>
</cfoutput>
