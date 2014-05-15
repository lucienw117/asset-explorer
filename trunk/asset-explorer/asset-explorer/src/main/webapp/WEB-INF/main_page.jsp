<%@ page language="java" contentType="text/html; charset=GB2312"
	pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>ManageEngine AssetExplorer</title>
<link rel="stylesheet" href="style/style.css" type="text/css">
</head>

<body leftmargin="0" topmargin="0" onLoad="loadme();init();loadTip();"
	marginheight="0" marginwidth="0">
	<div id="tipDiv" style="position: absolute; visibility: hidden;"
		class="tooltip-box-pos">
		<div id="tipText"></div>
	</div>

	<div class='hide' id="sdp.inventory.lhsViews.asset">Asset Summary</div>


	<div id="tipDiv"
		style="position: absolute; visibility: hidden; top: 0px; left: 0px; opacity: 0; z-index: 37;">
		<div id="tipText"></div>
	</div>




	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		
			<tr>
				<td valign="top"><iframe name="SDPHeaderFrame"
						src="/framework/html/blank.html" style="display: none;"></iframe>
					<div class="hide" id="sdp.common.search.allresources">All
						Assets</div>
					<div class="hide" id="sdp.header.workstation">Workstation</div>
					<div class="hide" id="ae.cmdb">CMDB</div>
					<div class="hide" id="sdp.header.contracts-key">Contracts</div>
					<div class="hide" id="sdp.header.purchase-key">Purchase</div>
					<div class="hide" id="sdp.header.software-key">Software</div>
					<div class="hide" id="sdp.admin.leftpanel.users">Users</div>
					<div class="hide" id="ae.header.search.allAssets">Search
						Assets</div>
					<div class="hide" id="ae.header.search.wsAndServer">Search
						Workstations/Servers</div>
					<div class="hide" id="ae.header.search.users">Search Users</div>
					<div class="hide" id="ae.header.search.software">Search
						Software</div>
					<div class="hide" id="ae.header.search.purchase">Search
						Purchase Orders</div>
					<div class="hide" id="ae.header.search.contracts">Search
						Contracts</div>
					<div class="hide" id="ae.header.search.allCIs">Search CIs</div>
					<div class="hide" id="sdp.leftpanel.search.title">Search</div>
					<div class="hide" id="sdp.common.header.searchvaluemsg">Please
						enter text to be searched.</div>

					<div id="auMsg" class="hdrevalbg" style="display: none;">
						<span class="fnt11">New version of agent and scan script
							has been released. <a href="javascript:void(0)"
							onclick='showDialog(document.getElementById("agentUpgradeHelp").innerHTML, "closeButton=no, position=center,closeOnBodyClick=yes")'
							style="font-weight: normal;" class="mandatory">Upgrade Now</a>
						</span>&nbsp;&nbsp;[ <a href="javascript:closeAgentUpgradeMsg();"
							style="text-decoration: underline">Close</a> ]
					</div>
					<table width="100%" cellpadding="0" cellspacing="0" border="0" class="topheaderbg">
						<tr>
							<td valign="top">
								<%@ include file="page_header.jsp" %>
								<%@ include file="tools_bar.jsp" %>
								<div id="Scan" style="display: none;">
									<table border="0" cellspacing="0" cellpadding="0" width="180px">
										<tr>
											<td class="linkcontent" colspan="2"><a
												href="SetUpWizard.do.domain.htm"
												title="Click to scan Domain">Windows Domain Scan</a> <a
												href="SetUpWizard.do.network.htm">Network Scan</a> <a
												href="NodeDiscovery.do.htm">Workstation / Device Scan</a> <a
												href="#"
												onClick="javascript:NewWindow('ImportAsset.do.htm', 'Import_Asset', '625', '525','yes','center')">Import
													from CSV</a></td>
											<td class="rt_shadow" width="6px"></td>
										</tr>
										<tr>
											<td class="bt_shadow_lt" width="6px" style="width: 6px;"></td>
											<td class="bt_shadow" height="7px" width="130px"></td>

											<td class="bt_shadow_rt"></td>
										</tr>
									</table>
								</div> <!-- Header ends here -->
								<div id='agentUpgradeHelp' class='hide'>
									<table cellpadding="0" cellspacing="0" border="0" width="550">
										<tr>
											<td class="helptool-shadow-tl">&nbsp;</td>
											<td class="helptool-shadow-tm" height="50"><span
												class='floatRight'><a href="javascript:closeDialog()"
													class="fontBlack" title="close">[X]</a></span> <b>&nbsp;&nbsp;Upgrade
													Agent and scan script</b></td>
											<td class="helptool-shadow-tr">&nbsp;</td>

										</tr>
										<tr>
											<td class="helptool-shadow-lm">&nbsp;</td>
											<td valign="top"
												style="background: none repeat scroll 0% 0% rgb(255, 255, 255);">

												<table width='100%' cellpadding="2" border='0'
													cellspacing='2'>
													<tr>
														<td class="helptool-content"
															style="background: none repeat scroll 0% 0% transparent;">
															<span class="fnt11"> Agent and scan script have
																been enhanced with this release. If you are using either
																of the two for scanning your Windows machines, kindly
																upgrade them.<br> <br> Scan script can be
																downloaded from <a style="color: red"
																onclick="javascript:NewWindow('ImportWindowsWS.do', 'Import_Asset', '800', '400','yes','center')"
																href="#">here</a>.&nbsp;<br> <br> The new
																agent and steps for deploying the agent can be viewed
																from <a style="color: red"
																href="/SetUpWizard.do?forwardTo=agentsettings">here</a>.&nbsp;
														</span>
														</td>

													</tr>
												</table>
											</td>
											<td class="helptool-shadow-rm">&nbsp;</td>
										</tr>

										<tr>
											<td class="helptool-shadow-bl">&nbsp;</td>
											<td class="helptool-shadow-bm">&nbsp;</td>
											<td class="helptool-shadow-br">&nbsp;</td>
										</tr>
									</table>
								</div> 
							</td>
						</tr>
						<tr>
							<td>
								<table border="0" cellpadding="0" cellspacing="0" width="100%">
									
										<tr>
											<td class="Lefttd" valign="top" align="center"><%@ include file="left_panel.jsp" %></td>
											<td valign="top" width="99%" class="pad5">
												<!--Start Contents-->
												<table cellspacing="0" cellpadding="0" border="0"
													width="100%">
													<tr>
														<td colspan="2">
															<table cellspacing="0" cellpadding="0" border="0"
																width="100%">
																<tr>
																	<td class="whitebgBorder">

																		<table cellspacing="0" id="Right-Section"
																			class="pad0px" cellpadding="0" border="0"
																			width="100%" style="padding: 0px;">
																			<tr>
																				<td class="lcnagreehrbg">控制面板</td>
																			</tr>
																			<tr>
																				<td class="pad10">
																					<div id="Dashboard">
																						<div class="content">
																							<!-- Insert Content Here -->










																							<div class='hide'
																								id="sdp.inventory.lhsViews.asset">Asset
																								Summary</div>

																							<script>
