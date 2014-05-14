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
											<td width="99%" valign="top">
		    <form action="/ViewWSDetails.do" method="post" name="ViewWSDetails">
		      <input type="hidden" value="919" name="wsId"> 
		      <input type="hidden" value="919" id="ciIdValue">
		    </form>
		      <!-- display block starts here -->
		      <table width="100%" cellspacing="0" cellpadding="0" border="0" id="Right-Section">
			<!-- For success or error message in client -->
			<tbody><tr valign="top"> 
			  <td>
			    <table width="100%" cellspacing="0" cellpadding="0" border="0">
			      <tbody><tr> 
				<td height="30" class="trailBar">
		  
				  

	<a class="trailBar" href="main_page.action">资产清单</a>

	&nbsp;&gt; &nbsp;<a class="trailBar" href="asset_list.action">Router</a>

&nbsp;&gt; &nbsp;<span class="trailBar" id="attachResourceName">aetest-xp.helpdesk-test.com</span>
								
		  
				</td>
				<td valign="middle" class="fontBlack alignRight">
				</td>
			      </tr>
			    </tbody></table>
			  </td>
			</tr>
			<tr valign="top" class="alignLeft">
			  <td width="100%">
			    <div id="wsDetails">
			      <div id="viewForMap">
				<div align="center" style="display:none" id="status_message"></div><table width="100%" cellspacing="0" cellpadding="0" border="0">
				   
				  
				  
				    <tbody><tr align="center"><td>
					<div id="oper_stat">
					  <table>
					    



 
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




					  </table>
					</div>
				    </td>
				  </tr>
				    
				    <tr>
					














<script>var weekStartDay = 1</script>


  <script>var isMSP = false; </script>


<script>var isCMDB = 'true';</script>

<script>
parent["OFFSET"] = -25200000;
parent["SERVER_OFFSET"] = -25200000;
window['date_format']='YYYY-MM-DD'; //NO I18N
</script>

	<script src="/scripts/dcIntegrationUtils.js?build=6100" type="text/javascript"></script>











<td width="100%" valign="top" class="menubar alignRight">
  <!-- Tasks Tab Starts -->
  <input type="hidden" style="width: 250pt;" readonly="readonly" value="" size="50" class="tbox" name="attachments">
  <input type="hidden" value="" name="attach">
  <input type="hidden" name="attPath" value="">
  <input type="hidden" name="component" value="Resource">
  <input type="hidden" name="attSize" value="">
  <input type="hidden" name="wsId" value="919">
  <input type="hidden" name="save" value="">
  


<script type="text/javascript" src="/components/javascript/Dialog.js?6100" language="javascript"></script>
<script type="text/javascript" src="/components/javascript/Utils.js?6100" language="Javascript"></script>

<div class="hide">
        <div id="sdp.inventory.breadcrumb.addSW">添加软件</div>
        <div id="sdp.inventory.wsRtPanel.attachAsset.title">附属资产</div>
        <div id="sdp.inventory.assignWSToUser.assign.title">指派/关联</div>
        <div id="sdp.common.associate.title">关联标题</div>
        <div id="sdp.inventory.wsRtPanel.copyWS.title">复制工作站</div>
        <div id="sdp.inventory.wsRtPanel.copyresource.title">复制资产</div>
        <div id="sdp.inventory.wsRtPanel.attachcomp.title">附加组件</div>
	<!--23954 Key value is shown in title of 'copy server' popup issue fixed -->
  	<div id="sdp.inventory.wsRtPanel.copyServerTitle">复制服务器</div>
  	<div id="sdp.asset.ws.adddepreciation">配置折旧</div>
 	<div id="sdp.inventory.wsRtPanel.adddepreciation.title">配置折旧</div>
	
	
