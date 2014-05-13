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
											<td width="99%" valign="top" id="Right-Section">

			  			<!-- display block starts here -->
	<table width="100%" cellspacing="0" cellpadding="0" border="0">
                <tbody><tr> 
                <td valign="top" height="0"> 
                  <table width="100%" cellspacing="0" cellpadding="0" border="0">
                    <tbody><tr> 
                      <td class="trailBar"><a class="trailBar" href="InventoryHome.do">资产</a>&nbsp;&gt;
                        <span class="trailBar">Resources</span><br>
                        </td>
			<td valign="middle" class="fontBlackBold alignright">[ <a title="点击从CSV文件导入资产" class="fontBlackBold" href="/ImportCIs.do?from=assetImport&amp;ciTypeId=21">从CSV文件导入</a> ]</td>
                            
                    </tr>
                  </tbody></table></td>
              </tr>

        <tr>
          <td valign="top"><img width="1" height="5" src="images/spacer.gif"></td>
        </tr>

				  <!-- For success or error message in client -->
	  <tr align="center"><td>
			  <div id="oper_stat"><div id="message"><table>



 
<!--script language="javascript" type="text/javascript" src="/scripts/common.js?6100"></script-->
<!-- For success message - start -->

<!--/logic:present-->
<!-- For success message - end -->

<!-- For error message - start -->

<!--/logic:present-->
<!-- For error message - end -->

<!-- For info message - start -->

<!--/logic:present-->
<!-- For info message - end -->

<!-- For simple success message - start -->

<!--/logic:present-->
<!-- For simple success message - end -->

<!-- For simple success message - start -->

<!--/logic:present-->
<!-- For simple success message - end -->

<!-- For simple success message - start -->


<!-- For info message - start -->

<!--/logic:present-->
<!-- For info message - end -->



</table></div></div>
        </td></tr>


                    <tr> 
                      <td valign="top">
                      
                        <table width="100%" cellspacing="0" cellpadding="0" border="0" class="whitebgBorder1">