function displayGraphInDialog(frame)
{
	var titleDivId = "More";//No I18N
	if(frame == 'first') {
		titleDivId = titleDivId+"1_PH";//No I18N
	}
	else if(frame == 'second') {
		titleDivId = titleDivId+"2_PH";//No I18N
	}
	else if(frame == 'third') {
		titleDivId = titleDivId+"3_PH";//No I18N
	}
	else if(frame == 'fourth') {
		titleDivId = titleDivId+"4_PH";//No I18N
	}
		var eid = document.getElementById(titleDivId);
	//alert("frame is : " + frame);
	if (eid != null)
	{
		title = eid.innerHTML;
		width=600;
	}
	else
	{
		title = getMessageForKey("sdp.inventory.lhsViews.asset");
		width=460;
	}
        showURLInDialog('/AssetHomePage.do?frame='+frame,'position=relative,closeButton=yes,width='+width+',height=275,title='+title); // No I18N
}

var displayin = null;
function displayGraph(graphName,dispin)
{
        displayin = dispin;
        var elem=document.getElementById(displayin+"Graph");
        var loadingElem=document.getElementById("loading");
	closeDialog();
        elem.innerHTML = loadingElem.innerHTML;

        getHtml('/AssetHomePage.do?requiredGraph='+graphName+'&layoutPosition='+displayin,'fillGraph');
}

function fillGraph(htmlele)
{
        var elem=document.getElementById("dummy");
        elem.innerHTML=htmlele
	var head = displayin+"Heading";
        var filledHeadingElement = document.getElementById("heading");
	if (filledHeadingElement != null)
	{
		filledHeadingElement.id=displayin+"Heading";
	}
        var graphElement = document.getElementById(displayin+"Graph");
        var filledGraphElement = document.getElementById("graph");

        graphElement.innerHTML = filledGraphElement.innerHTML;	
}

