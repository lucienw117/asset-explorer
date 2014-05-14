$(document).ready(function() {
   $( "a#actions_btn" ).mouseover(function() {
        $("ul#action_menu").slideDown("fast");
   });
   
   var timer;
   $("a#actions_btn, ul#action_menu").mouseleave(function() {
	    timer = setTimeout(function(){$("ul#action_menu").slideUp("fast");}, 10);
	}).mouseenter(function() {
	    clearTimeout(timer);
	});
});