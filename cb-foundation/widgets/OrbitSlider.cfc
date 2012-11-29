/**
* A responsive slider for images & other cool stuff
*/
component extends="contentbox.model.ui.BaseWidget"{
	
	function init(controller){
		// super init
		super.init(controller);
		
		// Widget Properties
		setPluginName("orbitslider");
		setPluginVersion("1.0");
		setPluginDescription("A responsive slider for images & other cool stuff");
		setPluginAuthor("Donaldo DE SOUSA");
		setPluginAuthorURL("http://");
		
		return this;
	}
	
	/**
	* Render the widget out
	*/
	any function renderIt(
		string CustomHTMLContentName		="orbitSlider", // name of the customHTMLContent to output
		string animation					= "horizontal-push",		// fade, horizontal-slide, vertical-slide, horizontal-push
		numeric animationSpeed				= 800,			// how fast animtions are
		boolean timer						= true,			// true or false to have the timer
		boolean resetTimerOnClick			= false,		// true resets the timer instead of pausing slideshow progress
		numeric advanceSpeed				= 4000,			// if timer is enabled, time between transitions
		boolean pauseOnHover				= false,		// if you hover pauses the slider
		boolean startClockOnMouseOut		= false,		// if clock should start on MouseOut
		numeric startClockOnMouseOutAfter 	= 1000,			// how long after MouseOut should the timer start again
		boolean directionalNav				= true,			// manual advancing directional navs
		boolean captions					= false,		// do you want captions?
		string captionAnimation				= "fade",		// fade, slideOpen, none
		numeric captionAnimationSpeed		= 800,			// if so how quickly should they animate in
		boolean bullets						= false,		// true or false to activate the bullet navigation
		boolean bulletThumbs				= false,		// thumbnails for the bullets
		string bulletThumbLocation			= "",			// location from this file where thumbs will be
		string fluid						= ""	 		// set a aspect ratio for content slides (ex: '4x3')
	){
		var sOrbitParams = "";
		for (keyName in arguments){
			if (!isBoolean(arguments[keyName])){
				var value = """"&arguments[keyName]&"""";
			} else {
				var value = arguments[keyName];
			}
			sOrbitParams&=lcase(keyName)&":"& value&",";		
		}
		sOrbitParams=left(sOrbitParams,len(sOrbitParams)-1);
		$htmlhead('
			<link rel="stylesheet" href="'&cb.layoutRoot()&'/widgets/OrbitSlider/style.css">
			<script src="'&cb.layoutRoot()&'/widgets/OrbitSlider/jquery.foundation.orbit.js"></script>
			<script>
			//Fix the added <p> that wraps content & imgs tags (ckeditor issue)
			jQuery(document).ready(function($){
				$("##featured p img").each(function() {
					$(this).unwrap();
				});	
				$("##featured p .content").each(function() {
					$(this).unwrap();
				});	
			});
			$(window).load(function(){
			  $("##featured").orbit({ 
			  	#sOrbitParams#
  				});
		    });
			</script>
		');
		savecontent variable="orbitSlider" {
			writeOutput('
			<div id="featured">
				'&CB.customHTML(arguments.CustomHTMLContentName)&'
			</div>
			');
		}
		return orbitSlider;
	}
	
}