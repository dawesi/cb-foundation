/**
* A responsive slider for images & other cool stuff
*/
component extends="contentbox.model.ui.BaseWidget"{
	
	function init(controller){
		// super init
		super.init(controller);
		
		// Widget Properties
		setPluginName("AssetManager");
		setPluginVersion("1.0");
		setPluginDescription("A simple widget that helps you to add JS/CSS assets to your layout");
		setPluginAuthor("Donaldo DE SOUSA");
		setPluginAuthorURL("http://");
		
		return this;
	}
	
	function addToHead(
		required 	string 	asset, //The asset(s) to load, only js or css files. This can also be a comma delimmited list.
					boolean async=false, //HTML5 JavaScript argument: Specifies that the script is executed asynchronously (only for external scripts)
					boolean defer=false //HTML5 JavaScript argument: Specifies that the script is executed when the page has finished parsing (only for external scripts)
	){
		addAsset(argumentCollection=arguments);
	}
	
	
	function addToFoot(
		required 	string 	asset, //The asset(s) to load, only js or css files. This can also be a comma delimmited list.
					boolean async=false, //HTML5 JavaScript argument: Specifies that the script is executed asynchronously (only for external scripts)
					boolean defer=false //HTML5 JavaScript argument: Specifies that the script is executed when the page has finished parsing (only for external scripts)
		){
		arguments.target = "foot";
		addAsset(argumentCollection=arguments);
	}
	
	function renderIt(){
		var event = controller.getRequestService().getContext();
		// TODO : Plug this with JSMin
		$htmlhead(event.getValue("CSSToHead",""));
		$htmlhead(event.getValue("JSToHead",""));
		return event.getValue("JSToFoot","");
	}
	
	// PRIVATE 
	private function addAsset(
		required 	string 	asset, 
					boolean async=false, 
					boolean defer=false, 
					string	target="head" 
	){
		var event = controller.getRequestService().getContext();
		var sbJS = createObject("java","java.lang.StringBuffer").init('');
		var sbCSS = createObject("java","java.lang.StringBuffer").init('');
		var JSTarget = "JSToFoot";
		var x = 1;
		var thisAsset = "";
		var asyncStr = "";
		var deferStr = "";

		// Global location settings
		var jsPath = "";
		var cssPath = "";
		if( settingExists("htmlhelper_js_path") ){ jsPath = getSetting('htmlhelper_js_path'); }
		if( settingExists("htmlhelper_css_path") ){ cssPath = getSetting('htmlhelper_css_path'); }

		// Async HTML5 attribute
		if( arguments.async ){ asyncStr = " async='async'"; }
		// Defer HTML5 attribute
		if( arguments.defer ){ deferStr = " defer='defer'"; }

		// request assets storage
		event.paramValue(name="addedAssets",value=event.getValue(name="addedAssets",defaultValue="",private=true),private=true);

		for(x=1; x lte listLen(arguments.asset); x=x+1){
			thisAsset = trim( listGetAt( arguments.asset, x ) );
			// Is asset already loaded
			if( NOT listFindNoCase(event.getValue(name="addedAssets",private=true),thisAsset) ){
				// Load Asset
				if( listLast(thisAsset,".") eq "js" ){
					sbJS.append('<script src="#jsPath##thisAsset#" type="text/javascript"#asyncStr##deferStr#></script>');
				}
				else{
					sbCSS.append('<link href="#cssPath##thisAsset#" type="text/css" rel="stylesheet" />');
				}

				// Store It as Loaded
				event.setValue(name="addedAssets",value=listAppend(event.getValue(name="addedAssets",private=true),thisAsset),private=true);
			}
		}
		
		if (arguments.target=="head"){		
			JSTarget = "JSToHead";
		} 
		
		if (len(sbJS.toString())) {
			event.setValue(name=JSTarget,value=event.getValue(name=JSTarget,defaultValue="")&sbJS.toString());
		}
			
		if (len(sbCSS.toString())) {
			event.setValue(name="CSSToHead",value=event.getValue(name="CSSToHead",defaultValue="")&sbCSS.toString());
		}
	
	}
}