<tbody><tr>
            <td valign="middle" class="listViewTableHeader tableHead"><span class="tableHeadtxt">
				
               Resources
               
            </span></td>
          </tr>
                          
                          <tr> 
                            <td valign="top"> 
                              <table width="100%" cellspacing="0" cellpadding="0" border="0">
								<tbody><tr>
                                	<td class="wo-view-bg wo-view-bg-sep-btm">
                                    <form action="/AssetListView.do" method="post" name="AssetListView">
                                        <table cellspacing="0" cellpadding="0" border="0">
                                                                                                    <tbody><tr> 
                                                                                                      <td width="10" nowrap="nowrap"></td>
                                                                                                      <td nowrap="" class="fontBlackBold"> 
                                                                                                        过滤器&nbsp;</td>
                                                        
                                                                                                      <td valign="middle" nowrap="" class="fontBlack alignright"> 
                                                                                                        显示&nbsp;:&nbsp;</td>
                                                                                                      <td valign="middle" nowrap="" class="fontBlack"> 
                                                                                  
                                                                                                    <input type="hidden" value="Resources" name="type">
                                                                                                
                                                                                                          <input type="hidden" value="AssetView" name="viewName">
                                                                                                          <input type="hidden" id="viewName" value="AssetView">
                                                                                                              
                                                                                                                        <select class="formstyle" onchange="this.form.submit()" name="assetType"><option value="0">全部</option>
                                                                
                                                                        
                                                                
                                                                
                                                                
                                                                    <option value="1">未指派的</option>
                                                                
                                                                        
                                                                
                                                                
                                                                
                                                                    <option value="2">不在合同中的</option>
                                                                
                                                                        
                                                                
                                                                
                                                                
                                                                    <option value="3">租借的资产</option>
                                                                
                                                                        
                                                                
                                                                
                                                                
                                                                    <option value="4">在库的资产</option>
                                                                
                                                                        
                                                                
                                                                
                                                                
                                                                    <option selected="selected" value="5">在用的资产</option>
                                                                
                                                                        
                                                                
                                                                
                                                                
                                                                    <option value="6">在修的资产</option>
                                                                
                                                                        
                                                                
                                                                
                                                                
                                                                    <option value="7">期满的资产</option>
                                                                
                                                                        
                                                                
                                                                
                                                                
                                                                    <option value="8">处置的资产</option>
                                                                
                                                                        
                                                            
                                                                <optgroup style="background-color:#E2E9F6;font-weight:bold;" label="折旧"></optgroup>
                                                                            <option title="计算的资产" value="depreciation_calculated">计算的资产</option>
                                                                             <option title="未计算的资产" value="depreciation_notcalculated">未计算的资产</option></select>
                                                                             
                                                                             <script>
                                                                                     document.AssetListView.assetType.value='5';
                                                                             </script>
                                                                     
                                                                
                                                                                                       </td>
                                                        <td width="10" nowrap="nowrap"></td>
                                                        
                                                                                                      <td valign="middle" nowrap="" class="fontBlack"> 
                                                                                                                        <select class="formstyle" onchange="this.form.submit()" name="componentType"><option selected="selected" value="0">--AllResources--</option>
                                                                        
                                                                
                                                                
                                                                <option value="602">6824KAL</option>
                                                                        
                                                                
                                                                
                                                                <option value="904">6824LAE</option>
                                                                        
                                                                
                                                                
                                                                <option value="2754">Adobe Acrobat 10 Pro</option>
                                                                        
                                                                
                                                                
                                                                <option value="2755">Adobe Acrobat 11 Pro</option>
                                                                        
                                                                
                                                                
                                                                <option value="2729">Adobe Acrobat 6 Pro</option>
                                                                        
                                                                
                                                                
                                                                <option value="2730">Adobe Acrobat 7 Pro</option>
                                                                        
                                                                
                                                                
                                                                <option value="2731">Adobe Acrobat 8 Pro</option>
                                                                        
                                                                
                                                                
                                                                <option value="2753">Adobe Acrobat 9 Pro</option>
                                                                        
                                                                
                                                                
                                                                <option value="2743">Adobe Acrobat Connect CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2710">Adobe Acrobat Professional CS2</option>
                                                                        
                                                                
                                                                
                                                                <option value="2737">Adobe After Effects CS3 Professional</option>
                                                                        
                                                                
                                                                
                                                                <option value="2761">Adobe After Effects CS4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2715">Adobe After Effects Professional CSPS</option>
                                                                        
                                                                
                                                                
                                                                <option value="2723">Adobe After Effects Standard CSPS</option>
                                                                        
                                                                
                                                                
                                                                <option value="917">Adobe AIR  1</option>
                                                                        
                                                                
                                                                
                                                                <option value="2716">Adobe Audition CSPS</option>
                                                                        
                                                                
                                                                
                                                                <option value="2701">Adobe Bridge CS2</option>
                                                                        
                                                                
                                                                
                                                                <option value="2740">Adobe Bridge CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2765">Adobe Bridge CS4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2717">Adobe Bridge CSPS</option>
                                                                        
                                                                
                                                                
                                                                <option value="2769">Adobe CAL Software</option>
                                                                        
                                                                
                                                                
                                                                <option value="2735">Adobe Contribute CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2759">Adobe Contribute CS4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2712">Adobe Creative Suite 1</option>
                                                                        
                                                                
                                                                
                                                                <option value="2713">Adobe Creative Suite 2</option>
                                                                        
                                                                
                                                                
                                                                <option value="2724">Adobe Creative Suite 3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2748">Adobe Creative Suite 4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2714">Adobe Creative Suite Production Studio</option>
                                                                        
                                                                
                                                                
                                                                <option value="2742">Adobe Device Central CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2766">Adobe Device Central CS4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2711">Adobe Dreamweaver CS2</option>
                                                                        
                                                                
                                                                
                                                                <option value="2733">Adobe Dreamweaver CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2757">Adobe Dreamweaver CS4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2745">Adobe Dynamic Link CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2768">Adobe Dynamic Link CS4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2722">Adobe Dynamic Link CSPS</option>
                                                                        
                                                                
                                                                
                                                                <option value="2739">Adobe Encore CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2764">Adobe Encore CS4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2718">Adobe Encore DVD CSPS</option>
                                                                        
                                                                
                                                                
                                                                <option value="2734">Adobe Fireworks CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2758">Adobe Fireworks CS4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2732">Adobe Flash CS3 Professional</option>
                                                                        
                                                                
                                                                
                                                                <option value="2756">Adobe Flash CS4 Professional</option>
                                                                        
                                                                
                                                                
                                                                <option value="2702">Adobe Illustrator CS1</option>
                                                                        
                                                                
                                                                
                                                                <option value="2703">Adobe Illustrator CS2</option>
                                                                        
                                                                
                                                                
                                                                <option value="2727">Adobe Illustrator CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2751">Adobe Illustrator CS4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2721">Adobe Illustrator CSPS</option>
                                                                        
                                                                
                                                                
                                                                <option value="2704">Adobe InDesign CS1</option>
                                                                        
                                                                
                                                                
                                                                <option value="2705">Adobe InDesign CS2</option>
                                                                        
                                                                
                                                                
                                                                <option value="2728">Adobe InDesign CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2752">Adobe InDesign CS4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2746">Adobe OnLocation CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2763">Adobe OnLocation CS4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2706">Adobe Photoshop CS1</option>
                                                                        
                                                                
                                                                
                                                                <option value="2707">Adobe Photoshop CS2</option>
                                                                        
                                                                
                                                                
                                                                <option value="2725">Adobe Photoshop CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2726">Adobe Photoshop CS3 Extended</option>
                                                                        
                                                                
                                                                
                                                                <option value="2749">Adobe Photoshop CS4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2750">Adobe Photoshop CS4 Extended</option>
                                                                        
                                                                
                                                                
                                                                <option value="2720">Adobe Photoshop CSPS</option>
                                                                        
                                                                
                                                                
                                                                <option value="2738">Adobe Premiere Pro CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2762">Adobe Premiere Pro CS4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2719">Adobe Premiere Pro CSPS</option>
                                                                        
                                                                
                                                                
                                                                <option value="2736">Adobe Soundbooth CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2760">Adobe Soundbooth CS4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2744">Adobe Stock Photos CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2747">Adobe Ultra CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2708">Adobe Version Cue CS1</option>
                                                                        
                                                                
                                                                
                                                                <option value="2709">Adobe Version Cue CS2</option>
                                                                        
                                                                
                                                                
                                                                <option value="2741">Adobe Version Cue CS3</option>
                                                                        
                                                                
                                                                
                                                                <option value="2767">Adobe Version Cue CS4</option>
                                                                        
                                                                
                                                                
                                                                <option value="2102">asd</option>
                                                                        
                                                                
                                                                
                                                                <option value="909">Cisco 2811</option>
                                                                        
                                                                
                                                                
                                                                <option value="2401">clim1</option>
                                                                        
                                                                
                                                                
                                                                <option value="1201">DbVisualizer 6.0.11</option>
                                                                        
                                                                
                                                                
                                                                <option value="912">Dell Hg Server 222</option>
                                                                        
                                                                
                                                                
                                                                <option value="906">DSDT</option>
                                                                        
                                                                
                                                                
                                                                <option value="1501">gggz%hhh</option>
                                                                        
                                                                
                                                                
                                                                <option value="908">HP ProCurve Switch 2524</option>
                                                                        
                                                                
                                                                
                                                                <option value="911">HP Projector</option>
                                                                        
                                                                
                                                                
                                                                <option value="907">HP-Printer</option>
                                                                        
                                                                
                                                                
                                                                <option value="2101">isp</option>
                                                                        
                                                                
                                                                
                                                                <option value="901">Latitude D400</option>
                                                                        
                                                                
                                                                
                                                                <option value="902">Latitude D610</option>
                                                                        
                                                                
                                                                
                                                                <option value="301">Latitude D620</option>
                                                                        
                                                                
                                                                
                                                                <option value="910">Latitude D620 Laptop</option>
                                                                        
                                                                
                                                                
                                                                <option value="2">Latitude D630C</option>
                                                                        
                                                                
                                                                
                                                                <option value="1801">ManageEngine Desktop Central 7 - Agent</option>
                                                                        
                                                                
                                                                
                                                                <option value="913">Microsoft .NET Compact Framework 1.0 SP3 Developer</option>
                                                                        
                                                                
                                                                
                                                                <option value="914">Microsoft Office Basic 2007</option>
                                                                        
                                                                
                                                                
                                                                <option value="2103">microtik 750</option>
                                                                        
                                                                
                                                                
                                                                <option value="916">Nortel Switch 123</option>
                                                                        
                                                                
                                                                
                                                                <option value="903">OptiPlex 755</option>
                                                                        
                                                                
                                                                
                                                                <option value="601">OptiPlex 780</option>
                                                                        
                                                                
                                                                
                                                                <option value="302">OptiPlex GX260</option>
                                                                        
                                                                
                                                                
                                                                <option value="915">TightVNC 1.3.10</option>
                                                                        
                                                                
                                                                
                                                                <option value="1">Unknown Server</option>
                                                                        
                                                                
                                                                
                                                                <option value="905">Unknown Workstation</option></select>
                                                                                                       </td>
                                             
                                                        
                                                                                                    </tr>
                                                                                                  </tbody></table>
                                                                                               </form>
                                    </td>
                                </tr>
 
										<tr>
											<td valign="top">
											<!-- Actions Row start -->
												<form onsubmit="return updateFormValues('AssetView', this)" action="/AssetListViewAction.do" method="post" name="AssetListViewAction">
												<table width="100%" cellspacing="0" cellpadding="0">
												<tbody><tr>
													<td valign="top">
														<table width="100%" cellspacing="0" cellpadding="0">
														<tbody><tr> 
										  <td width="100%" height="34" class="wo-view-bg wo-view-bg-sep-top">   
										  
										  <table cellspacing="0" cellpadding="0">
											  
									  
													<input type="hidden" value="Resources" name="type">
												
						 
							
										  <tbody><tr>
                                           <td width="10" nowrap="nowrap"></td>
											<td valign="middle" nowrap="" align="center" style="background:none" class="fontBlack menubar2">
			
						<ul class="actionscombo" id="nav-actions">																<li class="first">																			<a class="parent" href="javascript:void(0);">操作</a>
																											<ul style="display: none;">
																												<li>
						
																												<a title="添加资产到组中" class="FontBlackLink" href="javascript:confirmAddToGroup(document.AssetListViewAction)">添加到组</a>
																												<a title="配置折旧" class="FontBlackLink" href="javascript:addDepreciation(document.AssetListViewAction)">配置折旧</a>   
		
				
		
										</li>
																															</ul>
																								</li>
																						</ul>
																			 
											
															</td>
                                                            <td width="10" nowrap="nowrap"></td>
														 
													  <td align="center">
														  
															</td>
		
															
		
        <td width="10" nowrap="nowrap"></td>
        <td valign="middle" class="fontBlack">
		<input type="button" title="添加资产" class="formStylebutton" style="width:auto;height:19px" onclick="showURLInDialog('/AddCI.do?mode=showAssetDialog&amp;filter=allassetproducts','closeButton=no,position=absolute,top=100,height=500,overflow=visible,left=350,modal=yes')" value="新建" name="newAsset">
                                                            </td>
								
                                                                 <td width="10" nowrap="nowrap"></td>
        <td valign="middle" class="fontBlack">
																	 <input type="button" title="删除所选资产" class="formStylebutton" style="width:auto;height:19px" onclick="javascript:disableForDemo()" value="删除" name="delete">
                                                                    </td>
		
																
														 
									 
														
														<td width="10" nowrap="nowrap"></td>
                                                        
							<td id="AssetView_NAV" class="alignright">


