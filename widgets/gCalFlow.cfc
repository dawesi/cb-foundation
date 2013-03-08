/**
* A responsive widget for Google calendar
*/
component extends="contentbox.model.ui.BaseWidget"{
	
	function init(controller){
		// super init
		super.init(controller);
		
		// Widget Properties
		setPluginName("gCalFlow");
		setPluginVersion("1.0");
		setPluginDescription("A responsive widget for Google calendar");
		setPluginAuthor("Donaldo DE SOUSA");
		setPluginAuthorURL("http://");
		
		return this;
	}
	
	/**
	* Render the widget out
	*/
	any function renderIt(
		string targetID			= "tweet",
		string userName 		= "I_TwitIT",
		numeric numTweets 		= 5,
		string loaderText 		= "Loading tweets...",
		boolean slideIn 		= true,
		numeric slideDuration	= 750,
		boolean showHeading		= false,
		string headingText 		= "",
		boolean showProfileLink	= true,
		boolean showTimestamp	= true,
		boolean includeRetweets	= false,
		boolean excludeReplies	= true
	){
		
		local.targetID = arguments.targetID;
		structDelete(arguments,"targetID");
		
		savecontent variable="includes" {
			writeOutput('
				<script type="text/javascript" src="#cb.layoutRoot()#/widgets/jQueryTwitter/jquery.twitter.js"></script> 
				<script type="text/javascript" defer="defer"> 
					$(document).ready(function() {
						$("###local.targetID#").getTwitter(#SerializeJSON(arguments)#);
					});
				</script>
			');
		};
		
		return includes;		
	}
}