var rq = new Array();
var paramsArr = new Array();
function getHtml(url, fn, paramsObj, formElem) {
        var xmlObject = null;
        if( window.XMLHttpRequest ) {
                xmlObject = getXmlObj(true);
        } else if( !navigator.__ice_version && window.ActiveXObject ) {
                xmlObject = getXmlObj(true);
        } else {
                return false;
        }

        rt = rq.length
        rq[rt] = xmlObject;
        var paramsLen = paramsArr.length;
        paramsArr[paramsLen] = paramsObj;
        if (xmlObject) {
            rq[rt].onreadystatechange = new Function(' if (rq[' + rt +'].readyState==4) {' + fn + '(rq[' + rt +'].responseText, paramsArr[' + paramsLen + '])}');
                if(formElem) {
                        handleForm(rq[rt], url, formElem);
                } else {
                    rq[rt].open('GET', url, true);
                    rq[rt].setRequestHeader("Content-type","text/html");
                    rq[rt].setRequestHeader("Content-length", 0);
                    rq[rt].send(null);
                }
        }
        return true;

}

function getXmlObj(formElem) {
        var xmlObject = null;
        if(document.all) {
                var xmlObject = null;
                if(!formElem) {
                        try {
                                xmlObject = new ActiveXObject('Microsoft.XMLDOM');
                        } catch(e) {}
                }
                if(xmlObject == null) {
                        try {
                                xmlObject = new ActiveXObject('Msxml2.XMLHTTP');
                        } catch(e) {}
                }
                if(xmlObject == null) {
                        try {
                                xmlObject = new ActiveXObject('Microsoft.XMLHTTP');
                        } catch(e) {
                                throw new Exception('Browser not supported');
                        }
                }
        } else {
                xmlObject = new XMLHttpRequest();
        }
        return xmlObject;
}

function showMenuAsDialog1(holder, source) {
		document.onmousemove = capturePos;

        var reqX = findPosX(document.getElementById(holder));
        var reqY = findPosY(document.getElementById(holder));
        var offsetHeight = document.getElementById(holder).offsetHeight;
	var offsetWidth = document.getElementById(holder).offsetWidth;
	//this variable finds the window scrolled left offset. 
	var scrollLeftOffset = document.body.scrollLeft;
	showDialog(document.getElementById(source).innerHTML,'position=absolute,closeButton=no,width=160,left=' + (reqX+offsetWidth-160-scrollLeftOffset) + ',top=' + (reqY+ offsetHeight-document.body.scrollTop));
	setTimeout("closeMenusDialog('" + source + "')", 1000);
}


	var xposition,yposition;

function capturePos(e) {
	if (window.ActiveXObject)
	{
		xposition = window.event.clientX;
		yposition = window.event.clientY;
	}	
	else
	{
		xposition = e.pageX;	
		yposition = e.pageY;	
	}
}

function closeMenusDialog(source)
{

	var dialogElement = document.getElementById("_DIALOG_LAYER");
	var reqX = findPosX(dialogElement);
	var reqY = findPosY(dialogElement);
	var offsetHeight = dialogElement.offsetHeight;
	var offsetWidth = dialogElement.offsetWidth;
	// the below check is done without proper understanding, just done on a trial and error basis.
	if (window.ActiveXObject)
	{
		reqY = reqY - document.body.scrollTop;
		reqX = reqX - document.body.scrollLeft;
	}	

	var reqEndX = reqX + offsetWidth;
	var reqEndY = reqY + offsetHeight;

	if(xposition < reqEndX && xposition > reqX && yposition < reqEndY && yposition > (reqY-20)) {
		setTimeout("closeMenusDialog('" + source + "')", 1000);
	}
	else {
		closeDialog();
	}
	
}
</script>



																							<table width="100%" cellspacing="0"
																								cellpadding="5">
																								<tr valign="top">
																									<td>

																										<table width="100%" border="0" cellspacing="0"
																											cellpadding="0" class="container23">
																											<tr>
																												<td valign="top">
																													<div class="component23">
																														<div class="conh1">
																															<em></em> <b class="hdr">资产</b> <i></i>
																														</div>

																														<div class="control23">
																															<!--a href="javascript:displayGraphInDialog('first')" class="bt_dashboard_max23" >View All</a-->
																															<a
																																href="javascript:displayGraphInDialog('first')"
																																class="bt_dashboard_max23"></a> <span>
																																<a href="javascript:void(0)"
																																id="More1_PH" class="moredrop">不同状态的资产</a>
																															</span>
																															<div id="More1">
																																<iframe width="160" height="90"
																																	frameborder="0"
																																	src="/framework/html/blank.html"
																																	style="display: none;" class="dLf1"></iframe>
																																<ul class="assetDBMenus"
																																	style="display: none;">
																																	<li><a
																																		href="javascript:document.getElementById('More1_PH').innerHTML='Assets By Site';displayGraph('ResourcesBySite','first')">Assets
																																			By Site</a></li>

																																	<li><a
																																		href="javascript:document.getElementById('More1_PH').innerHTML='Assets By Region';displayGraph('ResourcesByRegion','first')">Assets
																																			By Region</a></li>

																																	<li><a
																																		href="javascript:document.getElementById('More1_PH').innerHTML='Assets By State';displayGraph('ResourcesByState','first')">Assets
																																			By State</a></li>
																																	<li><a
																																		href="javascript:document.getElementById('More1_PH').innerHTML='Asset Summary';displayGraph('AssetSummary','first')">Asset
																																			Summary</a></li>
																																</ul>
																															</div>
																														</div>



																														<div id="firstGraph"
																															style="display: block">
																															
												<div class="content23 ">
                                                <div class="spc"></div>
                                                <div class="graph" align="center">
                                                
		
						
                                                <map id="ResourcesByStateChart" name="ResourcesByStateChart">
