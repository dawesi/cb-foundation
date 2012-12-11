/**
* A responsive slider for images & other cool stuff
*/
component extends="contentbox.model.ui.BaseWidget"{
	
	function init(controller){
		// super init
		super.init(controller);
		
		// Widget Properties
		setPluginName("OrbitSlider");
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
		// TODO : Use JSON encoding instead
		for (keyName in arguments){
			if (!isBoolean(arguments[keyName])){
				var value = """"&arguments[keyName]&"""";
			} else {
				var value = arguments[keyName];
			}
			sOrbitParams&=lcase(keyName)&":"& value&",";		
		}
		sOrbitParams=left(sOrbitParams,len(sOrbitParams)-1);
		cb.getWidget("AssetManager").addToHead("#cb.layoutRoot()#/widgets/OrbitSlider/jquery.foundation.orbit.js,#cb.layoutRoot()#/widgets/OrbitSlider/style.css");
		html.addJSContent("
			$(window).load(function(){
			  $('##featured').orbit({ 
			  	#sOrbitParams#
  				});
		    });
		",true);
		try {
			savecontent variable="orbitSlider" {
				writeOutput('
					<div id="featured">
						'&CB.customHTML(arguments.CustomHTMLContentName)&'
					</div>
				');
			}
		} catch (ContentBox.CBHelper.InvalidCustomHTMLSlug e){
			savecontent variable="orbitSlider" {
				writeOutput('
					<div id="featured">
						<div class="content" style="text-align:center;">
						  <h1> OrbitSlider place holder</h1>
				          <h3>The customHTML named orbitSlider is missing ...</h3>
				        </div>
				        <div class="content" style="text-align:center;">
				          <h2>Please create your customHTML content</h2>
				          <h4>Go to cbAdmin > content > Custom HTML, create a new content</br> named orbitSlider and intialise it with by adding some HTML</br> images tags to see the orbitSlider</h4>
				        </div>
				        <div class="content" style="text-align:center;">
							<h3>Your content may look like this : </h3>
							<h5>&lt;img src="http://placehold.it/1200x500&text=Slide Image 1" alt="slide image 1"&gt;<br>
					        &lt;img src="http://placehold.it/1200x500&text=Slide Image 2" alt="slide image 2"&gt;<br></h5> 
				       </div>
				       <div class="content" style="text-align:center;">
							<h3>To render the following images slides</h3>
							<i>Please see <a href="http://www.zurb.com/playground/orbit-jquery-image-slider" target="_blank">OrbitSlider documentation</a> for further details</i>
						</div>
						<img src="http://placehold.it/1200x500&text=Slide Image 1" alt="slide image 1" style="opacity:0;">
						<img src="http://placehold.it/1200x500&text=Slide Image 2" alt="slide image 2" style="opacity:0;">
				       <div class="content" style="margin:0 50px;">
							<h3>Your content can also look like this :</h3>
							<h5>
							&lt;div class="content"&gt;<br>
							&nbsp;&nbsp;&lt;h1&gt; Some cool title &lt;/h1&gt;<br>
				          	&nbsp;&nbsp;&lt;h3&gt; Some text to display on this pretty slide&lt;/h3&gt;<br>
					        &lt;/div&gt;<br>
							&lt;div class="content"&gt;<br>
							&nbsp;&nbsp;&lt;h1&gt; Another cool title &lt;/h1&gt;<br>
				          	&nbsp;&nbsp;&lt;h3&gt; Another text to display on this pretty slide&lt;/h3&gt;<br>
					        &lt;/div&gt;
					        </h5>
				       </div>
				       <div class="content" style="text-align:center;">
							<h3>To render something like the current slide</h3>
							<i>Please see <a href="http://www.zurb.com/playground/orbit-jquery-image-slider" target="_blank">OrbitSlider documentation</a> for further details</i>
						</div>
					</div>
				');
			}
		}
		return orbitSlider;
	}
	
}