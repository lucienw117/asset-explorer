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
		<tbody>
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
					<table width="100%" cellpadding="0" cellspacing="0" border="0"
						class="topheaderbg">
						<tr>
							<td valign="top">
								<table cellpadding="0" id="topHeader" cellspacing="0" border="0"
									width="100%">
									<tr>
										<td valign="top"><input type="hidden" name="loggedUserID"
											value="2"> <input type="hidden" name="tabName"
											value="Home"> <script>
        signedIn();
</script> <!--Start Header  -->
											<div id="dropmenudiv" style="visibility: hidden;"
												onMouseOver="clearhidemenu()"
												onMouseOut="dynamichide(event)"></div> <!--link href="/style/CreamyBlue_new.css" rel="stylesheet" type="text/css"-->
											<div id="timeToLoad" style="display: none;"></div> <!-- For fixing relogin issue start -->
											<!-- For fixing relogin issue end-->


											<table cellspacing="0" cellpadding="0" border="0"
												class="top_links">
												<tr>

													<!-- The below code will execute only for demo build    -->
													<td valign="top">
														<table cellspacing="0" cellpadding="0" border="0"
															class="mtop2 demo-topstrip">
															<tbody>
																<tr>
																	<td class="noborderimp topstrip-hdr-tl"></td>
																	<td class="noborderimp topstrip-hdr-tm p0px4px">
																		<table cellspacing="0" cellpadding="0" border="0">
																			<tbody>
																				<tr>
																					<td class="noborderimp"><img
																						class="hdr-gqbtnl" src="images/spacer.gif"></td>

																					<td class="noborderimp"><a title="Download"
																						class="hdr-gqbtnm noborderimp"
																						href="http://www.manageengine.com/products/asset-explorer/download.html?demo"
																						target="Download">下载</a></td>

																					<td class="noborderimp"><img
																						class="hdr-gqbtnr" src="images/spacer.gif"></td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																	<td width="2" class="topstrip-hdr-tm noborderimp"><img
																		height="18" width="1" class="topstrip-hdr-sptr"
																		src="images/spacer.gif"></td>
																	<td class="noborderimp topstrip-hdr-tm p0px4px">
																		<table cellspacing="0" cellpadding="0" border="0">
																			<tbody>
																				<tr>
																					<td class="noborderimp"><img
																						class="hdr-gqbtnl" src="images/spacer.gif"></td>
																					<td class="noborderimp"><a title="Get Quote"
																						class="hdr-gqbtnm noborderimp"
																						href="http://www.manageengine.com/products/asset-explorer/getquote.html"
																						target="GetQuote">获取报价</a></td>
																					<td class="noborderimp"><img
																						class="hdr-gqbtnr" src="images/spacer.gif" /></td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																	<td class="noborderimp topstrip-hdr-tr"></td>
																</tr>
															</tbody>
														</table>
													</td>

													<!-- Should not show the below table for registered and free license. Only for Traial version  -->

													<td width="20" nowrap="nowrap"></td>

													<td valign="top" class="ptop3"><a
														href="javascript:NewWindow('../jsp/About.jsp','About','525','325','yes','center')"
														class="pleft8 pright8">关于</a></td>
													<td valign="top" class="ptop3" width="1"><img
														width="1" hspace="3" height="18" class="toplink-sptr"
														src="images/spacer.gif"></td>
													<td valign="top" class="ptop3"><a
														href="javascript:void(0)" onclick=""
														class="pleft8 pright8">联系我们</a></td>
													<td valign="top" class="ptop3" width="1"><img
														width="1" hspace="3" height="18" class="toplink-sptr"
														src="images/spacer.gif"></td>
													<td valign="top" class="ptop3"><a
														href="http://www.manageengine.com/products/asset-explorer/help/index.html"
														class="pleft8 pright8" target="new">帮助</a></td>
													<td valign="top" class="ptop3" width="1"><img
														width="1" hspace="3" height="18" class="toplink-sptr"
														src="images/spacer.gif"></td>
													<td valign="top" class="ptop3"><a
														href="javascript:void(0)" onclick=""
														class="pleft8 pright8">许可升级</a></td>
													<td valign="top" class="ptop3" width="1"><img
														width="1" hspace="3" height="18" class="toplink-sptr"
														src="images/spacer.gif"></td>
													<td valign="top" class="ptop3"><a
														href="javascript:void()" onClick="" class="pleft8 pright8">个性化</a>
													</td>
													<td valign="top" class="ptop3" width="1"><img
														width="1" hspace="3" height="18" class="toplink-sptr"
														src="images/spacer.gif"></td>
													<td valign="top" class="ptop5" nowrap="nowrap"><nobr>
															<a href="javascript: preLogout()" style="display: inline"
																class="pleft8 pright8"><strong>退出</strong></a> [ Tim-Tian ]
														</nobr></td>
													<td width="20" nowrap="nowrap"></td>
												</tr>
											</table>

											<div class="efx">
												<table cellpadding="0" cellspacing="0" border="0"
													width="500">
													<tr>
														<td valign="bottom">
															<div class="logo">安全运行监管平台</div>
														</td>
														<td valign="bottom">


															<table cellpadding="0" class="top_tabs" cellspacing="0"
																border="0">
																<tr>
																	<td class="first-child"><a class="active" href="/AssetHomePage.do">首页</a></td>
																	<!--checking for remote server-->
																	<td><a href="/InventoryHome.do">资产</a></td>
																	<!-- Software Tab -->
																	<td><a href="/SoftwareHome.do">软件</a></td>
																	<td><a href="/PurchaseOrderList.do">运维</a></td>
																	<td><a href="/ContractView.do">审计</a></td>
																	<td><a href="/CMDBAction.do?mode=listView">安全</a></td>
																	<td><a href="/AdminHome.do">告警</a></td>
																	<td><a href="/CustomReportHandler.do">报表</a></td>
																	<td><a href="/CustomReportHandler.do">文档</a></td>
																	<td class="last-child"><a href="/Support.do">管理</a></td>

																</tr>
															</table>
														</td>
														<td valign="bottom" class="head_comp"><a id="Scan_PH"
															href="javascript:void(0)"
															onclick="javascript:showscanlist(this);"><b>扫描</b></a>

															<div id="Scan" class="scan" style="display: none;">
																<table border="0" cellspacing="0" cellpadding="0"
																	width="375">
																	<tr>
																		<td class="linkcontent">
																			<div class="scandesc">Download Windows Agent
																				and steps for agent deployment</div>
																			<div class="scandesc">Scan Windows
																				workstations/servers in Domain or Workgroup</div>
																			<div class="scandesc">Scan Linux, Solaris, Mac
																				and AIX workstations/servers and other network
																				devices like Printers, Routers, Switches</div>
																			<div class="scandesc">Scan an individual
																				workstation or network device</div>
																			<div class="scandesc">Scan machines which are
																				not in the network</div>
																			<div class="scandesc">Import assets available
																				in an excel sheet or CSV file</div>
																		</td>
																	</tr>
																</table>
															</div></td>
														<td></td>
														<td>&nbsp;</td>
													</tr>
												</table>
											</div>
											<div id="SearchOptions" style="width: 180px; display: none;"
												class="border-dark-gray">
												<table border="0" cellspacing="0" cellpadding="0"
													width="190px">
													<tr>
														<td class="searchlink" colspan="2"><a href="#"
															onclick="changeSearchOption('Home')"><img
																src="images/search_allresources_icon.gif" />All Assets</a>
															<a href="#" onclick="changeSearchOption('Assets')"><img
																src="images/search_workstation_icon.gif" />Workstation
																/ Server</a> <a href="#"
															onclick="changeSearchOption('Users')"><img
																src="images/spacer.gif" class="usersicon" />Users</a> <a
															href="#" onclick="changeSearchOption('Software')"><img
																src="images/search_software_icon.gif" />Software</a> <a
															href="#" onclick="changeSearchOption('Purchase')"><img
																src="images/search_purchase_icon.gif" />Purchase</a> <a
															href="#" onclick="changeSearchOption('Contracts')"><img
																src="images/search_contact_icon.gif" />Contracts</a> <a
															href="#" onclick="changeSearchOption('CMDB')"><img
																src="images/spacer.gif" class="citype-defaulticn" />All
																CIs</a></td>

														<td width="6px">&nbsp;</td>
													</tr>
												</table>
											</div></td>
									</tr>
								</table>







								<div class="top-grayband">

									<ul id="QuickLinksMenu" class="dropList">
										<li class="f">
											<table cellspacing="0" cellpadding="0" border="0">
												<tr>
													<td><em></em></td>
													<td><b class='mact'>快速链接</b></td>
													<td><i></i></td>
												</tr>
											</table> <iframe width="205" height="220" frameborder="0"
												src="/framework/html/blank.html" style="display: none;"
												class="dLf1"></iframe>
											<ul style="display: none;">
												<li><a href="/WorkstationListView.do" class="fontBlack"
													title="Click to view all workstations">All Workstations</a></li>
												<li><a
													href="/WorkstationListView.do?AssetType=In Store"
													class="fontBlack"
													title="Click to view the workstation(s) In Store">Workstations
														In Store</a></li>
												<li><a href="/FailedWsListView.do" class="fontBlack"
													title="Click to view the Un-audited workstations.">Un-audited
														Workstations</a></li>
												<li><a
													href="/SoftwareListView.do?softwareManufacturer=-1&site=-1&swType=2&swComplianceType=0&showZeroCount=false"
													class="fontBlack"
													title="Click to view all Managed Software in the system.">Managed
														Software</a></li>
												<li><a
													href="/SoftwareListView.do?softwareManufacturer=-1&site=-1&swType=4&swComplianceType=0&fromSoftwareHome=true&showZeroCount=false"
													class="fontBlack"
													title="Click to view all Prohibited Software in the system">Prohibited
														Software</a></li>

												<li><a href="/ManageGroups.do" class="fontBlack"
													title="Click to manage Asset Groups">Manage Groups</a></li>

												<li><a href="/GroupResourcesDef.do" class="fontBlack"
													title="Click to create New Asset Group">Create Group</a></li>

												<li><a href="/SetUpWizard.do?forwardTo=notification"
													class="fontBlack" title="Notification Rules">Notification
														Rules</a></li>

												<li><a
													href="/CMDBAction.do?mode=listView&allRelationships=true"
													class="fontBlack" title="All Relationships">All
														Relationships</a></li>

											</ul>
										</li>
									</ul>


									<ul id="CreateNewMenu" class="dropList">
										<li class="f">
											<table cellspacing="0" cellpadding="0" border="0">
												<tr>
													<td><em></em></td>
													<td><b class='mact'>创建新的</b></td>
													<td><i></i></td>
												</tr>
											</table> <iframe width="205" height="260" frameborder="0"
												src="/framework/html/blank.html" style="display: none;"
												class="dLf1"></iframe>
											<ul style="display: none;">


												<li><a href="javascript:void(0)"
													onClick="showURLInDialog('/AddCI.do?mode=showDialog','closeButton=no,position=absolute,top=100,height=500,overflow=visible,left=350,modal=yes')"
													class="fontBlack" title="Add New CI">CI</a></li>

												<li><a href="javascript:void(0)"
													onclick="showURLInDialog('/AddCI.do?mode=showAssetDialog&filter=allassetproducts','closeButton=no,position=absolute,top=100,height=500,overflow=visible,left=350,modal=yes')"
													class="fontBlack"
													title="Click to create a new Asset/Component">Asset/Component</a></li>
												<li><a href="/ManualNodeAddition.do" class="fontBlack"
													title="Click to create a new workstation">Workstation</a></li>
												<li><a href="/ManualNodeAddition.do?isServer=true"
													class="fontBlack" title="Click to create a New Server">Server</a></li>

												<li><a href="/SoftwareLicense.do?operation=new"
													class="fontBlack"
													title="Click to create New Software License">Software
														License</a></li>
												<li><a
													href="/LicenseAgreement.do?operation=newagreement"
													class="fontBlack"
													title="Click to create a New License Agreement">License
														Agreement</a></li>

												<li><a href="/PurchaseOrder.do?module=newPO"
													class="fontBlack"
													title="Click to create a New Purchase Order.">Purchase
														Order</a></li>

												<li><a href="/ContractDef.do" class="fontBlack"
													title="Click to create a new Contract">Contract</a></li>

												<li><a href="/RequesterDef.do?toShowView=addForm"
													class="fontBlack" title="Click to create a New User">User</a></li>
												<li><a href="/ProductDef.do?toShowView=addForm"
													class="fontBlack" title="Click to create New Product">Product</a></li>
												<li><a href="/VendorDef.do?toShowView=addForm"
													class="fontBlack" title="Click to create a New Vendor">Vendor</a></li>

											</ul>
										</li>
									</ul>
									<div class="searchsection">
										<form name="SearchNForm" method="post" action="/SearchN.do">
											<input type="hidden" name="selectName" value="" id="selName">
											<table cellpadding="0" cellspacing="0" border="0">
												<tr>
													<td class="search" valign="top"><a id="Search_Button"
														href="javascript:showMenuAsDialog('Search_Button','SearchOptions');"
														class="search_filter" href="#">&nbsp; <img
															src="images/search_allresources_icon.gif"
															id="searchImage" /> <script>document.getElementById('selName').value=getMessageForKey("sdp.common.search.allresources")</script>
													</a></td>
													<td><input type="text" name="searchText" value="搜索资产"
														onblur="checkField(this)" onfocus="checkField(this)"
														class="" id="searchText"> <script>
					function checkField(source)
					{
						if(source.value == 'Search' || source.value == getMessageForKey( "sdp.leftpanel.search.title" ) || source.value == getMessageForKey( "ae.header.search.allAssets" ) || source.value == getMessageForKey( "ae.header.search.wsAndServer" ) || source.value == getMessageForKey( "ae.header.search.users" ) || source.value == getMessageForKey( "ae.header.search.software" ) || source.value == getMessageForKey( "ae.header.search.purchase" ) || source.value == getMessageForKey( "ae.header.search.contracts" ) || source.value == getMessageForKey( "ae.header.search.allCIs" ))
						{ 
							source.value = '';
						}
						else if(source.value == '')
						{
							if(optionSearchText == '')
							{ 
								source.value = 'Search Assets';
							}
							else
							{
								source.value = optionSearchText;
							}
						} 
					}
				</script></td>
													<td valign="top">
														<!--<input type="submit" name="submitbutton" value="Go" onclick="return validateSearchValue(this.form)" class="button" title="Go">-->
														<input type="submit" name="submitbutton" value="&nbsp;"
														onclick="return validateSearchValue(this.form)"
														class="button" title="Go"> <!--a href="#" class="go_button">GO</a-->


													</td>
												</tr>
											</table>
										</form>


									</div>
								</div>

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
								</div> <script type="text/javascript">

