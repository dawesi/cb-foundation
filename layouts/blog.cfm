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

	  <div class="row">
	    <div class="twelve columns">
	      <h1>Blog <small>This is my blog. It's awesome.</small>
	      <hr />
	    </div>
	  </div>

  <!-- End Nav -->


  <!-- Main Page Content and Sidebar -->
  <div class="row">
    <!-- Main Blog Content -->
    <div class="nine columns" role="content">
		#cb.quickEntries()#
    </div>
    <!-- End Main Content -->

    <!-- Sidebar -->

    <aside class="three columns">

      <h5>Categories</h5>
      <ul class="side-nav">
        <li><a href="##">News</a></li>
        <li><a href="##">Code</a></li>
        <li><a href="##">Design</a></li>
        <li><a href="##">Fun</a></li>
        <li><a href="##">Weasels</a></li>
      </ul>

      <div class="panel">
        <h5>Featured</h5>
        <p>Pork drumstick turkey fugiat. Tri-tip elit turducken pork chop in. Swine short ribs meatball irure bacon nulla pork belly cupidatat meatloaf cow.</p>
        <a href="##">Read More &rarr;</a>
      </div>

    </aside>

    <!-- End Sidebar -->
  </div>

  <!-- End Main Content and Sidebar -->


  <!-- Footer -->

  <footer class="row">
    <div class="twelve columns">
      <hr />
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