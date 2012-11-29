<cftry>
	<cfsavecontent variable="orbitSlider" >
		<div id="featured">
			<cfoutput>#CB.customHTML("orbitSlider")#</cfoutput>
		</div>
	</cfsavecontent>
	<cfoutput> #orbitSlider# </cfoutput>
	<cfcatch type="ContentBox.CBHelper.InvalidCustomHTMLSlug">
		!!! The customHTML named orbitSlider is missing !!!<br>
		Please create one in cbAdmin > content > Custom HTML and intialise it with by adding some HTML images tags to see the orbitSlider<br>
		eg : <br>
		&lt;img src="http://placehold.it/1200x500&text=Slide Image" alt="slide image"&gt;<br>
        &lt;img src="http://placehold.it/1200x500&text=Slide Image" alt="slide image"&gt;<br>
	</cfcatch>
</cftry>