<area shape="poly" coords="130,43,154,40,180,39,180,71,180,71" title="In Use = 8" alt="" href="asset_list.action">
<area shape="poly" coords="180,39,215,41,244,47,266,56,273,61,277,66,277,72,275,78,269,83,261,88,237,96,205,101,169,102,136,99,108,92,97,88,89,83,84,77,81,71,83,66,87,60,94,55,103,51,130,43,180,71,180,71" title="In Store = 88" alt="" href="asset_list.action">
</map>
                                                <img src="images/ResourcesByState_386_1399895100652.png" usemap="#ResourcesByStateChart" border="0">
                                           
                                                </div>

                                                	
									<div class="doubleL">
								<b style="display:none" class="cIn"><b class="cb4 graph"></b><b class="cb3 graph">
							</b><b class="cb2 graph"></b><b class="cb1"></b></b>	
						
							<div class="inf">
							<table cellpadding="0" cellspacing="0">
							<tr>
								<td>
								

									<b class="field-color-indicator"><em class="em" style="background:#a6ce39;"></em><i>In Use = 8</i></b>									


									<b class="field-color-indicator"><em class="em" style="background:#7d9cca;"></em><i>In Store = 88</i></b>									

									</td>
													</tr>
													</table>
								</div>
								<b class="cBox curveFix" style="position:relative; display:none; top:-5px;"><b class="cb4 color_vdb"></b><b class="cb3 color_vdb">
							</b><b class="cb2 color_vdb"></b><b class="cb1"></b></b></div>

                                        </div>
										<!-- Inline Botttom Line -->
										<!--b class="astbtc mtp">
													<b class="astbtc4 col"></b><b class="astbtc3 col"></b><b class="astbtc2 col"></b><b class="astbtc1"></b>
												</b-->
  
																														</div>
																														<b class="assetborder"></b>
																													</div>
																												</td>
																											</tr>
																										</table>
																										<div id="dummy" style="display: none"></div>
																										<div id="loading"
																											class="content graph lgbdrboxastnone"
																											style="display: none; position: relative; z-index: 2;">
																											<div>
																												<div class="noL">
																													<table>
																														<tr height="200px">
																															<td align="center" valign="middle">

																																<img src="images/cogwheel.gif">
																															</td>
																														</tr>
																													</table>
																												</div>
																											</div>
																										</div> <script>