function showMenuAsDialog(holder, source) {
	var reqX = findPosX(document.getElementById(holder));
	var reqY = findPosY(document.getElementById(holder));
	var offsetWidth = document.getElementById(holder).offsetHeight;
		showDialog(document.getElementById(source).innerHTML,'position=absolute,closeButton=no,closeOnBodyClick=yes,srcElement=CreateNew_PH,left=' + (reqX-document.body.scrollLeft) + ',top=' + (reqY+ offsetWidth-document.body.scrollTop));
}


function showMenuAsDialogForQuickLink(holder, source) {
	document.onmousemove = capturePosForQuickLink;

	var reqX = findPosX(document.getElementById(holder))-540;
	var reqY = findPosY(document.getElementById(holder))+12;
	var offsetWidth = document.getElementById(holder).offsetHeight;
	showDialog(document.getElementById(source).innerHTML,'position=absolute,closeButton=no,srcElement=CreateNew_PH,left=' + (reqX-document.body.scrollLeft) + ',top=' + (reqY+ offsetWidth-document.body.scrollTop));
	setTimeout("closeMenusDialogForQuickLink('" + source + "')", 1000);
}



/*function showMenuAsDialogForDropLinks1(holder, source) {

	var reqX = findPosX(document.getElementById(holder));
	var reqY = findPosY(document.getElementById(holder));
	var offsetWidth = document.getElementById(holder).offsetHeight
		showDialog(document.getElementById(source).innerHTML,'position=absolute,closeButton=no,closeOnBodyClick=yes,srcElement=CreateNew_PH,left=' + (reqX-document.body.scrollLeft) + ',top=' + (reqY+ offsetWidth-document.body.scrollTop));
}*/