</div>
<table cellspacing="0" cellpadding="0" border="0" id="startListMenuItems" class="floatRight">
        <tbody>
                <tr>
		<input type="hidden" value="11" id="ciTypeId" name="ciTypeId">
                
                
                
                          
                <td id="items">
				
                </td>
                
                                <td id="items">
                                <a onclick="javascript:disableForDemo()" title="立即扫描资产" class="FontBlackLink" href="#">立即扫描</a>
                                </td>
                                
             	<td id="items">
               	<a href="AssetDef.do?assetID=919" title="编辑资产" class="FontBlackLink">编辑</a>
                </td>
                <td id="items"><a onclick="showURLInDialog('/AssignOwnerToWS.do?resourceId=919&amp;resourcePage=Resource Info&amp;assignOwner=true&amp;AccountID=null&amp;time=1399991245731','position=relative, closeButton=yes,width=420,title=' + getMessageForKey('sdp.inventory.assignWSToUser.assign.title'))" title="给工作站关联所有者" class="FontBlackLink" href="#">指派</a>
                        </td>
                        
				<td>
                
                                <ul class="actionscombo" id="nav-actions">
                                        <li class="first">
                                                <a class="parent" href="javascript:void(0)">动作</a>
												<ul style="visibility: hidden; display: none;">
                                                        <li>
        <a onclick="NewWindow('WsScanSettings.do?wsId=919&amp;action=scan&amp;wsName=192.168.118.39&amp;isWorkstation=false&amp;type=Router&amp;ACCOUNTID=null','Scan_WS','640','260','yes','center')" title="点击更改设备的扫描设置" class="FontBlackLink" href="#">变更扫描凭证</a><a onclick="avascript:showURLInDialog('CopyAsset.do?assetID=919&amp;resourcePage=Resource Info','position=relative, closeButton=yes,title=' + getMessageForKey('sdp.inventory.wsRtPanel.copyresource.title'))" title="复制资产" class="FontBlackLink" href="#">复制资产</a><a onclick="NewWindow('ViewWSDetails.do?wsId=919&amp;wsMode=printWS','Print_WS','800','450','yes','center','yes','yes')" title="打印预览" class="FontBlackLink" href="#">打印预览</a><a href="#" onclick="NewWindow('ModifyDeviceType.do?wsId=919', 'ModifyType', '420', '125','yes','center')" title="修改类型" class="FontBlackLink">修改类型</a><a onclick="javascript:showURLInDialog('AssociateAssetToWorkstation.do?workstationId=919&amp;resourcePage=Resource Info','position=relative, width=600,closeButton=yes,title=' + getMessageForKey('sdp.inventory.wsRtPanel.attachAsset.title'))" title="给工作站分配他所隶属的资产" class="FontBlackLink" href="#">配属资产</a><a onclick="javascript:showURLInDialog('AssociateCompToAsset.do?workstationId=919&amp;resourcePage=Resource Info','position=relative, width=570,closeButton=yes,title=' + getMessageForKey('sdp.inventory.wsRtPanel.attachcomp.title'))" title="给工作站分配他所隶属的资产" class="FontBlackLink" href="#">添附组件</a><a onclick="showURLInDialog(&quot;/asset/ResourcesAttachments.jsp?type=new&amp;wsID=919&amp;date=1399991245731&amp;pageName=Resource Info&quot;, &quot;closeButton=no,position=relative&quot;);" title="添附文档" class="FontBlackLink" href="#">添附文档</a><a onclick="showURLInDialog('AddDepreciation.do?isFrom=WSRightPanel&amp;wsId=919','modal=yes,closeButton=no')" title="配置折旧" class="FontBlackLink" href="#">配置折旧</a>
                                                        </li>
                                                </ul>
                                        </li>
                                </ul>
                        
                        </td>
                        <td id="lastitem">&nbsp;</td>
                </tr>
        </tbody>
</table>



<div class="hide" id="rdsHelpMsg">
<table width="600" cellspacing="0" cellpadding="0" border="0">
	<tbody><tr>
		<td class="helptool-shadow-tl">&nbsp;</td>
		<td height="50" class="helptool-shadow-tm">
			<span class="floatRight"><a title="Close" class="fontBlack" href="javascript:closeDialog()">[X]</a></span>   
			<img border="0" align="absmiddle" class="mtop3" src="images/spacer.gif"><b>&nbsp;&nbsp;远程控制</b>
		</td>
		<td class="helptool-shadow-tr">&nbsp;</td>

	</tr>
	<tr>
		<td class="helptool-shadow-lm">&nbsp;</td>
		<td valign="top" class="helptool-content">
			<table width="100%" cellspacing="2" cellpadding="0" border="0">
				<tbody><tr>
					<td><img class="overdue-icon2" src="images/spacer.gif"></td>
					<td>
						
						对用户的机器进行远程控制，可通过Windows代理，或者其它工具（如：VNC, Dameware等）。请点击 <a target="#" style="color:0000FF;" href="SetUpWizard.do?forwardTo=rcSettings">点击这里</a> 配置工具	
					</td>
				</tr>
			</tbody></table>
		</td>
		<td class="helptool-shadow-rm">&nbsp;</td>
	</tr>
	<tr>
		<td class="helptool-shadow-bl">&nbsp;</td>
		<td class="helptool-shadow-bm">&nbsp;</td>
		<td class="helptool-shadow-br">&nbsp;</td>
	</tr>