<script type="text/javascript" src="/scripts/ajax.js"></script>

	
		<table cellspacing="0" cellpadding="0">
	<tbody><tr>
		
		<td nowrap="" align="left" class="fontBlack">&nbsp;<span id="startPageIndex">1</span> - <span id="endPageIndex">8</span> /&nbsp;<span id="totalRecordsCount">8</span>&nbsp;</td>
		 
		<td nowrap="" class="fontBlack"><span class="seph">|</span>  
			
					<a href="javascript:void(0);" class="ui-listnavh"><img hspace="2" border="0" align="ABSMIDDLE" title="首先" alt="首先" class="pagenav-first-off" src="images/spacer.gif"></a>
					<a href="javascript:void(0);" class="ui-listnav-before1-dis"><img hspace="2" border="0" align="ABSMIDDLE" title="向前" alt="向前" class="pagenav-previous-off" src="images/spacer.gif"></a>
				
					<a class="ui-listnav-after1-dis" href="javascript:void(0);"><img hspace="2" border="0" align="ABSMIDDLE" title="向后" alt="向后" class="pagenav-next-off" src="images/spacer.gif"></a>
					<a class="ui-listnavh" href="javascript:void(0);"><img hspace="2" border="0" align="ABSMIDDLE" title="最后" alt="最后" class="pagenav-lastpage-off" src="images/spacer.gif"></a>
				 <span class="seph">|</span> 
		</td>
		
			<td nowrap="" class="fontBlack">&nbsp;

			 
			<span class="fontGray57">
				每页 	
			</span>
 
				<select style="width:50" class="formStyle" onchange="return showRangeForLength('AssetView', this.value)" name="pageLength">
            	<option value="25"> 25</option><option value="50"> 50</option><option value="100"> 100</option><option value="150"> 150</option><option value="200"> 200</option><option value="300"> 300</option><option value="500"> 500</option><option selected="" value="1000"> 1000</option>
				</select>
			   
           
           	
			</td>
            <td nowrap="nowrap">
            	<span class="ui-countfilter-label">
					&nbsp;条
                </span>
            </td>
			
	</tr>