function showscanlist(ele) {
	var mainanchor = jQuery(ele);
	mainanchor.prop('class','scan-act');  // no i18n
    var menulist = mainanchor.next();
	//console.log(menulist.id);
    menulist.show();
	jQuery('.head_comp').mouseleave(function(){
		menulist.hide();
		mainanchor.removeAttr('class'); // no i18n
	})
}


function showMenuAsDialogForDropLinks1(holder, source) {
	document.onmousemove = capturePos;

	var reqX = findPosX(document.getElementById(holder));
	var reqY = findPosY(document.getElementById(holder));
	var offsetHeight = document.getElementById(holder).offsetHeight;
	var offsetWidth = document.getElementById(holder).offsetWidth;

	var leftX = 0;

	if( document.getElementById('tablemenus') != undefined )
	{
		if( document.getElementById('tablemenus').width != undefined )
		{
			leftX = document.getElementById('tablemenus').width;
		}
	}
	if( leftX == 0 )
	{
		showDialog(document.getElementById(source).innerHTML,'position=absolute,closeButton=no,left=' + (reqX-document.body.scrollLeft) + ',top=' + (reqY+offsetHeight-document.body.scrollTop));//No I18N
	}
	else
	{
		showDialog(document.getElementById(source).innerHTML,'position=absolute,closeButton=no,left=' + (reqX + offsetWidth - document.body.scrollLeft - leftX) + ',top=' + (reqY+ offsetHeight-document.body.scrollTop));//No I18N
	}
	//setTimeout("closeMenusDialog('" + source + "')", 1000);//No I18N
}



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

