/**
* A responsive slider for images & other cool stuff
*/
component extends="contentbox.model.ui.BaseWidget"{
	
	function init(controller){
		// super init
		super.init(controller);
		
		// Widget Properties
		setPluginName("jQueryTwitter");
		setPluginVersion("1.0");
		setPluginDescription("A responsive widget that displays N last tweets from your account");
		setPluginAuthor("Donaldo DE SOUSA");
		setPluginAuthorURL("http://");
		
		return this;
	}
	
	/**
	* Render the widget out
	*/
	void function renderIt(
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
		cb.getWidget("AssetManager").addFileToHead("#cb.layoutRoot()#/widgets/jQueryTwitter/jquery.twitter.js");
		
		local.targetID = arguments.targetID;
		structDelete(arguments,"targetID");
		//writeDump(SerializeJSON(arguments));abort;
		html.addJSContent("
			$(document).ready(function() {
				$('###local.targetID#').getTwitter(#SerializeJSON(arguments)#);
			});
		",true);
	}
	
}