</tbody></table>
		



</td>
										  </tr>
										  
										  </tbody></table>
										  </td>
										 </tr>
														</tbody></table>
													</td>
												</tr>
												<tr>
													<td valign="top">
														
<link type="text/css" rel="stylesheet" href="/themes/sd/styles/style.css">
<script type="text/javascript" src="/framework/javascript/IncludeJS.js"></script>
<script type="text/javascript">includeMainScripts('');</script>
<script type="text/javascript">_GEN_ISUSER_CREDENTIAL_PRESENT=true</script>
<title>ManageEngine AssetExplorer</title>



<iframe width="0" scrolling="no" height="0" frameborder="0" style="position:absolute" id="_CUSTOMALERTFRAME" name="_CUSTOMALERTFRAME" src="/framework/html/blank.html" class="hide"></iframe>

<iframe onload="parent.handleResponse()" name="AssetView_RESPONSEFRAME" src="/framework/html/blank.html" class="responseframe"></iframe>
<script language="Javascript">parent.initializeMainView(window,"AssetView","","/themes/sd");</script>
<div id="AssetView_CT" class="uicomponent"><script>V34=parent.createView(window,"AssetView","AssetView","ciTypeId=null&amp;fromTab=assetTab&amp;",null,null,"34","1399982217546");parent.V34=V34;</script>


<script>document.onclick = parent.hideCustomizationMenu;</script>






<div class="hide" id="AssetView_Navig">


<script type="text/javascript" src="/scripts/ajax.js"></script>

	
		<table cellspacing="0" cellpadding="0">
	<tbody><tr>
		
		<td nowrap="" align="left" class="fontBlack">&nbsp;<span id="startPageIndex">1</span> - <span id="endPageIndex">8</span> /&nbsp;<span id="totalRecordsCount">8</span>&nbsp;</td>
		 
		<td nowrap="" class="fontBlack"><span class="seph">|</span>  
			
					<a href="javascript:void(0);" class="ui-listnavh"><img hspace="2" border="0" align="ABSMIDDLE" title="首先" alt="首先" class="pagenav-first-off" src="images/spacer.gif"></a>
					<a href="javascript:void(0);" class="ui-listnav-before1-dis"><img hspace="2" border="0" align="ABSMIDDLE" title="向前" alt="向前" class="pagenav-previous-off" src="images/spacer.gif"></a>
				
					<a class="ui-listnav-after1-dis" href="javascript:void(0);"><img hspace="2" border="0" align="ABSMIDDLE" title="向后" alt="向后" class="pagenav-next-off" src="images/spacer.gif"></a>
					<a class="ui-listnavh" href="javascript:void(0);"><img hspace="2" border="0" align="ABSMIDDLE" title="最后" alt="最后" class="pagenav-lastpage-off" src="images/spacer.gif"></a>
				 <span class="seph">|</span> 
		</td>
		
			<td nowrap="" class="fontBlack">&nbsp;

			 
			<span class="fontGray57">
				每页 	
			</span>
 
				<select style="width:50" class="formStyle" onchange="return showRangeForLength('AssetView', this.value)" name="pageLength">
            	<option value="25"> 25</option><option value="50"> 50</option><option value="100"> 100</option><option value="150"> 150</option><option value="200"> 200</option><option value="300"> 300</option><option value="500"> 500</option><option selected="" value="1000"> 1000</option>
				</select>
			   
           
           	
			</td>
            <td nowrap="nowrap">
            	<span class="ui-countfilter-label">
					&nbsp;条
                </span>
            </td>
			
	</tr>
