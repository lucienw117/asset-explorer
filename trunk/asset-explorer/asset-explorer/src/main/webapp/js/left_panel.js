function hideAllSubLinks() {
	$("div#netDeviceSubLinks").hide();
	$("div#middlewareSubLinks").hide();
	$("div#databaseSubLinks").hide();
}

function showNetDeviceSubLinks() {
	hideAllSubLinks();
	$("div#netDeviceSubLinks").show();
}

function showMiddlewareSubLinks() {
	hideAllSubLinks();
	$("div#middlewareSubLinks").show();
}

function showDatabaseSubLinks() {
	hideAllSubLinks();
	$("div#databaseSubLinks").show();
}