if(window.jQuery != null){
		jQuery(document).ready(function() {
});
}
</script>

																									</td>
																									<td width="49%">



																										<table width="100%" border="0" cellspacing="0"
																											cellpadding="0" class="container23">
																											<tr>
																												<td width="50%" valign="top"
																													class="paddingLeft">
																													<div class="component23">
																														<div class="conh1">
																															<em></em> <b class="hdr">运维事件</b>
																															<i></i>
																														</div>
																														<div class="control23">
																															<!--a href="javascript:displayGraphInDialog('third')" class="bt_dashboard_max23" >View All</a-->
																															<a
																																href="javascript:displayGraphInDialog('third')"
																																class="bt_dashboard_max23"></a> <span>
																																<a href="javascript:void(0)"
																																id="More3_PH" class="moredrop">事件影响程度</a>
																															</span>
																															<div id="More3">
																																<iframe width="160" height="200"
																																	frameborder="0"
																																	src="/framework/html/blank.html"
																																	style="display: none;" class="dLf1"></iframe>
																																<ul class="assetDBMenus"
																																	style="display: none;">
																																	<li><a
																																		href="javascript:document.getElementById('More3_PH').innerHTML='Workstations by OS';displayGraph('WSByOS','third')">Workstations
																																			by OS</a></li>
																																	<li><a
																																		href="javascript:document.getElementById('More3_PH').innerHTML='Workstations by Domain';displayGraph('WSByDomain','third')">Workstations
																																			by Domain</a></li>
																																	<li><a
																																		href="javascript:document.getElementById('More3_PH').innerHTML='Workstations by Manufacturer';displayGraph('WSByManufacturer','third')">Workstations
																																			by Manufacturer</a></li>
																																	<li><a
																																		href="javascript:document.getElementById('More3_PH').innerHTML='Workstations By Processor Type';displayGraph('WSByProcessorType','third')">Workstations
																																			By Processor Type</a></li>
																																	<li><a
																																		href="javascript:document.getElementById('More3_PH').innerHTML='Workstations By Department';displayGraph('WSByDepartment','third')">Workstations
																																			By Department</a></li>
																																	<li><a
																																		href="javascript:document.getElementById('More3_PH').innerHTML='Workstations By Site';displayGraph('WSBySite','third')">Workstations
																																			By Site</a></li>
																																	<li><a
																																		href="javascript:document.getElementById('More3_PH').innerHTML='Workstations By Region';displayGraph('WSByRegion','third')">Workstations
																																			By Region</a></li>
																																	<li><a
																																		href="javascript:document.getElementById('More3_PH').innerHTML='Unaudited Workstations';displayGraph('WSUnaudited','third')">Unaudited
																																			Workstations</a></li>

																																	<li><a
																																		href="javascript:document.getElementById('More3_PH').innerHTML='Workstations By State';displayGraph('WSByStates','third')">Workstations
																																			By State</a></li>
																																</ul>
																															</div>
																														</div>
																														<div id="thirdGraph"
																															style="display: block">
																															<div class="content23 grydash"
																																align="center">
																																<!--h4 id="thirdHeading">Workstations by OS</h4-->
																																<div class="spc"></div>

																																<map id="thirdDisplayChart"
																																	name="thirdDisplayChart">
																																	<area shape="poly"
																																		coords="282,108,282,18,290,10,307,10,307,100,299,108,299,108"
																																		title="Not Known = 11" alt=""
																																		href="/WorkstationListViewForGraph.do?criteria=OSNotKnown" />
																																	<area shape="poly"
																																		coords="230,108,230,100,238,92,255,92,255,100,247,108,247,108"
																																		title="Microsoft Windows 7 Home Premium = 1"
																																		alt=""
																																		href="/WSDrillDownListView.do?columnNames=OS&columnValues=Microsoft+Windows+7+Home+Premium" />
																																	<area shape="poly"
																																		coords="178,108,178,100,186,92,202,92,202,100,194,108,194,108"
																																		title="Microsoft(R) Windows(R) Server 2003 Enterprise x64 Edition = 1"
																																		alt=""
																																		href="/WSDrillDownListView.do?columnNames=OS&columnValues=Microsoft%28R%29+Windows%28R%29+Server+2003+Enterprise+x64+Edition" />
																																	<area shape="poly"
																																		coords="126,108,126,67,134,59,150,59,150,100,142,108,142,108"
																																		title="Microsoft Windows XP Professional = 5"
																																		alt=""
																																		href="/WSDrillDownListView.do?columnNames=OS&columnValues=Microsoft+Windows+XP+Professional" />
																																	<area shape="poly"
																																		coords="73,108,73,67,81,59,98,59,98,100,90,108,90,108"
																																		title="Microsoft Windows 7 Professional = 5"
																																		alt=""
																																		href="/WSDrillDownListView.do?columnNames=OS&columnValues=Microsoft+Windows+7+Professional" />
																																</map>

																																<img
																																	src="images/thirdDisplay_386_1399871662978.jpg"
																																	border="0" usemap="#thirdDisplayChart" />




																																<div class="noL">
																																	<b style="display: none" class="cIn"><b
																																		class="cb4 graph"></b><b
																																		class="cb3 graph"> </b><b
																																		class="cb2 graph"></b><b class="cb1"></b></b>

																																	<span class="info_graph color_vdb">
																																	</span>


																																</div>

																															</div>
																														</div>
																														<b class="assetborder"></b>
																													</div>
																												</td>
																											</tr>
																										</table>
																										<div id="dummy" style="display: none"></div>

																										<div id="loading"
																											class="content graph lgbdrboxastnone"
																											style="display: none; position: relative; z-index: 2;">
																											<div class="content23 grydash">
																												<div class="noL">
																													<table width="100%">
																														<tr height="200px">
																															<td align="center" valign="middle">

																																<img src="images/cogwheel.gif">
																															</td>
																														</tr>
																													</table>
																												</div>
																											</div>
																										</div> <script>