</tbody></table>
		



</div>
	<input type="submit" class="hide" value="Hide Me" name="Submit"><table cellspacing="1" cellpadding="0" border="0" align="center" class="tableComponent" id="AssetView_TABLE">
		
      		


	
		
	

	
		
	

	
		
	

	
		
	

	
		
	

	
		
	

	
		
	

	
		
	

	
		
	

	
		
	

	
		
	

	
		
	


<tbody><tr height="23" id="34_MainRow"><th class="tableHeader" id="AssetView_CheckBox"><input type="checkbox" ;="" onclick="selectAll(this.form,'checkbox')" name="checkbox23"></th><th class="tableHeader" id="AssetView_VIEWRELATIONSHIPS"><img width="16" height="1" src="images/spacer.gif"></th><th class="tableHeader" id="AssetView_CINAME"><a href="javascript:sortData('34', 'CINAME')">名称</a>&nbsp;&nbsp;<input type="button" onclick="return sortData('34', 'CINAME')" class="sortButtonASC"></th><th class="tableHeader" id="AssetView_TYPENAME"><a href="javascript:sortData('34', 'TYPENAME')">配置项类型</a>&nbsp;&nbsp;<input type="button" onclick="return sortData('34', 'TYPENAME')" class="sortButtonASC"></th><th class="tableHeader" id="AssetView_IsLeased"><a href="javascript:sortData('34', 'IsLeased')">是否租借</a>&nbsp;&nbsp;<input type="button" onclick="return sortData('34', 'IsLeased')" class="sortButtonASC"></th><th class="tableHeader" id="AssetView_LeaseEnd"><a href="javascript:sortData('34', 'LeaseEnd')">租借期限</a>&nbsp;&nbsp;<input type="button" onclick="return sortData('34', 'LeaseEnd')" class="sortButtonASC"></th><th class="tableHeader" id="AssetView_ProductName"><a href="javascript:sortData('34', 'ProductName')">产品</a>&nbsp;&nbsp;<input type="button" onclick="return sortData('34', 'ProductName')" class="sortButtonASC"></th><th class="tableHeader" id="AssetView_AssetState"><a href="javascript:sortData('34', 'AssetState')">资产状态</a>&nbsp;&nbsp;<input type="button" onclick="return sortData('34', 'AssetState')" class="sortButtonASC"></th><th class="tableHeader" id="AssetView_AssociatedTo"><a href="javascript:sortData('34', 'AssociatedTo')">关联到</a>&nbsp;&nbsp;<input type="button" onclick="return sortData('34', 'AssociatedTo')" class="sortButtonASC"></th><th class="tableHeader" id="AssetView_User"><a href="javascript:sortData('34', 'User')">用户</a>&nbsp;&nbsp;<input type="button" onclick="return sortData('34', 'User')" class="sortButtonASC"></th><th class="tableHeader" id="AssetView_Department"><a href="javascript:sortData('34', 'Department')">部门</a>&nbsp;&nbsp;<input type="button" onclick="return sortData('34', 'Department')" class="sortButtonASC"></th><th class="tableHeader" id="AssetView_AssetSerialNumber"><table width="100%" cellspacing="0" cellpadding="0" valign="top"><tbody><tr><td nowrap=""><a href="javascript:sortData('34', 'AssetSerialNumber')">序列号</a>&nbsp;&nbsp;<input type="button" onclick="return sortData('34', 'AssetSerialNumber')" class="sortButtonASC"></td><td width="5px" valign="top" nowrap="" align="right"><input type="button" onclick="return openSearch('34_SearchRow', this.form,34)" class="tableSearchButton" id="34_OS"><input type="button" onclick="return closeSearch('34_SearchRow', this.form,34)" class="hide" id="34_CS"></td><td width="5px" valign="top" nowrap="" align="right"><input type="button" onclick="invokeAction(CCListInline,'AssetView',null,'viewName=AssetView&amp;UNIQUEID=AssetView')" class="columnEditButton" id="AssetView_CCBtn"></td></tr></tbody></table></th></tr>
<tr class="searchRow hide" id="34_SearchRow"><th 'class="tableHeader" id="AssetView_CheckBox">&nbsp;</th><th 'class="tableHeader" id="AssetView_VIEWRELATIONSHIPS">&nbsp;</th><th 'class="tableHeader" id="AssetView_CINAME"><input type="text" id="CINAME" value="" name="CINAME" class="tableSpotSearch"></th><th 'class="tableHeader" id="AssetView_TYPENAME"><input type="text" id="TYPENAME" value="" name="TYPENAME" class="tableSpotSearch"></th><th 'class="tableHeader" id="AssetView_IsLeased">&nbsp;</th><th 'class="tableHeader" id="AssetView_LeaseEnd">&nbsp;</th><th 'class="tableHeader" id="AssetView_ProductName"><input type="text" id="ProductName" value="" name="ProductName" class="tableSpotSearch"></th><th 'class="tableHeader" id="AssetView_AssetState"><input type="text" id="AssetState" value="" name="AssetState" class="tableSpotSearch"></th><th 'class="tableHeader" id="AssetView_AssociatedTo"><input type="text" id="AssociatedTo" value="" name="AssociatedTo" class="tableSpotSearch"></th><th 'class="tableHeader" id="AssetView_User"><input type="text" id="User" value="" name="User" class="tableSpotSearch"></th><th 'class="tableHeader" id="AssetView_Department"><input type="text" id="Department" value="" name="Department" class="tableSpotSearch"></th><th 'class="tableHeader" id="AssetView_AssetSerialNumber"><table width="100%"><tbody><tr><td width="90%"><input type="text" id="AssetSerialNumber" value="" name="AssetSerialNumber" class="tableSpotSearch"></td><td align="right"><input type="submit" value="搜索" class="tableSearchGoButton" name="searchSubmit" title="搜索"></td></tr></tbody></table></th></tr>


		


	<tr onmouseout="styleSwap(this, 'normal', 'hover', 'rowHiliten');" onmouseover="styleSwap(this, 'hover', 'normal', 'rowHiliten');" class="hover">
		
			
			  
			  <td class="headercheckbox evenRow">

