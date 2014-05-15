<%@ page language="java" contentType="text/html; charset=GB2312"
	pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<table cellspacing="0" cellpadding="0" border="0" class="floatRight" style=" height:100%; width:100%; display:block; " id="Left-Section">
	<tr>
		<td class="lnavtm alignRight" colspan="3"><img src="images/spacer.gif" class="lnavtr"></td>
	</tr>
	<tr>
		<td valign="top"><img width="10" height="506" border="0" src="images/spacer.gif"></td>
		<td valign="top" height="100%" class="content pad10pxrtlft alignLeft">
			<br>
			<table width="100%" cellspacing="0" cellpadding="0" border="0" class="LeftTable">
				<tr class="DashboardTableColor">
					<td width="100%" class="leftnavstrip"><a class="leftnavheading" href="javascript:void(0);"><img border="0" id="bulletResourcelinks" class="leftnavitems_expand" src="images/spacer.gif">资产</a></td>
				</tr>
				<tr>
					<td valign="top" class="RightItemBorder">
						<div id="Resourcelinks">
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action" id="ITAssets">工作站</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">服务器</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">网络设备</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">网络链路</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action" id="assetGroups">安全设备</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">存储</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">操作系统</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">中间件</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">数据库</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">应用软件</a></div>
						</div>
					</td>
				</tr>
			</table>
			<br>
			<table width="210" cellspacing="0" cellpadding="0" border="0">
				<tr> 
					<td> 
						<table width="100%" cellspacing="0" cellpadding="0" border="0">
							<tr>
								<td colspan="2">
									<b class="ptop">
										<b class="cb1 DashboardTableColor"> </b>
										<b class="cb2 DashboardTableColor"> </b>
										<b class="cb3 DashboardTableColor"> </b>
										<b class="cb4 DashboardTableColor"> </b>
									</b>
								</td>
							</tr>
							<tr class="DashboardTableColor"> 
								<td class="leftnavstrip">
									<a class="leftnavheading" href="javascript:void(0);"><img vspace="0" hspace="1" border="0" id="bulletrecentitems" class="leftnavitems_expand" src="images/spacer.gif">可用性巡检</a>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr> 
					<td valign="top" class="RightItemBorder">
						<div id="recentitems"> 
							<table width="95%" cellspacing="0" cellpadding="4" border="0">
								<tr>
									<td width="8" class="RIbottomBorder" nowrap class="fontBlack">
										<img src="images/ri_asset_icon.gif" title="连通性检测" width="16" height="16" hspace="0" vspace="0" id='recentItemImg' />
									</td>
									<td class="RIbottomBorder">
										<a href="javascript:void(0);" class="FontBlackLink" title="连通性检测" style="width: 100%">连通性检测</a>
									</td>
								</tr>
								<tr>
									<td width="8" class="RIbottomBorder" nowrap class="fontBlack">
										<img src="images/ri_asset_icon.gif" title="数据接口检测" width="16" height="16" hspace="0" vspace="0" id='recentItemImg'>
									</td>
									<td class="RIbottomBorder">
										<a href="javascript:void(0);" class="FontBlackLink" title="数据接口检测" style="width: 100%">数据接口检测</a>
									</td>
								</tr>
								<tr>
									<td width="8" class="RIbottomBorder" nowrap class="fontBlack">
										<img src="images/ri_asset_icon.gif" title="可用性检测" width="16" height="16" hspace="0" vspace="0" id='recentItemImg'>
									</td>
									<td class="RIbottomBorder">
										<a href="javascript:void(0);" class="FontBlackLink" title="可用性检测" style="width: 100%">可用性检测</a>
									</td>
								</tr>
								<tr>
									<td width="8" class="RIbottomBorder" nowrap class="fontBlack">
										<img src="images/ri_asset_icon.gif" title="可用性分析" width="16" height="16" hspace="0" vspace="0" id='recentItemImg'>
									</td>
									<td class="RIbottomBorder">
										<a href="javascript:void(0);" class="FontBlackLink" title="可用性分析" style="width: 100%">可用性分析</a>
									</td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>
			<br>
		</td>
		<td valign="top" id="divHolder" class="divHolder centerclosebg">
			<span style="height:450px;"><img width="10" border="0" id="LeftIndicatorClosed" style="min-height:450px;height:450px;" src="images/spacer.gif"></span>
		</td>
	</tr>
	<tr height="13">
		<td class="lnavbm alignRight" colspan="3"><img src="images/spacer.gif" class="lnavbr"></td>
	</tr>
</table>
<table width="20" height="100%" cellspacing="0" cellpadding="0" border="0" style="display: none;" id="LeftOpen">
	<tr height="13">
		<td class="lnavtm alignRight"><img src="images/spacer.gif" class="lnavhtr"></td>
	</tr>
	<tr>
		<td valign="top" class="centerclosebg">
			<a style="height:450px;" class="leftnavshowarrow" href="javascript:void(0);"><img width="10" height="450px" border="0" class="leftnavshowarrow" style="min-height:450px;height:450px;" id="LeftIndicator" src="images/spacer.gif"></a>
		</td>
	</tr>
	<tr height="13">
		<td class="lnavbm alignRight"><img src="images/spacer.gif" class="lnavhbr"></td>
	</tr>
</table>