//	alert("xposition "+xposition+" yposition "+yposition);

	var dialogElement = document.getElementById("_DIALOG_LAYER");
	var reqX = findPosX(dialogElement);
	var reqY = findPosY(dialogElement);
	var offsetHeight = dialogElement.offsetHeight;
	var offsetWidth = dialogElement.offsetWidth;
	// the below check is done without proper understanding, just done on a trial and error basis.
	if (window.ActiveXObject)
	{
		reqY = reqY - document.body.scrollTop;
	}	

	var reqEndX = reqX + offsetWidth;
	var reqEndY = reqY + offsetHeight;

	//alert("reqX "+dialogElement.style.left+" reqY "+dialogElement.style.top+ " reqEndX "+reqEndX+" reqEndY "+reqEndY);	

	if(xposition < reqEndX && xposition > reqX && yposition < reqEndY && yposition > (reqY-20)) {
	//	alert("Still In");
		setTimeout("closeMenusDialog('" + source + "')", 1000);
	}
	else {
	//	alert("Out of the menu");
		closeDialog();
	}
	
}


var xpositionForQuickLink,ypositionForQuickLink;

function capturePosForQuickLink(eForQuickLink) {
	if (window.ActiveXObject)
	{
		xpositionForQuickLink = window.event.clientX;
		ypositionForQuickLink = window.event.clientY;
	}	
	else
	{
		xpositionForQuickLink = eForQuickLink.pageX;	
		ypositionForQuickLink = eForQuickLink.pageY;	
	}
}



