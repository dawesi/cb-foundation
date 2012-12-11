<cfoutput>
<!--- post --->
	  <article>
        <h3><a href="#cb.linkEntry(entry)#" rel="bookmark" title="#entry.getTitle()#">#entry.getTitle()#</a></h3>
        <h6> &nbsp;By <a href="##"> #entry.getAuthorName()#</a><div style="position: relative;float:left;">#cb.quickAvatar(author=entry.getAuthorEmail(),size=30)#</div>
		<i class="subheader">on #dateFormat(entry.getPublishedDate(),"MMMM")# #dateFormat(entry.getPublishedDate(),"dd")#, #dateFormat(entry.getDisplayPublishedDate(),"yyyy")#.</i>
		</h6>
		<div class="row">
	    	<div class="twelve columns">
        	#entry.renderContent()#
        	</div>
		</div>
		<div class="row">
	    	<div class="twelve columns">
	    		#cb.quickCategoryLinks(entry)#
	    	</div>
		</div>
      </article>
	  <hr />
</cfoutput>