<input type="checkbox" value="904" name="checkbox">&nbsp;
</td>
			
		
			
			  
			  <td class="width18 evenRow">

<img align="absmiddle" src="images/cmdb-rship-icon.gif" title="查看关系图" onclick="javascript:showMap('/RelationshipMap.do?ciId=904','RelationshipMap_WS');" style="cursor:pointer">
</td>
			
		
			
			  
			  <td class=" evenRow">

<a target="_self" href="asset_details.action"> aetest-xp.helpdesk-test.com</a>
</td>
			
		
			
			  
			  <td class=" evenRow">

Windows Workstation
</td>
			
		
			
			  
			  <td class=" evenRow">

No
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
			
			  
			  <td class=" evenRow">

6824LAE
</td>
			
		
			
			  
			  <td class=" evenRow">

<a href="javascript:showURLInDialog('AssignOwnerToWS.do?resourceId=904&amp;&amp;time=1399982217556','closeButton=yes,title=指派/关联,width=420')"> In Use</a>
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
			
			  
			  <td class=" evenRow">

Administrator
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
	</tr>

	<tr onmouseout="styleSwap(this, 'normal', 'hover', 'rowHiliten');" onmouseover="styleSwap(this, 'hover', 'normal', 'rowHiliten');" class="hover">
		
			
			  
			  <td class="headercheckbox oddRow">

<input type="checkbox" value="303" name="checkbox">&nbsp;
</td>
			
		
			
			  
			  <td class="width18 oddRow">

<img align="absmiddle" src="images/cmdb-rship-icon.gif" title="查看关系图" onclick="javascript:showMap('/RelationshipMap.do?ciId=303','RelationshipMap_WS');" style="cursor:pointer">
</td>
			
		
			
			  
			  <td class=" oddRow">

<a target="_self" href="asset_details.action"> assetexplorer.zohocorpin.com</a>
</td>
			
		
			
			  
			  <td class=" oddRow">

Windows Server
</td>
			
		
			
			  
			  <td class=" oddRow">

No
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
			
			  
			  <td class=" oddRow">

OptiPlex GX260
</td>
			
		
			
			  
			  <td class=" oddRow">

<a href="javascript:showURLInDialog('AssignOwnerToWS.do?resourceId=303&amp;&amp;time=1399982217557','closeButton=yes,title=指派/关联,width=420')"> In Use</a>
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
			
			  
			  <td class=" oddRow">

Administrator
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
	</tr>

	<tr onmouseout="styleSwap(this, 'normal', 'hover', 'rowHiliten');" onmouseover="styleSwap(this, 'hover', 'normal', 'rowHiliten');" class="hover">
		
			
			  
			  <td class="headercheckbox evenRow">

<input type="checkbox" value="6711" name="checkbox">&nbsp;
</td>
			
		
			
			  
			  <td class="width18 evenRow">

<img align="absmiddle" src="images/cmdb-rship-icon.gif" title="查看关系图" onclick="javascript:showMap('/RelationshipMap.do?ciId=6711','RelationshipMap_WS');" style="cursor:pointer">
</td>
			
		
			
			  
			  <td class=" evenRow">

<a target="_self" href="asset_details.action"> clim cave</a>
</td>
			
		
			
			  
			  <td class=" evenRow">

clim
</td>
			
		
			
			  
			  <td class=" evenRow">

No
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
			
			  
			  <td class=" evenRow">