function closeMenusDialogForQuickLink(source)
{

	//alert("xposition "+xpositionForQuickLink+" yposition "+ypositionForQuickLink);

	var dialogElement = document.getElementById("_DIALOG_LAYER");
	
	/* This is done on trial and error basis - Need to analyze the same later */
	var reqX = findPosX(dialogElement) + 305;
	var reqY = findPosY(dialogElement) - 20;
	var offsetHeight = dialogElement.offsetHeight - 10 ;
	var offsetWidth = dialogElement.offsetWidth - 325 ;
	
	//alert("offsetHeight" + offsetHeight + " offsetWidth" + offsetWidth);
	//alert(" Src : " + dialogElement.innerHTML);
	
	// the below check is done without proper understanding, just done on a trial and error basis.
	if (window.ActiveXObject)
	{
		//reqY = reqY - document.body.scrollTop;
	}	

	var reqEndX = reqX + offsetWidth;
	var reqEndY = reqY + offsetHeight;

	//alert("xpositionForQuickLink "+xpositionForQuickLink+" ypositionForQuickLink "+ypositionForQuickLink);	
	//alert("reqX "+reqX+" reqY "+reqY+ " reqEndX "+reqEndX+" reqEndY "+reqEndY);	

	if(xpositionForQuickLink < reqEndX && xpositionForQuickLink > reqX && ypositionForQuickLink < reqEndY && ypositionForQuickLink > (reqY-20)) 
	{
		//	alert("Still In");
		setTimeout("closeMenusDialogForQuickLink('" + source + "')", 1000);
	}
	else 
	{
		//	alert("Out of the menu");
		closeDialog();
	}
	
}