if(window.jQuery != null){
    jQuery(document).ready(function() {
});
}
</script>


																									</td>
																								</tr>
																								<tr height="10">
																									<td colspan="2"></td>
																								</tr>
																								<tr height="50" valign="top">
																									<td width="49%" class="alignLeft">
																										<table width="100%" border="0" cellspacing="0"
																											cellpadding="0" class="container23">
																											<tr>
																												<td valign="top">
																													<div class="component23">
																														<div class="conh1">
																															<em></em> <b class="hdr">审计事件</b> <i></i>
																														</div>
																														<div class="control23">
																															<!--a href="javascript:displayGraphInDialog('fourth')" class="bt_dashboard_max23" >View All</a-->
																															<a
																																href="javascript:displayGraphInDialog('fourth')"
																																class="bt_dashboard_max23"></a> <span>
																																<a href="javascript:void(0)"
																																id="More4_PH" class="moredrop">审计过程跟踪</a>
																															</span>

																															<div id="More4">
																																<iframe width="160" height="90"
																																	frameborder="0"
																																	src="/framework/html/blank.html"
																																	style="display: none;" class="dLf1"></iframe>
																																<ul class="assetDBMenus"
																																	style="display: none;">
																																	<li><a
																																		href="javascript:document.getElementById('More4_PH').innerHTML='Software Vendors By Volume';displayGraph('SWVendorsByVolume','fourth')">Software
																																			Vendors By Volume</a></li>
																																	<li><a
																																		href="javascript:document.getElementById('More4_PH').innerHTML='Microsoft Software License Compliance';displayGraph('MicrosoftCompliance','fourth')">Microsoft
																																			Software License Compliance</a></li>
																																	<li><a
																																		href="javascript:document.getElementById('More4_PH').innerHTML='Software Licensing Status';displayGraph('AllSWCompliance','fourth')">Software
																																			Licensing Status</a></li>
																																	<li><a
																																		href="javascript:document.getElementById('More4_PH').innerHTML='Software Rarely Used';displayGraph('SWRarelyUsed','fourth')">Software
																																			Rarely Used</a></li>
																																	<li><a
																																		href="javascript:document.getElementById('More4_PH').innerHTML='Software By Category';displayGraph('SWByCategory','fourth')">Software
																																			By Category</a></li>
																																	<li><a
																																		href="javascript:document.getElementById('More4_PH').innerHTML='Software Vendors - Non-compliance';displayGraph('SWVendorNC','fourth')">Software
																																			Vendors - Non-compliance</a></li>
																																</ul>
																															</div>
																														</div>
																														<div id="fourthGraph"
																															style="display: block">
																															<div class="content23 grydash"
																																align="center">
																																<!--h4 id="fourthHeading">Software Vendors - Non-compliance</h4-->
																																<div class="spc"></div>

																																<map id="fourthDisplayChart"
																																	name="fourthDisplayChart">
																																	<area shape="rect"
																																		coords="277,121,293,125"
																																		title="Under Licensed = 1" alt=""
																																		href="/SoftwareListView.do?softwareManufacturer=6&site=-1&swType=2&swComplianceType=2&fromSoftwareHome=true&showZeroCount=false" />
																																	<area shape="rect"
																																		coords="211,121,227,125"
																																		title="Under Licensed = 1" alt=""
																																		href="/SoftwareListView.do?softwareManufacturer=601&site=-1&swType=2&swComplianceType=2&fromSoftwareHome=true&showZeroCount=false" />
																																	<area shape="rect"
																																		coords="145,108,161,125"
																																		title="Under Licensed = 4" alt=""
																																		href="/SoftwareListView.do?softwareManufacturer=2&site=-1&swType=2&swComplianceType=2&fromSoftwareHome=true&showZeroCount=false" />
																																	<area shape="rect"
																																		coords="78,19,94,125"
																																		title="Under Licensed = 24" alt=""
																																		href="/SoftwareListView.do?softwareManufacturer=1&site=-1&swType=2&swComplianceType=2&fromSoftwareHome=true&showZeroCount=false" />
																																</map>
																																<img
																																	src="images/fourthDisplay_386_1399871663029.jpg"
																																	border="0" usemap="#fourthDisplayChart" />



																																<div class="noL">
																																	<b style="display: none" class="cIn"><b
																																		class="cb4 graph"></b><b
																																		class="cb3 graph"> </b><b
																																		class="cb2 graph"></b><b class="cb1"></b></b>
																																	<span class="info_graph color_vdb">
																																	</span> <b style="display: none"
																																		class="cBox curveFix"> <b
																																		class="cb4 color_vdb lbcurve"></b><b
																																		class="cb3 color_vdb lbcurve"> </b><b
																																		class="cb2 color_vdb lbcurve"></b><b
																																		class="cb1"></b></b>

																																</div>


																															</div>
																														</div>
																														<b class="assetborder"></b>

																													</div>
																												</td>
																											</tr>
																										</table>

																										<div id="dummy" style="display: none"></div>

																										<div id="loading"
																											class="content graph lgbdrboxastnone"
																											style="display: none; position: relative; z-index: 2;">
																											<div class="content23 grydash">
																												<div class="noL">
																													<table width="100%">
																														<tr height="200px">
																															<td align="center" valign="middle">
																																<img src="images/cogwheel.gif">
																															</td>
																														</tr>
																													</table>
																												</div>
																											</div>
																										</div> <script>