</tbody></table>
</div>


<script>
function menubar1actions()
{
if(window.jQuery) {
	jQuery(document).ready(
		function()
		{
			jQuery('.menubar .actionscombo').ActionsComboMenu({animSpeed: 100});
		}
	);
}
}
</script>
								
  <!-- Tasks Tab Ends -->
</td>

				    </tr>
				    <tr>
                    <td valign="top" class="details-tab-cell">
                    
					













<script>var weekStartDay = 1</script>


  <script>var isMSP = false; </script>


<script>var isCMDB = 'true';</script>

<script>
parent["OFFSET"] = -25200000;
parent["SERVER_OFFSET"] = -25200000;
window['date_format']='YYYY-MM-DD'; //NO I18N
</script>

	<script src="/scripts/dcIntegrationUtils.js?build=6100" type="text/javascript"></script>











  <!-- Dashboard Tab Starts -->

  


<!--<div id="top" class="details-tab-section" >-->
<div class="details-tab-section" id="top">
<table width="100%" cellspacing="0" cellpadding="0" border="0" class="details-tab-table">
<tbody><tr>
<td width="55%" class="pleft6"><h1>

		
		<b dir="ltr">aetest-xp.helpdesk-test.com</b>&nbsp;[&nbsp;192.168.118.39&nbsp;]
		
		
		 &nbsp;&nbsp;&nbsp;<img align="absmiddle" style="cursor: pointer;" onclick="javascript:showMap('/RelationshipMap.do?ciId=919','RelationshipMap_WS');" title="查看关系图" src="images/cmdb-rship-icon.gif" />
		 
		<br>
		<br>
			<span>Cisco 2811</span>
		<br>



		<span>
			&nbsp;&nbsp;
		</span>




	</h1></td>
<td width="45%" valign="top" nowrap="nowrap" class="pad4">
<!-- ####### This needs to be modfied later -->



		
<table width="" cellspacing="2" cellpadding="2" border="0" style="background-color: #ffc;" class="whitebgBorder floatRight">
			

				<tbody><tr>
					<td>
						资产状态
					</td>

					<td>
						: 
						<b> In Store </b> 



						&nbsp;
						
						
                                        	[ 
						<a onclick="showURLInDialog('/AssignOwnerToWS.do?resourceId=919&amp;resourcePage=Resource Info&amp;time=1399991245732','position=relative, closeButton=yes,width=420,title='+getMessageForKey('sdp.inventory.assignWSToUser.assign.title'))" title="点击更改用户" href="#">
							变更
						</a>
                                        	]	

		
					


		
						
					</td>
				</tr>

			</tbody></table>



	</td>

</tr>
</tbody></table>					
</div>
  <!-- Dashboard Tab Starts -->

                    













<script>var weekStartDay = 1</script>


  <script>var isMSP = false; </script>


<script>var isCMDB = 'true';</script>

<script>
parent["OFFSET"] = -25200000;
parent["SERVER_OFFSET"] = -25200000;
window['date_format']='YYYY-MM-DD'; //NO I18N
</script>

	<script src="/scripts/dcIntegrationUtils.js?build=6100" type="text/javascript"></script>







  <!-- Workstation Details header starts here -->
  






				            <div style="width:100%;" class="details-tabs">					
					
								<table width="100%" cellspacing="0" cellpadding="0" border="0">
									<tbody>
	
									<tr valign="top">
									
									
<!-- #######CIINFO TAB #######-->
  	                                                                         <!-- ####### CIINFO TAB ###### -->     
									
<!-- ##### Resource Tab #####  -->


										<td class="subtabon">
												<div>配置项的信息</div> 
										</td>


										<td class="subtaboff">
											<a title="关系信息" href="AssetListViewForWS.do?wsId=919&amp;opmanager=false">关系</a>
										</td>	

										<td class="subtaboff">
											<a title="历史" href="ViewWSAuditDetails.do?wsId=919&amp;opmanager=false">
												历史
											</a>
										</td>	

										<td class="subtaboff">
											<a title="合同信息" href="ViewResourceContracts.do?wsId=919&amp;opmanager=false">合同</a>
										</td>	

										<td class="subtaboff">
											<a title="成本" href="ViewResourceCosts.do?wsId=919&amp;opmanager=false">成本</a>
										</td>	



										<td width="100%" class="subtabborder">&nbsp;
											  
										</td>

									</tr>
									
									</tbody>

								</table>			

                      	  </div>     			






  <!-- Workstations Details Header Stops -->


                    </td>
				    </tr>
			    	    
				    
				    <tr id="ciDetails">
					















