/**
 * Common JS used by form-builder template file.
 * 
 */

/**
 * Sets the size of the iframe (viewport) dynamically
 *
 */
function sizeFormBuilderViewport() {
	var viewport = parent.document.getElementById('FormBuilderViewport');
	if(typeof viewport !== 'undefined' && viewport) {
		viewport.style.height = (document['body'].offsetHeight + 50) + 'px';
		$(viewport).attr('scrolling', 'no'); 
	}
}

$(document).ready(function() {

	$(".Inputfields > .Inputfield > .ui-widget-header").click(function() {
		// resize the viewport when they open/collapse fields
		setTimeout('sizeFormBuilderViewport()', 250); 
	}); 

	$("select.asmSelect").change(function() {
		// resize when items are added to an asmSelect, which adjusts the form height
		setTimeout('sizeFormBuilderViewport()', 50); 
	}); 

	$(window).resize(function() {
		setTimeout('sizeFormBuilderViewport()', 250); 
	}); 

	// size the viewport at the beginning of the request
	sizeFormBuilderViewport();

	// if form submitted, we will scroll to it's place in the page
	if($("#FormBuilderSubmitted").size() > 0) { 
		if(window.parent.jQuery) {
			var $viewport = window.parent.jQuery('#FormBuilderViewport'); 
			if($viewport.size() > 0) {
				var y = $viewport.offset().top; 
			} else {
				var y = window.parent.jQuery('#FormBuilderSubmitted').offset().top; 
			}
			window.parent.jQuery("body").animate( { scrollTop: y }, 'slow');
		} else {
			// scroll just to top if no jQuery to use
			window.parent.window.scrollTo(0,0);
		}
	}

	// setup edit links on the individual fields
	if($("#FormBuilderPreview").size() > 0) {
		var url = $("#FormBuilderPreview").val();
		$(".Inputfield").each(function() {
			var $label = $(this).children("label.ui-widget-header[for]").eq(0);
			var $input = $(this).find('#' + $label.attr('for'));
			var $edit = $("<a title='Edit Field' href='" + url + $input.attr('name') + "'><span class='ui-icon ui-icon-pencil'></span></a>").click(function(e) {
				e.stopPropagation();
				window.top.location.href = $edit.attr('href');
			});
			$label.append($edit);
		});
	}
	

}); 
