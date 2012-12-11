<cfoutput>
<div class="fixed contain-to-grid">
	<nav class="top-bar">
		<ul>
			<li class="name"><h1><a href="#cb.linkHome()#">&lt;#cb.siteName()#&gt;</a></h1></li>
			<li class="toggle-topbar">MENU<a href="##"></a></li>
		</ul>
		<section>
			<ul class="right">
				#cb.rootMenu(type="li")#
				<li class="search">
				   <form id="searchForm" name="searchForm" method="post" action="#cb.linkContentSearch()#">
				    <input name="q" type="search" maxlength="50" value="Search..." onclick="this.value=''">
				</li>
				<li class="has-button">
				  <a class="search small button round" href="javascript:$('searchForm').submit()">Go</a>
				</form>
				</li>
			</ul>
		</section>
	</nav>
</div>
</cfoutput>