<script>var weekStartDay = 1</script>


  <script>var isMSP = false; </script>


<script>var isCMDB = 'true';</script>

<script>
parent["OFFSET"] = -25200000;
parent["SERVER_OFFSET"] = -25200000;
window['date_format']='YYYY-MM-DD'; //NO I18N
</script>

	<script src="/scripts/dcIntegrationUtils.js?build=6100" type="text/javascript"></script>















	











<td valign="top" class="details-tab-cnt"> 
  <div class="details-tab-header">
    <img alt="Resource Details" src="images/Resource_Details.gif">
    
    <strong>配置项明细</strong>
    
    <div id="addRelationship_btn" class="rshipbtnflt">
      <label class="addrshipbtn">
	<a href="javascript:showURLInDialog('AddInstanceAttribute.do?ciId=919&amp;','position=relative,closeButton=no')" title="添加实例属性">添加属性</a>
      </label>
    </div>

    	
  </div>
  <table width="100%" cellspacing="0" cellpadding="0" border="0">
    <tbody><tr>
      <td>
	<table width="100%" cellspacing="0" cellpadding="0" border="0">
    
    <tbody><tr>
      <td id="AttrTD">
	<!-- $Id$-->
<div id="ae.cmdb.cidetails.InstanAttr.deletedSuccessFullyMSG" class="hide">CI实例属性删除成功。</div>

<table width="100%">
	<tbody><tr>
		<td width="50%">
  			<table width="100%">
	  			<tbody><tr height="20">
		   			<td width="130" valign="top" nowrap="nowrap"><b>配置项名称</b></td>
		   			<td width="5" valign="top" align="center"><b>:</b></td>
			   		<td width="95%" valign="top">192.168.118.39</td>
		   		</tr>
 				


	   			<tr height="20">
		   			<td width="130" valign="top" nowrap="nowrap"><b>配置项类型</b></td>
		   			<td width="5" valign="top" align="center"><b>:</b></td>
			   		<td width="95%" valign="top">
			   			<a title="点击这里进入配置项类型的明细画面" href="/CITypes.do?mode=edit&amp;ciTypeID=11">Router</a>
					</td>
	   			</tr>
 				 

	  		</tbody></table>
   		</td>
	  	<td width="50%">
	  	
			<table width="100%">
				<tbody><tr height="20">
					<td width="130" valign="top" nowrap="nowrap"><b>地点</b></td>
					<td width="5" valign="top" align="center"><b>:</b></td> 
	        			<td width="95%" valign="top">
						-
   					</td>
 				</tr>
				
			</tbody></table>

		</td>
	</tr>


	
	
	<tr>
		<td width="50%">
			<table width="100%">
				<tbody><tr height="20">
					<td width="130" valign="top" nowrap="nowrap"><b>系统描述</b></td>
			 		<td width="5" valign="top" align="center"><b>:</b></td>
			 		<td width="95%" valign="top">-</td>
				</tr>
				<tr height="20">
					<td width="130" valign="top" nowrap="nowrap"><b>系统位置</b></td>
			 		<td width="5" valign="top" align="center"><b>:</b></td>
			 		<td width="95%" valign="top">-</td>
				</tr>
			</tbody></table>
		</td>

		<td width="50%">
			<table width="100%">
				<tbody><tr height="20">
					<td width="130" valign="top" nowrap="nowrap"><b>系统开机时间</b></td>
			 		<td width="5" valign="top" align="center"><b>:</b></td>
			 		<td width="95%" valign="top">-</td>
				</tr>
				<tr height="20">
					<td width="130" valign="top" nowrap="nowrap"><b>设备序列号</b></td>
			 		<td width="5" valign="top" align="center"><b>:</b></td>
			 		<td width="95%" valign="top">-</td>
				</tr>
			</tbody></table>
		</td>

	</tr>
	


	<tr>
			<td width="50%">
				<table width="100%">
					
								<tbody><tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>IP地址</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											192.168.118.39
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>子网掩码</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>预计带宽</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>配置寄存器</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>CPU版本</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>固件版本</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>NVRAM大小（KB）</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>描述</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
				</tbody></table>
		</td>
		
			<td width="50%">
				<table width="100%">
					
								<tbody><tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>MAC地址</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>业务影响</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>IOS</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											IOS
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>CPU（MB）</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>DRAM大小</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>Flash大小（MB）</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>OS版本</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
						<tr height="20"><td width="130" valign="top" nowrap="nowrap"><b>&nbsp;</b></td><td width="5" valign="top">&nbsp;</td><td width="95%" valign="top"></td></tr>
						
				</tbody></table>
		</td>
		</tr>
