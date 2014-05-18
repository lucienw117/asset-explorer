<%@ page language="java" contentType="text/html; charset=GB2312"
	pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>ManageEngine AssetExplorer</title>
<link rel="stylesheet" href="style/style.css" type="text/css">
<script src="js/jquery-1.11.1.js"></script>
<script src="js/asset_details.js"></script>
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
		  
				  

	<a class="trailBar" href="main_page.action">�ʲ��嵥</a>

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
        <div id="sdp.inventory.breadcrumb.addSW">������</div>
        <div id="sdp.inventory.wsRtPanel.attachAsset.title">�����ʲ�</div>
        <div id="sdp.inventory.assignWSToUser.assign.title">ָ��/����</div>
        <div id="sdp.common.associate.title">��������</div>
        <div id="sdp.inventory.wsRtPanel.copyWS.title">���ƹ���վ</div>
        <div id="sdp.inventory.wsRtPanel.copyresource.title">�����ʲ�</div>
        <div id="sdp.inventory.wsRtPanel.attachcomp.title">�������</div>
	<!--23954 Key value is shown in title of 'copy server' popup issue fixed -->
  	<div id="sdp.inventory.wsRtPanel.copyServerTitle">���Ʒ�����</div>
  	<div id="sdp.asset.ws.adddepreciation">�����۾�</div>
 	<div id="sdp.inventory.wsRtPanel.adddepreciation.title">�����۾�</div>
	
	
