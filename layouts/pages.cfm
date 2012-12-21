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
  <!-- End Nav -->
  
  <div class="row">
    <div class="three columns">
      <h1><img src="http://placehold.it/400x100&text=Logo" /></h1>
    </div>
    <div class="nine columns">
      <ul class="link-list right">
        <li><a href="##">Section 1</a></li>
        <li><a href="##">Section 2</a></li>
        <li><a href="##">Section 3</a></li>
        <li><a href="##">Section 4</a></li>
      </ul>
    </div>
  </div>
 
  
  
  <div class="row">    
    
    <!-- Main Content Section -->
    <!-- This has been source ordered to come first in the markup (and on small devices) but to be to the right of the nav on larger screens -->
    <div class="nine columns push-three">
      #cb.getCurrentPage().renderContent()#
    </div>
    
    
    <!-- Nav Sidebar -->
    <!-- This is source ordered to be pulled to the left on larger screens -->
    <div class="three columns pull-nine">
        
      <ul class="side-nav">
        <li><a href="##">Section 1</a></li>
        <li><a href="##">Section 2</a></li>
        <li><a href="##">Section 3</a></li>
        <li><a href="##">Section 4</a></li>
        <li><a href="##">Section 5</a></li>
        <li><a href="##">Section 6</a></li>
      </ul>
      
      <p><img src="http://placehold.it/320x240&text=Ad" /></p>
        
    </div>
    
  </div>
    
  
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
            <li><a href="##">Section 1</a></li>
            <li><a href="##">Section 2</a></li>
            <li><a href="##">Section 3</a></li>
            <li><a href="##">Section 4</a></li>
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
  
</body>
</html>
</cfoutput>