clim1
</td>
			
		
			
			  
			  <td class=" evenRow">

<a href="javascript:showURLInDialog('AssignOwnerToWS.do?resourceId=3001&amp;&amp;time=1399982217558','closeButton=yes,title=指派/关联,width=420')"> In Use</a>
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
			
			  
			  <td class=" evenRow">

56111762
</td>
			
		
	</tr>

	<tr onmouseout="styleSwap(this, 'normal', 'hover', 'rowHiliten');" onmouseover="styleSwap(this, 'hover', 'normal', 'rowHiliten');" class="hover">
		
			
			  
			  <td class="headercheckbox oddRow">

<input type="checkbox" value="913" name="checkbox">&nbsp;
</td>
			
		
			
			  
			  <td class="width18 oddRow">

<img align="absmiddle" src="images/cmdb-rship-icon.gif" title="查看关系图" onclick="javascript:showMap('/RelationshipMap.do?ciId=913','RelationshipMap_WS');" style="cursor:pointer">
</td>
			
		
			
			  
			  <td class=" oddRow">

<a target="_self" href="ViewCIDetails.do?ciId=913&amp;"> helpdesk-test1.zohocorpin.com</a>
</td>
			
		
			
			  
			  <td class=" oddRow">

Windows Workstation
</td>
			
		
			
			  
			  <td class=" oddRow">

No
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
			
			  
			  <td class=" oddRow">

DSDT
</td>
			
		
			
			  
			  <td class=" oddRow">

<a href="javascript:showURLInDialog('AssignOwnerToWS.do?resourceId=913&amp;&amp;time=1399982217559','closeButton=yes,title=指派/关联,width=420')"> In Use</a>
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
			
			  
			  <td class=" oddRow">

Administrator
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
	</tr>

	<tr onmouseout="styleSwap(this, 'normal', 'hover', 'rowHiliten');" onmouseover="styleSwap(this, 'hover', 'normal', 'rowHiliten');" class="hover">
		
			
			  
			  <td class="headercheckbox evenRow">

<input type="checkbox" value="929" name="checkbox">&nbsp;
</td>
			
		
			
			  
			  <td class="width18 evenRow">

<img align="absmiddle" src="images/cmdb-rship-icon.gif" title="查看关系图" onclick="javascript:showMap('/RelationshipMap.do?ciId=929','RelationshipMap_WS');" style="cursor:pointer">
</td>
			
		
			
			  
			  <td class=" evenRow">

<a target="_self" href="ViewCIDetails.do?ciId=929&amp;"> Latitude D620 Laptop - PO# 1[3]</a>
</td>
			
		
			
			  
			  <td class=" evenRow">

Workstation
</td>
			
		
			
			  
			  <td class=" evenRow">

No
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
			
			  
			  <td class=" evenRow">

Latitude D620 Laptop
</td>
			
		
			
			  
			  <td class=" evenRow">

<a href="javascript:showURLInDialog('AssignOwnerToWS.do?resourceId=929&amp;&amp;time=1399982217560','closeButton=yes,title=指派/关联,width=420')"> In Use</a>
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
			
			  
			  <td class=" evenRow">

IT Services
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
	</tr>

	<tr onmouseout="styleSwap(this, 'normal', 'hover', 'rowHiliten');" onmouseover="styleSwap(this, 'hover', 'normal', 'rowHiliten');" class="hover">
		
			
			  
			  <td class="headercheckbox oddRow">

<input type="checkbox" value="903" name="checkbox">&nbsp;
</td>
			
		
			
			  
			  <td class="width18 oddRow">

<img align="absmiddle" src="images/cmdb-rship-icon.gif" title="查看关系图" onclick="javascript:showMap('/RelationshipMap.do?ciId=903','RelationshipMap_WS');" style="cursor:pointer">
</td>
			
		
			
			  
			  <td class=" oddRow">

<a target="_self" href="ViewCIDetails.do?ciId=903&amp;"> me-windows7.helpdesk-test.com</a>
</td>
			
		
			
			  
			  <td class=" oddRow">

Windows Workstation
</td>
			
		
			
			  
			  <td class=" oddRow">

No
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
			
			  
			  <td class=" oddRow">

OptiPlex 755
</td>
			
		
			
			  
			  <td class=" oddRow">

<a href="javascript:showURLInDialog('AssignOwnerToWS.do?resourceId=903&amp;&amp;time=1399982217561','closeButton=yes,title=指派/关联,width=420')"> In Use</a>
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
			
			  
			  <td class=" oddRow">

Administrator
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
	</tr>

	<tr onmouseout="styleSwap(this, 'normal', 'hover', 'rowHiliten');" onmouseover="styleSwap(this, 'hover', 'normal', 'rowHiliten');" class="hover">
		
			
			  
			  <td class="headercheckbox evenRow">

<input type="checkbox" value="910" name="checkbox">&nbsp;
</td>
			
		
			
			  
			  <td class="width18 evenRow">

<img align="absmiddle" src="images/cmdb-rship-icon.gif" title="查看关系图" onclick="javascript:showMap('/RelationshipMap.do?ciId=910','RelationshipMap_WS');" style="cursor:pointer">
</td>
			
		
			
			  
			  <td class=" evenRow">

