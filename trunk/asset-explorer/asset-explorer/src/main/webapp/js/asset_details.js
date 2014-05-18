function configClick(a) {
	$("#subTab_config").html("<div>配置项的信息</div>");
	$("#subTab_history").html("<a title='历史' href='javascript:historyClick();'>历史</a>");
	$("#subTab_config").attr("class", "subtabon");
	$("#subTab_history").attr("class", "subtaboff");
	$("tr#ciDetails_history").hide();
	$("tr#ciDetails_configInfo").show();
}

function historyClick(a) {
	$("#subTab_history").html("<div>历史</div>");
	$("#subTab_config").html("<a title='配置项的信息' href='javascript:configClick();'>配置项的信息</a>");
	$("#subTab_history").attr("class", "subtabon");
	$("#subTab_config").attr("class", "subtaboff");
	$("tr#ciDetails_configInfo").hide();
	$("tr#ciDetails_history").show();
}