</script> <script>
if(window.jQuery != null) {	
				jQuery(document).ready(
					function()
					{
						jQuery('#QuickLinksMenu').MultiDropMenu({animSpeed: 500});
						jQuery('#CreateNewMenu').MultiDropMenu({animSpeed: 500});
					}
				);
			}			
</script> <!-- Header ends here -->
							</td>
						<tr>
							<td>
								<table border="0" cellpadding="0" cellspacing="0" width="100%">
									<tbody>
										<tr>
											<!--  Left Panel Start -->
											<td align="center" valign="top" class="Lefttd">

												<table id="Left-Section" cellspacing="0" cellpadding="0"
													border="0"
													style="height: 100%; width: 100%; display: block;"
													class='floatRight'>
													<tr>
														<td colspan="3" class="lnavtm alignRight"><img
															class="lnavtr" src="images/spacer.gif"></td>
													</tr>
													<tr>
														<td valign="top"><img src="images/spacer.gif"
															width="10" height=506 border="0" /></td>
														<td valign='top' height="100%"
															class='content pad10pxrtlft alignLeft'><br> <SCRIPT
																src="/scripts/common.js?6100" type="text/javascript"></SCRIPT>
															<script>
var css_browser_selector = function() {
	var ua=navigator.userAgent.toLowerCase();
	var is=function(t){ return ua.indexOf(t) != -1; };
	var h=document.getElementsByTagName('html')[0];
	var b=(!(/opera|webtv/i.test(ua))&&/msie (\d)/.test(ua))?('ie ie'+RegExp.$1):is('gecko/')? 'gecko':is('opera/9')?'opera opera9':/opera (\d)/.test(ua)?'opera opera'+RegExp.$1:is('konqueror')?'konqueror':is('applewebkit/')?'webkit safari':is('mozilla/')?'gecko':'';
	var os=(is('x11')||is('linux'))?' linux':is('mac')?' mac':is('win')?' win':'';
	var c=b+os+' js';
	h.className += h.className?' '+c:c;
}();
//this method is for remote server case
//function ShowAndHideRemote(divId1,divId2)
//{
//	alert("HI"+divId1+divId1);
//}
	
