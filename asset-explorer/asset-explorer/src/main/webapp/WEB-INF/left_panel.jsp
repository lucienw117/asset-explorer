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
					<td width="100%" class="leftnavstrip"><a class="leftnavheading" href="javascript:void(0);"><img border="0" id="bulletResourcelinks" class="leftnavitems_expand" src="images/spacer.gif">�ʲ�</a></td>
				</tr>
				<tr>
					<td valign="top" class="RightItemBorder">
						<div id="Resourcelinks">
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action" id="ITAssets">����վ</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">������</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">�����豸</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">������·</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action" id="assetGroups">��ȫ�豸</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">�洢</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">����ϵͳ</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">�м��</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">���ݿ�</a></div>
							<div class="accordionTabTitleBar" id="subHeader"><a onclick="" href="asset_list.action">Ӧ�����</a></div>
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
									<a class="leftnavheading" href="javascript:void(0);"><img vspace="0" hspace="1" border="0" id="bulletrecentitems" class="leftnavitems_expand" src="images/spacer.gif">������Ѳ��</a>
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
										<img src="images/ri_asset_icon.gif" title="��ͨ�Լ��" width="16" height="16" hspace="0" vspace="0" id='recentItemImg' />
									</td>
									<td class="RIbottomBorder">
										<a href="javascript:void(0);" class="FontBlackLink" title="��ͨ�Լ��" style="width: 100%">��ͨ�Լ��</a>
									</td>
								</tr>
								<tr>
									<td width="8" class="RIbottomBorder" nowrap class="fontBlack">
										<img src="images/ri_asset_icon.gif" title="���ݽӿڼ��" width="16" height="16" hspace="0" vspace="0" id='recentItemImg'>
									</td>
									<td class="RIbottomBorder">
										<a href="javascript:void(0);" class="FontBlackLink" title="���ݽӿڼ��" style="width: 100%">���ݽӿڼ��</a>
									</td>
								</tr>
								<tr>
									<td width="8" class="RIbottomBorder" nowrap class="fontBlack">
										<img src="images/ri_asset_icon.gif" title="�����Լ��" width="16" height="16" hspace="0" vspace="0" id='recentItemImg'>
									</td>
									<td class="RIbottomBorder">
										<a href="javascript:void(0);" class="FontBlackLink" title="�����Լ��" style="width: 100%">�����Լ��</a>
									</td>
								</tr>
								<tr>
									<td width="8" class="RIbottomBorder" nowrap class="fontBlack">
										<img src="images/ri_asset_icon.gif" title="�����Է���" width="16" height="16" hspace="0" vspace="0" id='recentItemImg'>
									</td>
									<td class="RIbottomBorder">
										<a href="javascript:void(0);" class="FontBlackLink" title="�����Է���" style="width: 100%">�����Է���</a>
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