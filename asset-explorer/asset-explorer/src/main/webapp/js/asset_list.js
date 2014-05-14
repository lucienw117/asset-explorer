function show_instore_dialog() {
	$("div#_DIALOG_LAYER_2").hide();
	$("div#_DIALOG_LAYER_1").show();
}

function show_inuse_dialog() {
	$("div#_DIALOG_LAYER_1").hide();
	$("div#_DIALOG_LAYER_2").show();
}

function changeStatus(status) {
	if(status.options[status.selectedIndex].text == "In Store") {
		show_instore_dialog();
		status.options[1].selected = true;
	} else if (status.options[status.selectedIndex].text == "In Use") {
		show_inuse_dialog();
		status.options[0].selected = true;
	}
}

function closeDialog() {
	$("div#_DIALOG_LAYER_1").hide();
	$("div#_DIALOG_LAYER_2").hide();
}

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
   
   $("a#changeStatus").click(show_instore_dialog);
});