</script>

															<table class="LeftTable" width='100%' border="0"
																cellspacing="0" cellpadding="0">
																<tr class="DashboardTableColor">
																	<td width="100%" class="leftnavstrip"><a
																		href="javascript:void(0)" class="leftnavheading"><img
																			src="images/spacer.gif" class="leftnavitems_expand"
																			border="0" id="bulletResourcelinks">资产</a></td>
																</tr>
																<tr>
																	<td valign='top' class='RightItemBorder'>
																		<div id="Resourcelinks">
																			<div id="subHeader" class="accordionTabTitleBar">
																				<a id="ITAssets" href="javascript:void(0)" onClick="">工作站</a>
																			</div>
																			<div id="subHeader" class="accordionTabTitleBar">
																				<a href="javascript:void(0)" onClick="">服务器</a>
																			</div>
																			<div id="subHeader" class="accordionTabTitleBar">
																				<a href="javascript:void(0)" onClick="">网络设备</a>
																			</div>
																			<div id="subHeader" class="accordionTabTitleBar">
																				<a href="javascript:void(0)" onClick="">网络链路</a>
																			</div>
																			<div id="subHeader" class="accordionTabTitleBar">
																				<a href="javascript:void(0)" onClick="">安全设备</a>
																			</div>
																			<div id="subHeader" class="accordionTabTitleBar">
																				<a href="javascript:void(0)" onClick="">存储</a>
																			</div>
																			<div id="subHeader" class="accordionTabTitleBar">
																				<a href="javascript:void(0)" onClick="">操作系统</a>
																			</div>
																			<div id="subHeader" class="accordionTabTitleBar">
																				<a href="javascript:void(0)" onClick="">中间件</a>
																			</div>
																			<div id="subHeader" class="accordionTabTitleBar">
																				<a href="javascript:void(0)" onClick="">数据库</a>
																			</div>
																			<div id="subHeader" class="accordionTabTitleBar">
																				<a href="javascript:void(0)" onClick="">应用软件</a>
																			</div>
																		</div>

																	</td>
																</tr>
															</table> <br>
															<table width="210" border="0" cellspacing="0"
																cellpadding="0">
																<tr>
																	<td>
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0">
																			<tr>
																				<td colspan="2"><b class="ptop"> <b
																						class="cb1 DashboardTableColor"> </b> <b
																						class="cb2 DashboardTableColor"> </b> <b
																						class="cb3 DashboardTableColor"> </b> <b
																						class="cb4 DashboardTableColor"> </b>
																				</b></td>
																			</tr>
																			<tr class="DashboardTableColor">

																				<td class="leftnavstrip"><a
																					href="javascript:void(0)" class="leftnavheading"><img
																						src="images/spacer.gif"
																						class="leftnavitems_expand" hspace="1" vspace="0"
																						border="0" id="bulletrecentitems">可用性巡检 </a></td>

																			</tr>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td valign="top" class="RightItemBorder">


																		<div id="recentitems">
																			<table width="95%" border="0" cellspacing="0"
																				cellpadding="4">

																				<tr>
																					<td width="8" class="RIbottomBorder" nowrap
																						class="fontBlack"><img
																						src="images/ri_asset_icon.gif"
																						title="pa01-nb-think.workgroup" width="16"
																						height="16" hspace="0" vspace="0"
																						id='recentItemImg'></td>
																					<td class="RIbottomBorder"><a
																						href="ViewWSDetails.do?wsId=5409"
																						class="FontBlackLink"
																						title="pa01-nb-think.workgroup"
																						style="width: 100%">连通性检测</a></td>
																				</tr>

																				<tr>
																					<td width="8" class="RIbottomBorder" nowrap
																						class="fontBlack"><img
																						src="images/ri_asset_icon.gif"
																						title="acc12-nb-think.workgroup" width="16"
																						height="16" hspace="0" vspace="0"
																						id='recentItemImg'></td>
																					<td class="RIbottomBorder"><a
																						href="ViewWSDetails.do?wsId=5408"
																						class="FontBlackLink"
																						title="acc12-nb-think.workgroup"
																						style="width: 100%">数据接口检测</a></td>
																				</tr>

																				<tr>
																					<td width="8" class="RIbottomBorder" nowrap
																						class="fontBlack"><img
																						src="images/ri_asset_icon.gif"
																						title="ca06-pc.workgroup" width="16" height="16"
																						hspace="0" vspace="0" id='recentItemImg'></td>
																					<td class="RIbottomBorder"><a
																						href="ViewWSDetails.do?wsId=5407"
																						class="FontBlackLink" title="ca06-pc.workgroup"
																						style="width: 100%">可用性检测</a></td>
																				</tr>

																				<tr>
																					<td width="8" class="RIbottomBorder" nowrap
																						class="fontBlack"><img
																						src="images/ri_asset_icon.gif"
																						title="Hp Computers" width="16" height="16"
																						hspace="0" vspace="0" id='recentItemImg'></td>
																					<td class="RIbottomBorder"><a
																						href="ViewWSDetails.do?wsId=3301"
																						class="FontBlackLink" title="Hp Computers"
																						style="width: 100%">可用性分析</a></td>
																				</tr>
																			</table>
																		</div>

																	</td>
																</tr>
															</table> <br></td>
														<!--script language="javascript">
    matchHeight=function(){
         var divs,contDivs,maxHeight,divHeight,d;
         // get all <div> elements in the document
         divs=document.getElementsByTagName('td');
         contDivs=[];
         // initialize maximum height value
         maxHeight=0;
         // iterate over all <div> elements in the document
         for(var i=0;i<divs.length;i++){
              // make collection with <div> elements with class attribute 'container'
              if(/\bdivHolder\b/.test(divs[i].className)){
                    d=divs[i];
                    contDivs[contDivs.length]=d;
                    // determine height for <div> element
                    if(d.offsetHeight){
                         divHeight=d.offsetHeight;
                    }
                    else if(d.style.pixelHeight){
                         divHeight=d.style.pixelHeight;
                    }
                    // calculate maximum height
                    maxHeight=Math.max(maxHeight,divHeight);
              }
         }
         // assign maximum height value to all of container <div> elements
         for(var i=0;i<contDivs.length;i++){
              contDivs[i].style.height=maxHeight;
         }
    }
    // execute function when page loads
    window.onload=function(){
         if(document.getElementsByTagName){

              matchHeight();
         }
    }