if(window.jQuery != null){
	jQuery(document).ready(function() {	
});
}
</script>

																									</td>
																									<td width="49%" class="alignLeft">

																										<table width="100%" border="0" cellspacing="0"
																											cellpadding="0" class="container23">
																											<tr>
																												<td valign="top" class="paddingLeft">
																													<div class="component23">
																														<div class="conh1">
																															<em></em> <b class="hdr">安全事件</b> <i></i>
																														</div>
																														<div class="control23">
																															<!--a href="javascript:displayGraphInDialog('second')" class="bt_dashboard_max23" >View All</a-->
																															<a
																																href="javascript:displayGraphInDialog('second')"
																																class="bt_dashboard_max23"></a> <span>
																																<a href="javascript:void(0)"
																																id="More2_PH" class="moredrop">安全事件类别</a>
																															</span>

																															<div id="More2">
																																<iframe width="160" height="80"
																																	frameborder="0"
																																	src="/framework/html/blank.html"
																																	style="display: none;" class="dLf1"></iframe>
																																<ul class="assetDBMenus"
																																	style="display: none;">

																																	<li><a
																																		href="javascript:document.getElementById('More2_PH').innerHTML='Purchase Order Summary';displayGraph('POSummary','second')">Purchase
																																			Order Summary</a></li>

																																	<li><a
																																		href="javascript:document.getElementById('More2_PH').innerHTML='Contract Summary';displayGraph('ContractSummary','second')">Contract
																																			Summary</a></li>

																																</ul>
																															</div>

																														</div>
																														<div id="secondGraph"
																															style="display: block">
																															<div class="content23 grydash"
																																align="center">
																																<!--h4 id="secondHeading">Purchase Order Summary</h4-->
																																<div class="spc"></div>

																																<map id="secondDisplayChart"
																																	name="secondDisplayChart">
																																	<area shape="poly"
																																		coords="81,117,81,18,89,10,106,10,106,109,98,117,98,117"
																																		title="Overdue POs = 2" alt=""
																																		href="/PurchaseOrderList.do?status=OverduePOs" />
																																</map>
																																<img
																																	src="images/secondDisplay_386_1399871662938.jpg"
																																	border="0" usemap="#secondDisplayChart" />

																															</div>

																															<div class="noL">
																																<b style="display: none" class="cIn "><b
																																	class="cb4 graph"></b><b
																																	class="cb3 graph"> </b><b
																																	class="cb2 graph"></b><b class="cb1"></b></b>
																																<span class="info_graph color_vdb">
																																</span> <b style="display: none"
																																	class="cBox curveFix lbcurve"> <b
																																	class="cb4 color_vdb lbcurve"></b><b
																																	class="cb3 color_vdb lbcurve"> </b><b
																																	class="cb2 color_vdb lbcurve"></b><b
																																	class="cb1"></b></b>
																															</div>

																														</div>
																														<b class="assetborder"></b>
																													</div>

																												</td>
																											</tr>
																										</table>
																										<div id="dummy" style="display: none"></div>
																										<div id="loading"
																											class="content graph lgbdrboxastnone"
																											style="display: none; position: relative; z-index: 2;">
																											<div class="content23 grydash">
																												<div class="noL">
																													<table width="100%">
																														<tr height="200px">
																															<td align="center" valign="middle">
																																<img src="images/cogwheel.gif">
																															</td>
																														</tr>
																													</table>
																												</div>
																											</div>
																										</div>

																										<div class=hide id="More2">
																											<table id="tablemenus" style="width: 160px;"
																												class="dbborder pad0px" cellspacing=0
																												border=0>
																												<tr>
																													<td><a
																														href="javascript:document.getElementById('More2_PH').innerHTML='Purchase Order Summary';displayGraph('POSummary','second')">Purchase
																															Order Summary</a> <a
																														href="javascript:document.getElementById('More2_PH').innerHTML='Contract Summary';displayGraph('ContractSummary','second')">Contract
																															Summary</a></td>
																												</tr>
																											</table>
																										</div> <script>
