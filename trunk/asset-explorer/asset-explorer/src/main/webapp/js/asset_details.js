function configClick(a) {
	$("#subTab_config").html("<div>���������Ϣ</div>");
	$("#subTab_history").html("<a title='��ʷ' href='javascript:historyClick();'>��ʷ</a>");
	$("#subTab_config").attr("class", "subtabon");
	$("#subTab_history").attr("class", "subtaboff");
	$("tr#ciDetails_history").hide();
	$("tr#ciDetails_configInfo").show();
}

function historyClick(a) {
	$("#subTab_history").html("<div>��ʷ</div>");
	$("#subTab_config").html("<a title='���������Ϣ' href='javascript:configClick();'>���������Ϣ</a>");
	$("#subTab_history").attr("class", "subtabon");
	$("#subTab_config").attr("class", "subtaboff");
	$("tr#ciDetails_configInfo").hide();
	$("tr#ciDetails_history").show();
}