</script-->

														<td class="divHolder centerclosebg" id="divHolder"
															valign="top"><span style="height: 450px;"><img
																src="images/spacer.gif" width="10"
																style='min-height: 450px; height: 450px;' border="0"
																id="LeftIndicatorClosed" /></span></td>
													</tr>
													<tr height="13">
														<td colspan="3" class="lnavbm alignRight"><img
															class="lnavbr" src="images/spacer.gif"></td>
													</tr>
												</table>
												<table cellspacing="0" cellpadding="0" border="0"
													height="100%" width="20" id="LeftOpen"
													style="display: none;">
													<tr height="13">
														<td class="lnavtm alignRight"><img class="lnavhtr"
															src="images/spacer.gif"></td>
													</tr>
													<tr>
														<td valign="top" class="centerclosebg"><a
															href="javascript:showLeftNav('Open')"
															class="leftnavshowarrow" style="height: 450px;"><img
																src="images/spacer.gif" width="10" border="0"
																height="450px" id="LeftIndicator"
																style='min-height: 450px; height: 450px;'
																class="leftnavshowarrow" /></a></td>
													</tr>
													<tr height="13">
														<td class="lnavbm alignRight"><img class="lnavhbr"
															src="images/spacer.gif"></td>
													</tr>
												</table>

											</td>
											<!--  Left Panel End -->
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
<area shape="poly" coords="130,43,154,40,180,39,180,71,180,71" title="In Use = 8" alt="" href="/AssetListView.do?Type=Resources&amp;isFirst=true&amp;AssetType=In Use">
<area shape="poly" coords="180,39,215,41,244,47,266,56,273,61,277,66,277,72,275,78,269,83,261,88,237,96,205,101,169,102,136,99,108,92,97,88,89,83,84,77,81,71,83,66,87,60,94,55,103,51,130,43,180,71,180,71" title="In Store = 88" alt="" href="/AssetListView.do?Type=Resources&amp;isFirst=true&amp;AssetType=In Store">
</map>
                                                <img src="images/ResourcesByState_386_1399895100652.png" usemap="#ResourcesByStateChart" border="0">
                                           
                                                </div>

                                                	
									<div class="doubleL">
								<b style="display:none" class="cIn"><b class="cb4 graph"></b><b class="cb3 graph">
							</b><b class="cb2 graph"></b><b class="cb1"></b></b>	
						
							<div class="inf">
							<table cellpadding="0" cellspacing="0">
							<tbody><tr>
								<td>
								

									<b class="field-color-indicator"><em class="em" style="background:#a6ce39;"></em><i>In Use = 8</i></b>									


									<b class="field-color-indicator"><em class="em" style="background:#7d9cca;"></em><i>In Store = 88</i></b>									

									</td>
													</tr>
													</tbody></table>
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
																																id="More3_PH" class="moredrop">不同阶段的运维事件</a>
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
																																id="More4_PH" class="moredrop">不同要求的审计事件</a>
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
																																id="More2_PH" class="moredrop">不同级别的安全事情</a>
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
									</tbody>
								</table>
							</td>
						</tr>
						</tbody>
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