</tbody></table>	

      </td>
    </tr>
	
		
    <tr>
      <td>
	
	</td></tr></tbody></table>
      </td>
    </tr>

    <tr>
      <td>
	<table width="100%">
	  <tbody><tr>
	    <td width="50%">	
	      <table width="100%">
		<tbody><tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>状态</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">In Store</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>资产标签</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">-</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>序列号</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">-</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>条形码</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">-</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>厂商</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">-</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>部件号</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">-</td>
		</tr>
		<!--Request ID : 46800 %if(displayPONo && POnumber != null){%-->
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>定购单号</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">
		    
		    -
		    
		  </td>
		</tr>
		<!--%}%-->
	      </tbody></table>
	    </td>

	    <td width="50%">	
	      <table width="100%">
		<tbody><tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>成本 ($)</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">0.00</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>当前资产值($)</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		   
		  <td width="95%" valign="top">-</td>
		</tr>

		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>购进日期</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">-</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>有效期限</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">-</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>保修逾期日期</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">-</td>
		</tr>
		
	      </tbody></table>
	    </td>
	  </tr>
	</tbody></table>
      </td>
    </tr>
    
    <tr>
      <td>
	
      </td>
    </tr>
    <tr><td colspan="2">&nbsp;</td></tr>
     
    			      <!-- Resource Details Stops -->
		              
			      






	

		                                                 <tr>
                                                          <td valign="top" class="attribheadertxt1">

                                                                <div class="attribheadertitle2">

                                                                        <strong>&nbsp;&nbsp;Interfaces</strong>                                          
                                                                </div>
		   </td></tr>
		   <tr><td>

                   <table width="100%" cellspacing="0" cellpadding="0" border="10" class="compact">
			 <tbody><tr>

				

                                		<th class="noBorderLeft" scope="col">Interface Name</th>
				

                                		<th class="noBorderLeft" scope="col">Interface Type</th>
				

                                		<th class="noBorderLeft" scope="col">IP Address</th>
				

                                		<th class="noBorderLeft" scope="col">Speed (Mbps)</th>
				

                                		<th class="noBorderLeft" scope="col">Operational Status</th>
				

                                		<th class="noBorderLeft" scope="col">Admin Status</th>
				
                         </tr>
			
		 		 <tr>
					
                                       		<td class="noBorderLeft"> FastEthernet0/0 </td>
					
                                       		<td class="noBorderLeft"> 6 </td>
					
                                       		<td class="noBorderLeft"> - </td>
					
                                       		<td class="noBorderLeft"> 1000000000 </td>
					
                                       		<td class="noBorderLeft"> - </td>
					
                                       		<td class="noBorderLeft"> - </td>
					
                                 </tr>

				
		 		 <tr>
					
                                       		<td class="noBorderLeft"> FastEthernet0/1 </td>
					
                                       		<td class="noBorderLeft"> 6 </td>
					
                                       		<td class="noBorderLeft"> - </td>
					
                                       		<td class="noBorderLeft"> 100000000 </td>
					
                                       		<td class="noBorderLeft"> - </td>
					
                                       		<td class="noBorderLeft"> - </td>
					
                                 </tr>

				
		 		 <tr>
					
                                       		<td class="noBorderLeft"> Null0 </td>
					
                                       		<td class="noBorderLeft"> 1 </td>
					
                                       		<td class="noBorderLeft"> - </td>
					
                                       		<td class="noBorderLeft"> 4294967295 </td>
					
                                       		<td class="noBorderLeft"> - </td>
					
                                       		<td class="noBorderLeft"> - </td>
					
                                 </tr>

				

		   </tbody></table>
		   </td></tr>

	






			      

			      <!-- Start of Additional Info -->
			      
			      <!-- End of Additional info -->
			      <!-- Start of AssetAdditional Info -->
			      
			      <!-- End of AssetAdditional info -->
			      
			      
		      
		    
		  
		</tbody></table>

				    </td></tr>	    
				  </tbody></table>
				</div>
			    </div>
			    
			  </td>
			</tr>
		      </tbody></table>
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
