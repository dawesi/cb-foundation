/**
* A cool basic widget that shows N recent entries
*/
component extends="contentbox.model.ui.BaseWidget" singleton{

	Paging function init(controller){
		// super init
		super.init(controller);

		// Widget Properties
		setPluginName("Paging");
		setPluginVersion("1.0");
		setPluginDescription("A paging widget.");
		setPluginAuthor("Donaldo DE SOUSA");
		setPluginAuthorURL("www.cfdonaldo.com");

		return this;
	}

	any function renderIt(){
		var event 			= getRequestContext();
		var cbSettings 		= event.getValue(name="cbSettings",private=true);
		
		var pagingTabs 		= "";
		var maxRows 		= cbSettings.cb_paging_maxentries;
		var bandGap 		= cbSettings.cb_paging_bandgap;		
		var theLink 		= event.getValue(name="pagingLink",private=true);
		var FoundRows		= event.getValue(name="entriesCount",private=true);
		var totalPages 		= Ceiling( FoundRows / maxRows );
		
		// -- Paging vars --
		var currentPage 	= event.getValue("page",1);
		var pageFrom 		= 1;
		var sPageFrom		= "";
		var pageTo 			= currentPage+bandgap;
		var sPageTo			= "";
		var pageIndex 		= 0;
		var sPreviousPage	= '<li class="arrow unavailable"><a href="">&laquo;</a></li>';
		var sNextPage		= '<li class="arrow unavailable"><a href="">&raquo;</a></li>';

		// -- Override --
		if (structKeyExists(arguments, "pagingMaxRows"))
			maxRows = arguments.pagingMaxRows;
		if (structKeyExists(arguments, "link"))
			theLink = arguments.link;
		if (structKeyExists(arguments, "foundRows"))
			FoundRows = arguments.foundRows;
			
		// -- Only page if needed --
		if (FoundRows != 0 && totalPages!= 0){
			if (currentPage-1 > 0)
				sPreviousPage = '<li class="arrow"><a href="#replace(theLink,"@page@",currentPage-1)#" title="Previous Page">&laquo;</a></li>';
			if ((currentPage-bandGap) > 1){
				pageFrom=currentPage-bandgap;
				sPageFrom='<a href="#replace(theLink,"@page@",1)#">1</a>...';
			}
			//if ((currentPage+bandgap) > totalPages){
				pageTo=totalPages;
				for (var i=pageFrom; i<=pageTo; i++){
					var sSelected = "";
					var sLink = replace(theLink,"@page@",i);
					if (currentPage==i){
						sSelected = 'class="current"';
						sLink = "";
					} 
					sPageTo&='<li #sSelected#><a href="#sLink#">#i#</a></li>';
				}
			//}
			if (currentPage < totalPages)
				sNextPage = '<li class="arrow"><a href="#replace(theLink,"@page@",currentPage+1)#" title="Next Page">&raquo;</a></li>';

		
			
			savecontent variable="pagingtabs" {WriteOutput('
				<ul class="pagination">
					#sPreviousPage#
					#sPageFrom#
					#sPageTo#
						
						<!--- End Token 
						<cfif (currentPage+bandgap) lt totalPages>
							...
							<a href="#replace(theLink,"@page@",totalPages)#">#totalPages#</a>
						</cfif>--->
						
					#sNextPage#
				</ul>				
			');}
		}

		return pagingTabs;
	}

}