if(window.jQuery != null){
		jQuery(document).ready(function() {
});
}
</script>


																									</td>
																								</tr>
																							</table>
																							<div id="dashboard-mdiv">




																								<table width="100%" border="0" cellpadding="10"
																									class="floatLeft">

																									<tr>

																									</tr>

																								</table>



																							</div>

																							<script>
if(window.jQuery != null) {	
				jQuery(document).ready(
					function()
					{
						var config = {	animSpeed		: 500, 
										selectorMethod 	: function(className, obj){
															return (jQuery(obj).prev());
														  }
									  };
						jQuery('#More1, #More2, #More3, #More4').SingleDropDown(config);
					}
				);
			}			
</script>
																							<br />

																						</div>
																					</div>
																				</td>
																			</tr>
																		</table>
																	</td>
																</tr>
															</table>
														</td>
														<td width="5" valign="top" class="lceagr-mr"><img
															border="0" class="lceagr-tr" src="images/spacer.gif" /></td>
													</tr>
													<tr>
														<td height="6" width="5"><img border="0"
															class="lceagr-bl" src="images/spacer.gif" /></td>
														<td width="99%" class="lceagr-bm" />
														<td height="6" width="5" class="lceagr-br" />
													</tr>
												</table>

											</td>
										</tr>
									
								</table>
							</td>
						</tr>
						
					</table> <br> <br> <br> <script>
function setMinLeftPanelHeight(){
//      alert("Right - Section height : " + document.getElementById('Right-Section').clientHeight);
//      alert("Right - Section : " + document.getElementById('Right-Section').height);
//      alert("Left - Section height : " + document.getElementById('Left-Section').clientHeight);
//      alert("Left - Section : " + document.getElementById('Left-Section').height);
	if( document.getElementById("Right-Section") != null && document.getElementById("Left-Section") != null) {
                if(document.getElementById('Right-Section').clientHeight > document.getElementById('Left-Section').clientHeight)
                {
			document.getElementById('Left-Section').style.height = document.getElementById('Right-Section').clientHeight;			
                        document.getElementById('LeftIndicator').style.height =((document.getElementById('Right-Section').clientHeight)-26+'px');
                        document.getElementById('LeftIndicatorClosed').style.height = ((document.getElementById('Right-Section').clientHeight)-26+'px');
			//alert('Left:' + document.getElementById('Left-Section').style.height);
			//alert('Right:' + document.getElementById('Right-Section').clientHeight);
       }
                else{
			document.getElementById('Right-Section').style.height = document.getElementById('Left-Section').clientHeight;
                        //document.getElementById('LeftIndicator').style.height =(document.getElementById('Left-Section').clientHeight);
                        //document.getElementById('LeftIndicatorClosed').style.height = (document.getElementById('Left-Section').clientHeight);
			//alert('Left:' + document.getElementById('Left-Section').clientHeight);
			//alert('Right:' + document.getElementById('Right-Section').style.height);
                }
        }
}

//Event.observe(window,'load',setMinLeftPanelHeight);

//if(!window.postInvokeScripts) {
//      window.postInvokeScripts=new Array();
//}
//addToOnLoadScripts("setMinLeftPanelHeight()", window);
//execOnLoadScripts(window);
</script>
	</table>
</body>
</html>