</div>
<table cellspacing="0" cellpadding="0" border="0" id="startListMenuItems" class="floatRight">
        <tbody>
                <tr>
		<input type="hidden" value="11" id="ciTypeId" name="ciTypeId">
                
                
                
                          
                <td id="items">
				
                </td>
                
                                <td id="items">
                                <a onclick="javascript:disableForDemo()" title="����ɨ���ʲ�" class="FontBlackLink" href="#">����ɨ��</a>
                                </td>
                                
             	<td id="items">
               	<a href="AssetDef.do?assetID=919" title="�༭�ʲ�" class="FontBlackLink">�༭</a>
                </td>
                <td id="items"><a onclick="showURLInDialog('/AssignOwnerToWS.do?resourceId=919&amp;resourcePage=Resource Info&amp;assignOwner=true&amp;AccountID=null&amp;time=1399991245731','position=relative, closeButton=yes,width=420,title=' + getMessageForKey('sdp.inventory.assignWSToUser.assign.title'))" title="������վ����������" class="FontBlackLink" href="#">ָ��</a>
                        </td>
                        
				<td>
                
                                <ul class="actionscombo" id="nav-actions">
                                        <li class="first">
                                                <a class="parent" href="javascript:void(0)">����</a>
												<ul style="visibility: hidden; display: none;">
                                                        <li>
        <a onclick="NewWindow('WsScanSettings.do?wsId=919&amp;action=scan&amp;wsName=192.168.118.39&amp;isWorkstation=false&amp;type=Router&amp;ACCOUNTID=null','Scan_WS','640','260','yes','center')" title="��������豸��ɨ������" class="FontBlackLink" href="#">���ɨ��ƾ֤</a><a onclick="avascript:showURLInDialog('CopyAsset.do?assetID=919&amp;resourcePage=Resource Info','position=relative, closeButton=yes,title=' + getMessageForKey('sdp.inventory.wsRtPanel.copyresource.title'))" title="�����ʲ�" class="FontBlackLink" href="#">�����ʲ�</a><a onclick="NewWindow('ViewWSDetails.do?wsId=919&amp;wsMode=printWS','Print_WS','800','450','yes','center','yes','yes')" title="��ӡԤ��" class="FontBlackLink" href="#">��ӡԤ��</a><a href="#" onclick="NewWindow('ModifyDeviceType.do?wsId=919', 'ModifyType', '420', '125','yes','center')" title="�޸�����" class="FontBlackLink">�޸�����</a><a onclick="javascript:showURLInDialog('AssociateAssetToWorkstation.do?workstationId=919&amp;resourcePage=Resource Info','position=relative, width=600,closeButton=yes,title=' + getMessageForKey('sdp.inventory.wsRtPanel.attachAsset.title'))" title="������վ���������������ʲ�" class="FontBlackLink" href="#">�����ʲ�</a><a onclick="javascript:showURLInDialog('AssociateCompToAsset.do?workstationId=919&amp;resourcePage=Resource Info','position=relative, width=570,closeButton=yes,title=' + getMessageForKey('sdp.inventory.wsRtPanel.attachcomp.title'))" title="������վ���������������ʲ�" class="FontBlackLink" href="#">�����</a><a onclick="showURLInDialog(&quot;/asset/ResourcesAttachments.jsp?type=new&amp;wsID=919&amp;date=1399991245731&amp;pageName=Resource Info&quot;, &quot;closeButton=no,position=relative&quot;);" title="���ĵ�" class="FontBlackLink" href="#">���ĵ�</a><a onclick="showURLInDialog('AddDepreciation.do?isFrom=WSRightPanel&amp;wsId=919','modal=yes,closeButton=no')" title="�����۾�" class="FontBlackLink" href="#">�����۾�</a>
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
			<img border="0" align="absmiddle" class="mtop3" src="images/spacer.gif"><b>&nbsp;&nbsp;Զ�̿���</b>
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
						
						���û��Ļ�������Զ�̿��ƣ���ͨ��Windows���������������ߣ��磺VNC, Dameware�ȣ������� <a target="#" style="color:0000FF;" href="SetUpWizard.do?forwardTo=rcSettings">�������</a> ���ù���	
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
		
		
		 &nbsp;&nbsp;&nbsp;<img align="absmiddle" style="cursor: pointer;" onclick="javascript:showMap('/RelationshipMap.do?ciId=919','RelationshipMap_WS');" title="�鿴��ϵͼ" src="images/cmdb-rship-icon.gif" />
		 
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
						�ʲ�״̬
					</td>

					<td>
						: 
						<b> In Store </b> 



						&nbsp;
						
						
                                        	[ 
						<a onclick="showURLInDialog('/AssignOwnerToWS.do?resourceId=919&amp;resourcePage=Resource Info&amp;time=1399991245732','position=relative, closeButton=yes,width=420,title='+getMessageForKey('sdp.inventory.assignWSToUser.assign.title'))" title="��������û�" href="#">
							���
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


										<td id="subTab_config" class="subtabon">
												<div>���������Ϣ</div> 
										</td>


										<td class="subtaboff">
											<a title="��ϵ��Ϣ" href="AssetListViewForWS.do?wsId=919&amp;opmanager=false">��ϵ</a>
										</td>	

										<td id="subTab_history" class="subtaboff">
											<a title="��ʷ" href="javascript:historyClick();">
												��ʷ
											</a>
										</td>	

										<td class="subtaboff">
											<a title="��ͬ��Ϣ" href="ViewResourceContracts.do?wsId=919&amp;opmanager=false">��ͬ</a>
										</td>	

										<td class="subtaboff">
											<a title="�ɱ�" href="ViewResourceCosts.do?wsId=919&amp;opmanager=false">�ɱ�</a>
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
			    	    
				    
				    <tr id="ciDetails_configInfo">
					















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
    
    <strong>��������ϸ</strong>
    
    <div id="addRelationship_btn" class="rshipbtnflt">
      <label class="addrshipbtn">
	<a href="javascript:showURLInDialog('AddInstanceAttribute.do?ciId=919&amp;','position=relative,closeButton=no')" title="���ʵ������">�������</a>
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
<div id="ae.cmdb.cidetails.InstanAttr.deletedSuccessFullyMSG" class="hide">CIʵ������ɾ���ɹ���</div>

<table width="100%">
	<tbody><tr>
		<td width="50%">
  			<table width="100%">
	  			<tbody><tr height="20">
		   			<td width="130" valign="top" nowrap="nowrap"><b>����������</b></td>
		   			<td width="5" valign="top" align="center"><b>:</b></td>
			   		<td width="95%" valign="top">192.168.118.39</td>
		   		</tr>
 				


	   			<tr height="20">
		   			<td width="130" valign="top" nowrap="nowrap"><b>����������</b></td>
		   			<td width="5" valign="top" align="center"><b>:</b></td>
			   		<td width="95%" valign="top">
			   			<a title="�������������������͵���ϸ����" href="/CITypes.do?mode=edit&amp;ciTypeID=11">Router</a>
					</td>
	   			</tr>
 				 

	  		</tbody></table>
   		</td>
	  	<td width="50%">
	  	
			<table width="100%">
				<tbody><tr height="20">
					<td width="130" valign="top" nowrap="nowrap"><b>�ص�</b></td>
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
					<td width="130" valign="top" nowrap="nowrap"><b>ϵͳ����</b></td>
			 		<td width="5" valign="top" align="center"><b>:</b></td>
			 		<td width="95%" valign="top">-</td>
				</tr>
				<tr height="20">
					<td width="130" valign="top" nowrap="nowrap"><b>ϵͳλ��</b></td>
			 		<td width="5" valign="top" align="center"><b>:</b></td>
			 		<td width="95%" valign="top">-</td>
				</tr>
			</tbody></table>
		</td>

		<td width="50%">
			<table width="100%">
				<tbody><tr height="20">
					<td width="130" valign="top" nowrap="nowrap"><b>ϵͳ����ʱ��</b></td>
			 		<td width="5" valign="top" align="center"><b>:</b></td>
			 		<td width="95%" valign="top">-</td>
				</tr>
				<tr height="20">
					<td width="130" valign="top" nowrap="nowrap"><b>�豸���к�</b></td>
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
									<td width="130" valign="top" nowrap="nowrap"><b>IP��ַ</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											192.168.118.39
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>��������</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>Ԥ�ƴ���</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>���üĴ���</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>CPU�汾</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>�̼��汾</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>NVRAM��С��KB��</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>����</b></td>
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
									<td width="130" valign="top" nowrap="nowrap"><b>MAC��ַ</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>ҵ��Ӱ��</b></td>
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
									<td width="130" valign="top" nowrap="nowrap"><b>CPU��MB��</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>DRAM��С</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>Flash��С��MB��</b></td>
							 		<td width="5" valign="top" align="center"><b>:</b></td>
							 		<td width="95%" valign="top">
										
											-
										
									</td>
								</tr>
							
								<tr height="20">
									<td width="130" valign="top" nowrap="nowrap"><b>OS�汾</b></td>
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
		  <td width="130" valign="top" nowrap="nowrap"><b>״̬</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">In Store</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>�ʲ���ǩ</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">-</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>���к�</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">-</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>������</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">-</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>����</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">-</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>������</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">-</td>
		</tr>
		<!--Request ID : 46800 %if(displayPONo && POnumber != null){%-->
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>��������</b></td>
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
		  <td width="130" valign="top" nowrap="nowrap"><b>�ɱ� ($)</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">0.00</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>��ǰ�ʲ�ֵ($)</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		   
		  <td width="95%" valign="top">-</td>
		</tr>

		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>��������</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">-</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>��Ч����</b></td>
		  <td width="5" valign="top" align="center"><b>:</b></td>
		  <td width="95%" valign="top">-</td>
		</tr>
		<tr height="20">
		  <td width="130" valign="top" nowrap="nowrap"><b>������������</b></td>
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
				    <tr id="ciDetails_history" style="display:none;">
					














<script>var weekStartDay = 1</script>


  <script>var isMSP = false; </script>


<script>var isCMDB = 'true';</script>

<script>
parent["OFFSET"] = -25200000;
parent["SERVER_OFFSET"] = -25200000;
window['date_format']='YYYY-MM-DD'; //NO I18N
</script>

	<script src="/scripts/dcIntegrationUtils.js?build=6100" type="text/javascript"></script>















	









<script type="text/JavaScript" language="JavaScript">


</script>

<!--<td valign="top" class='work_viewshade workviewshade-blue-bdr' style='bottom: 0px; padding-bottom: 0px;' > -->
<td class="details-tab-cnt">
  <table width="100%" cellspacing="0" cellpadding="0" border="0">

      
  
	<tbody><tr>

	<td valign="top">
    <div class="details-tab-header">

      <img alt="Resource Details" src="images/Workstation_Scan_History.gif">

      <strong>
	<div id="AUDIT_HISTORY">
	  ����վɨ����ʷ
	</div>
      </strong>	

      
      <span>

	[

	<a onclick="javascript:new Effect.ScrollTo('STATE_HISTORY');" href="javascript:void(0)">
	  ת�������ߵ���ʷ
	</a> 

	]

	&nbsp;&nbsp;&nbsp;&nbsp;
	<br>
	&nbsp;				


      </span>
	
    </div>	   


    <!-- ########################################################################## -->	
	<table width="100%" cellspacing="0" cellpadding="0" border="0">

      <tbody><tr>

	<td>
	  



<table width="100%" cellspacing="0" cellpadding="0" border="0" align="center">

	
	<tbody><tr> 
 		<td valign="top" class="alignRight">
							
		</td><td>	
   	</td></tr>







	<tr> 
 		<td valign="top" align="center">
 			<table width="99%" cellspacing="2" cellpadding="2" border="0" class="Historyitems">
            	<tbody><tr> 
                	<td id="date">
                	
                		
                		 
                		<table width="100%" cellspacing="0" cellpadding="0" border="0" onclick="javascript:historyShowhideAsset('S', '904');">
                        	<tbody><tr> 

                            	<td width="35" id="SHT_904"><img src="images/threadcollapse.gif"></td>

                            	<td>
                            		
                            		<table width="100%" cellspacing="0" cellpadding="0" border="0">
										<tbody><tr>
                            				<td width="50%">
		                            			ɨ��ʱ��
        		                    			<strong> Mar 11, 2010 09:15 PM </strong>
                            				</td>

                            				<td width="3%">
		                            			<strong> &nbsp;|&nbsp; </strong>
                            				</td>

	                           				<td>
    		                        			ɨ��״̬ :  
                    		        			<strong>�ɹ�</strong> 
                            					(û�б仯)
                            				</td>
                            			</tr>
                            		</tbody></table>
                            			
                            	</td>
                            	

                          	</tr>
						</tbody></table>
					</td>
				</tr>

				<tr>
					<td height="0">
					
						<table width="99%" cellspacing="0" cellpadding="0" border="0" class="show" id="SHIST_904">


							<tbody><tr> 
								<td width="20">
								  &nbsp;	
								</td>

 								<td valign="top" class="fontGray">
		        	 				����ɨ��û�з��ֱ仯��
								</td>
							</tr>

						</tbody></table>
					
					</td>
				</tr>		

			</tbody></table>
		</td>
	</tr>



<script>
historyShowhideAsset('S', '904');//No I18N
parent.closeDialog();
</script>



</tbody></table>



<div id="auditHistory_15"></div>


	</td>
      </tr>
    </tbody></table>

    <!-- ########################################################################## -->



    <br>

    &nbsp;
  </td>
</tr>
<tr>
  <td style="height:60px"></td>
</tr>



<tr> 

  <td valign="top"> 

    <div class="details-tab-header">

      <img alt="Resource Details" src="images/Resource_Ownership_History.gif">

      <strong>
	<div id="STATE_HISTORY"> 
	  �ʲ����й�ϵ��ʷ
	</div>
      </strong>	



      											

      <span>

	[

	<a onclick="javascript:new Effect.ScrollTo('AUDIT_HISTORY');" href="javascript:void(0)">
	  �����ʷ
	</a> 

	]

	&nbsp;&nbsp;&nbsp;&nbsp;
	<br>
	&nbsp;				


      </span>

      														

    </div>	   


    <!-- ########################################################################## -->	


    <table width="100%" cellspacing="0" cellpadding="0" border="0">

      <tbody><tr>

	<td>

	  



<table width="100%" cellspacing="0" cellpadding="0" border="0">


	<tbody><tr>
		<td valign="top" align="center">



	<table width="99%" cellspacing="2" cellpadding="2" border="0" onclick="javascript:historyShowhideAsset('O', '1');" class="Historyitems">





            	<tbody><tr> 
                	<td id="date"> 
                		<table width="100%" cellspacing="0" cellpadding="0" border="0">
                        	<tbody><tr>
                            	<td width="35" id="OHT_1"><img src="images/threadcollapse.gif"></td>
                        	 
                            	<td width="70%">
                            	
                            			������
   		                    			<strong> Nov 10, 2011 02:37 AM </strong>

                           				
                           				 
                           				 - <strong>demo</strong> 



                            	</td>
                            	
                            	<td> 
                            	 |&nbsp;&nbsp;״̬ <strong> In Use </strong>
                            	</td>
                            	
                          	</tr>
						</tbody></table>
					</td>
				</tr>


				<tr>
					<td height="0">
					
						<table width="99%" cellspacing="0" cellpadding="0" border="0" class="show" id="OHIST_1">

							<tbody><tr> 
								<td id="history">
									<ol>	


										<li class="mleft-15px">

״̬��In Store����ΪIn Use
</li>
										<li class="mleft-15px">

ָ�ɸ� �û� Administrator
</li>
									</ol>
								</td>
							</tr>
						</tbody></table>
					</td>
				</tr>
		</tbody></table>					




<script>
historyShowhideAsset('O', '1');
</script>



	<table width="99%" cellspacing="2" cellpadding="2" border="0" onclick="javascript:historyShowhideAsset('O', '0');" class="Historyitems">





            	<tbody><tr> 
                	<td id="date"> 
                		<table width="100%" cellspacing="0" cellpadding="0" border="0">
                        	<tbody><tr>
                            	<td width="35" id="OHT_0"><img src="images/threadcollapse.gif"></td>
                        	 
                            	<td width="70%">
                            	
                            			������
   		                    			<strong> Mar 11, 2010 09:15 PM </strong>



                            	</td>
                            	
                            	<td> 
                            	 |&nbsp;&nbsp;״̬ <strong> In Store </strong>
                            	</td>
                            	
                          	</tr>
						</tbody></table>
					</td>
				</tr>


				<tr>
					<td height="0">
					
						<table width="99%" cellspacing="0" cellpadding="0" border="0" class="show" id="OHIST_0">

							<tbody><tr> 
								<td id="history">
									<ol>	


										<li class="mleft-15px">

״̬����ΪIn Store��
</li>
									</ol>
								</td>
							</tr>
						</tbody></table>
					</td>
				</tr>
		</tbody></table>					




<script>
historyShowhideAsset('O', '0');
</script>



		</td>
	</tr>
</tbody></table><table>	






</table><table width="100%" cellspacing="1" cellpadding="0" border="0">
	<tbody><tr>
		<td>
		</td>
	</tr>
	
</tbody></table>


	</td>

      </tr>

    </tbody></table>





    <!-- ########################################################################## -->


    <br>
    &nbsp;	

  </td>

</tr>



<!-- Resource Details Stops -->







<!-- @@@@@ Last Audit Info -->			

</tbody></table><table width="100%" cellspacing="0" cellpadding="0" border="0">
<tbody><tr> 
	<td valign="top" style="background:#ffffda;" class="pbottom10 ptop10"> 
		
		<div id="LAST_SCAN">
		<div>



		&nbsp;
		�ϴ�ɨ�� 
		<strong>
			Mar 11, 2010 09:15 PM
		</strong>	
		
		
		&nbsp;
		ɨ��״̬ : 
		<strong>
			�ɹ�
		</strong>	
	       
	
		&nbsp;
		[
			<a onclick="NewWindow('WSInvokeScan.do?wsId=904&amp;action=scan&amp;wsName=aetest-xp.helpdesk-test.com','Scan_WS','600','330','yes','center')" title="Update with scan data" class="FontBlackLink" href="javascript:void(0);">
				����ɨ��
			</a>		
		]




		<br>
		<br>
		&nbsp;
		���� : 
		
		&nbsp;
		
		[
		
		<a null="" href="javascript:NewWindow('/asset/Inventory_TroubleShooting.jsp#','troubleshoot','800', '500', 'yes', 'center');">
			�������
		</a>			
		
		]
		


		
		
		   
	</div></div></td>
</tr>
</tbody></table>

<!-- @@@@@ Last Audit Info -->


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
