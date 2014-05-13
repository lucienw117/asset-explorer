<%@ page language="java" contentType="text/html; charset=GB2312"
	pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="top-grayband">
	<ul id="QuickLinksMenu" class="dropList">
		<li class="f">
			<table cellspacing="0" cellpadding="0" border="0">
				<tr>
					<td><em></em></td>
					<td><b class='mact'>快速链接</b></td>
					<td><i></i></td>
				</tr>
			</table> 
			<ul style="display: none;">
				<li><a href="javascript:void(0);" class="fontBlack" title="点击查看所有工作站">所有工作站</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="点击查看在库（In Store）的工作站">在库的工作站</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="点击查看未审计的工作站">未审计的工作站</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="点击查看系统中的所有可管理的软件">可管理的软件</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="点击查看系统中所有的禁用软件">被禁止的软件</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="点击创建资产组">管理组</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="点击创建新的资产组">创建组</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="通知规则">通知规则</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="所有关系">所有关系</a></li>
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
			</table>
			<ul style="display: none;">
				<li><a href="javascript:void(0);" onClick="" class="fontBlack" title="新建配置项">配置项</a></li>
				<li><a href="javascript:void(0);" onclick="" class="fontBlack" title="点击创建新的资产/组件">资产/组件</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="点击创建新的工作站">工作站</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="点击创建新的服务器">服务器</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="Click to create New Software License">Software License</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="Click to create a New License Agreement">License Agreement</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="Click to create a New Purchase Order.">Purchase Order</a></li>
				<li><a href="javascript:void(0);" title="Click to create a new Contract">Contract</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="Click to create a New User">User</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="Click to create New Product">Product</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="Click to create a New Vendor">Vendor</a></li>
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
							src="images/search_allresources_icon.gif" id="searchImage" /> <script>document.getElementById('selName').value=getMessageForKey("sdp.common.search.allresources")</script>
					</a></td>
					<td><input type="text" name="searchText" value="搜索资产"
						onblur="checkField(this)" onfocus="checkField(this)" class=""
						id="searchText">
						</td>
					<td valign="top">
						<!--<input type="submit" name="submitbutton" value="Go" onclick="return validateSearchValue(this.form)" class="button" title="Go">-->
						<input type="submit" name="submitbutton" value="&nbsp;"
						onclick="return validateSearchValue(this.form)" class="button"
						title="Go"> <!--a href="#" class="go_button">GO</a-->


					</td>
				</tr>
			</table>
		</form>
	</div>
</div>
<div id="SearchOptions" style="width: 180px; display: none;" class="border-dark-gray">
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
</div>