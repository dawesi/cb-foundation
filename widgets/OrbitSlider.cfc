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
		savecontent variable="includes" {
			writeOutput('
			<link rel="stylesheet" type="text/css"	href="#cb.layoutRoot()#/widgets/OrbitSlider/style.css">
			<style type="text/css">
				##featured { display: none; }
				##featured.orbit { display: block; }
			</style>
			<script type="text/javascript" src="#cb.layoutRoot()#/widgets/OrbitSlider/jquery.foundation.orbit.js"></script> 
			<script type="text/javascript" defer="defer"> 
				$(window).load(function(){
				  
				  $("##featured").orbit(#SerializeJSON(arguments)#);
			    });
			</script>
			');
		};
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
						<img src="http://placehold.it/1200x500&text=OrbitSlider place holder" alt="OrbitSlider place holder" style="opacity:0;">
				        <div class="content" style="text-align:center;">
				          <h2><br><br>Please create your customHTML content</h2>
				          <h4>Go to cbAdmin > content > Custom HTML, create a new content</br> named orbitSlider and intialise it with by adding some HTML</br> images tags to see the orbitSlider</h4>
				        </div>
				        <div class="content" style="text-align:center;">
							<h2><br><br>Your content may look like this : </h2>
							<code>
							&lt;img src="http://placehold.it/1200x500&text=Slide Image 1" alt="slide image 1"&gt;<br>
					        &lt;img src="http://placehold.it/1200x500&text=Slide Image 2" alt="slide image 2"&gt;<br>
					        </code>
					        <p>To render the following images slides</p>
					        <i>Please see <a href="http://www.zurb.com/playground/orbit-jquery-image-slider" target="_blank">OrbitSlider documentation</a> for further details</i>
				       </div>
						<img src="http://placehold.it/1200x500&text=Slide Image 1" alt="slide image 1" style="opacity:0;">
						<img src="http://placehold.it/1200x500&text=Slide Image 2" alt="slide image 2" style="opacity:0;">
				       <div class="content" style="margin:0 50px;">
							<h2><br><br>Your content can also look like this :</h2>
							<code>
							&lt;div class="content"&gt;<br>
							&nbsp;&nbsp;&lt;h1&gt; Some cool title &lt;/h1&gt;<br>
				          	&nbsp;&nbsp;&lt;h3&gt; Some text to display on this pretty slide&lt;/h3&gt;<br>
					        &lt;/div&gt;<br>
							&lt;div class="content"&gt;<br>
							&nbsp;&nbsp;&lt;h1&gt; Another cool title &lt;/h1&gt;<br>
				          	&nbsp;&nbsp;&lt;h3&gt; Another text to display on this pretty slide&lt;/h3&gt;<br>
					        &lt;/div&gt;
					        </code>
				       </div>
					</div>
				');
			}
		}
		return includes&orbitSlider;
	}
	
}