<a target="_self" href="ViewCIDetails.do?ciId=910&amp;"> sdp-test1.zohocorpin.com.</a>
</td>
			
		
			
			  
			  <td class=" evenRow">

Windows Workstation
</td>
			
		
			
			  
			  <td class=" evenRow">

No
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
			
			  
			  <td class=" evenRow">

DSDT
</td>
			
		
			
			  
			  <td class=" evenRow">

<a href="javascript:showURLInDialog('AssignOwnerToWS.do?resourceId=910&amp;&amp;time=1399982217562','closeButton=yes,title=指派/关联,width=420')"> In Use</a>
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
			
			  
			  <td class=" evenRow">

Administrator
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
			
			  
			  <td class=" evenRow">

-
</td>
			
		
	</tr>

	<tr onmouseout="styleSwap(this, 'normal', 'hover', 'rowHiliten');" onmouseover="styleSwap(this, 'hover', 'normal', 'rowHiliten');" class="hover">
		
			
			  
			  <td class="headercheckbox oddRow">

<input type="checkbox" value="603" name="checkbox">&nbsp;
</td>
			
		
			
			  
			  <td class="width18 oddRow">

<img align="absmiddle" src="images/cmdb-rship-icon.gif" title="查看关系图" onclick="javascript:showMap('/RelationshipMap.do?ciId=603','RelationshipMap_WS');" style="cursor:pointer">
</td>
			
		
			
			  
			  <td class=" oddRow">

<a target="_self" href="ViewCIDetails.do?ciId=603&amp;"> sdpdemo-xp2.helpdesk-test.com</a>
</td>
			
		
			
			  
			  <td class=" oddRow">

Windows Workstation
</td>
			
		
			
			  
			  <td class=" oddRow">

No
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
			
			  
			  <td class=" oddRow">

OptiPlex 780
</td>
			
		
			
			  
			  <td class=" oddRow">

<a href="javascript:showURLInDialog('AssignOwnerToWS.do?resourceId=603&amp;&amp;time=1399982217563','closeButton=yes,title=指派/关联,width=420')"> In Use</a>
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
			
			  
			  <td class=" oddRow">

Administrator
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
			
			  
			  <td class=" oddRow">

-
</td>
			
		
	</tr>



	</tbody></table>
<span><div id="ACT_BTN_AssetView" class="hide"><div id="Div1"><input type="submit" value="搜索" class="tableSearchGoButton" name="searchSubmit" title="搜索"></div><div id="Div2"><input type="button" onclick="return openSearch('34_SearchRow', this.form,34)" class="tableSearchButton" id="34_OS"><input type="button" onclick="return closeSearch('34_SearchRow', this.form,34)" class="hide" id="34_CS"></div>
<script language="Javascript">parent.CCListInline = new Object();
parent.setMenuItemProperties(parent.CCListInline,new Array('CCListInline','List Type','/images/columnedit.gif',null,'ChooserListTypeInline.cc',null,'_CUSTOMALERTFRAME','height=300,width=450,scrollbars=0,resizable=1','invokeAction',-1));
parent.setMenuDescription(parent.CCListInline,'This action can be used to change the columns displayed for a table.')
</script><div id="Div3"><input type="button" onclick="invokeAction(CCListInline,'AssetView',null,'viewName=AssetView&amp;UNIQUEID=AssetView')" class="columnEditButton" id="AssetView_CCBtn"></div></div></span>
<script>
	
var views = parent["ViewNames"];
if(views == null) {
	views = new Object();
}
views["AssetView"] = '34';
parent["ViewNames"] = views;


parent.addToOnLoadScripts("parent.loadMCNavigator('AssetView', 8)", window);
parent.addToOnLoadScripts("parent.createMCSearchRow('34', 'AssetView')", window);
parent.addToOnLoadScripts("setSearchTitle(getMessageForKey('sdp.leftpanel.search.title'), getMessageForKey('sdp.leftpanel.search.go'))", window);
</script>

<div class="hide" id="sdp.leftpanel.search.title">搜索</div>
<div class="hide" id="sdp.leftpanel.search.go">搜索</div>
<script>

	
	
	// set the custom_listview Properties in the request parameter and then use the same for invoking some js..
	parent.addToOnLoadScripts('executeCustomPropScripts("AssetView",null)',window)
</script>
<script>curObj=V34;curObj["Type"]="Resources";curObj["AssetType"]="5";curObj["_PL"]="1000";curObj["_FI"]="1";curObj["ComponentType"]="0";curObj["ciTypeId"]="null";curObj["_TI"]="8";curObj["_SO"]="A";curObj["_PN"]="1";curObj["_TL"]="8";</script></div>

<script>parent.document.title='ManageEngine AssetExplorer';</script>


<script type="text/javascript">parent.execOnLoadScripts(window);</script>

													</td>
												</tr>
												</tbody></table>
												</form>	
											<!-- Actions Row start -->									
											</td>
										</tr>
										<tr>
											<td height="10"></td>
										</tr>
										<tr> 
											<td class="headligreenBg"></td>
									 	</tr>
								</tbody></table>
								</td>
                                </tr>
								 
									  
                              </tbody></table></td>
                            </tr>

                          

                          </tbody></table></td>
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
