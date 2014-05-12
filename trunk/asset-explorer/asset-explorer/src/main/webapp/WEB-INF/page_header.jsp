<%@ page language="java" contentType="text/html; charset=GB2312"
	pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<table cellpadding="0" id="topHeader" cellspacing="0" border="0"
	width="100%">
	<tr>
		<td valign="top"><input type="hidden" name="loggedUserID"
			value="2"> <input type="hidden" name="tabName" value="Home">
			<div id="dropmenudiv" style="visibility: hidden;"
				onMouseOver="clearhidemenu()" onMouseOut="dynamichide(event)"></div>
			<!--link href="/style/CreamyBlue_new.css" rel="stylesheet" type="text/css"-->
			<div id="timeToLoad" style="display: none;"></div> <!-- For fixing relogin issue start -->
			<!-- For fixing relogin issue end-->
			<table cellspacing="0" cellpadding="0" border="0" class="top_links">
				<tr>
					<!-- Should not show the below table for registered and free license. Only for Traial version  -->
					<td width="20" nowrap="nowrap"></td>
					<td valign="top" class="ptop3"><a
						href="javascript:NewWindow('../jsp/About.jsp','About','525','325','yes','center')"
						class="pleft8 pright8">关于</a></td>
					<td valign="top" class="ptop3" width="1"><img width="1"
						hspace="3" height="18" class="toplink-sptr"
						src="images/spacer.gif"></td>
					<td valign="top" class="ptop3"><a href="javascript:void(0)"
						onclick="" class="pleft8 pright8">联系我们</a></td>
					<td valign="top" class="ptop3" width="1"><img width="1"
						hspace="3" height="18" class="toplink-sptr"
						src="images/spacer.gif"></td>
					<td valign="top" class="ptop3"><a
						href="http://www.manageengine.com/products/asset-explorer/help/index.html"
						class="pleft8 pright8" target="new">帮助</a></td>
					<td valign="top" class="ptop3" width="1"><img width="1"
						hspace="3" height="18" class="toplink-sptr"
						src="images/spacer.gif"></td>
					<td valign="top" class="ptop5" nowrap="nowrap"><nobr>
							<a href="javascript: preLogout()" style="display: inline"
								class="pleft8 pright8"><strong>退出</strong></a> [ Tim-Tian ]
						</nobr></td>
					<td width="20" nowrap="nowrap"></td>
				</tr>
			</table>

			<div class="efx">
				<table cellpadding="0" cellspacing="0" border="0" width="500">
					<tr>
						<td valign="bottom">
							<div class="logo">安全运行监管平台</div>
						</td>
						<td valign="bottom">


							<table cellpadding="0" class="top_tabs" cellspacing="0"
								border="0">
								<tr>
									<td class="first-child"><a class="active"
										href="/AssetHomePage.do">首页</a></td>
									<!--checking for remote server-->
									<td><a href="/InventoryHome.do">资产</a></td>
									<!-- Software Tab -->
									<!-- <td><a href="/SoftwareHome.do">软件</a></td> -->
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
						<td></td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</div>
			<div id="SearchOptions" style="width: 180px; display: none;"
				class="border-dark-gray">
				<table border="0" cellspacing="0" cellpadding="0" width="190px">
					<tr>
						<td class="searchlink" colspan="2"><a href="#"
							onclick="changeSearchOption('Home')"><img
								src="images/search_allresources_icon.gif" />All Assets</a> <a
							href="#" onclick="changeSearchOption('Assets')"><img
								src="images/search_workstation_icon.gif" />Workstation / Server</a>
							<a href="#" onclick="changeSearchOption('Users')"><img
								src="images/spacer.gif" class="usersicon" />Users</a> <a href="#"
							onclick="changeSearchOption('Software')"><img
								src="images/search_software_icon.gif" />Software</a> <a href="#"
							onclick="changeSearchOption('Purchase')"><img
								src="images/search_purchase_icon.gif" />Purchase</a> <a href="#"
							onclick="changeSearchOption('Contracts')"><img
								src="images/search_contact_icon.gif" />Contracts</a> <a href="#"
							onclick="changeSearchOption('CMDB')"><img
								src="images/spacer.gif" class="citype-defaulticn" />All CIs</a></td>

						<td width="6px">&nbsp;</td>
					</tr>
				</table>
			</div></td>
	</tr>
</table>