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
					<td><b class='mact'>��������</b></td>
					<td><i></i></td>
				</tr>
			</table> 
			<ul style="display: none;">
				<li><a href="javascript:void(0);" class="fontBlack" title="����鿴���й���վ">���й���վ</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="����鿴�ڿ⣨In Store���Ĺ���վ">�ڿ�Ĺ���վ</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="����鿴δ��ƵĹ���վ">δ��ƵĹ���վ</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="����鿴ϵͳ�е����пɹ�������">�ɹ�������</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="����鿴ϵͳ�����еĽ������">����ֹ�����</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="��������ʲ���">������</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="��������µ��ʲ���">������</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="֪ͨ����">֪ͨ����</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="���й�ϵ">���й�ϵ</a></li>
			</ul>
		</li>
	</ul>
	<ul id="CreateNewMenu" class="dropList">
		<li class="f">
			<table cellspacing="0" cellpadding="0" border="0">
				<tr>
					<td><em></em></td>
					<td><b class='mact'>�����µ�</b></td>
					<td><i></i></td>
				</tr>
			</table>
			<ul style="display: none;">
				<li><a href="javascript:void(0);" onClick="" class="fontBlack" title="�½�������">������</a></li>
				<li><a href="javascript:void(0);" onclick="" class="fontBlack" title="��������µ��ʲ�/���">�ʲ�/���</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="��������µĹ���վ">����վ</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="��������µķ�����">������</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="��������µ�������">������</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="��������µ����Э��">���Э��</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="��������µĶ�����">������</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="��������µĺ�ͬ">��ͬ</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="��������µ��û�">�û�</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="��������µĲ�Ʒ">��Ʒ</a></li>
				<li><a href="javascript:void(0);" class="fontBlack" title="��������µĳ���">����</a></li>
			</ul>
		</li>
	</ul>
	<div class="searchsection">
		<form name="SearchNForm" method="post" action="search.action">
			<input type="hidden" name="selectName" value="" id="selName">
			<table cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td class="search" valign="top">
						<a id="Search_Button" href="javascript:void(0);" class="search_filter" href="#">&nbsp; 
							<img src="images/search_allresources_icon.gif" id="searchImage" />
						</a>
					</td>
					<td>
						<input type="text" id="searchText" name="searchText" value="�����ʲ�" onblur="" onfocus="" class="" />
					</td>
					<td valign="top">
						<input type="submit" name="submitbutton" value="&nbsp;" onclick="" class="button" title="����">
					</td>
				</tr>
			</table>
		</form>
	</div>
</div>
<div id="SearchOptions" style="width: 180px; display: none;" class="border-dark-gray">
	<table border="0" cellspacing="0" cellpadding="0" width="190px">
		<tr>
			<td class="searchlink" colspan="2">
				<a href="javascript:void(0);" onclick=""><img src="images/search_allresources_icon.gif" />�����ʲ�</a> 
				<a href="javascript:void(0);" onclick=""><img src="images/search_workstation_icon.gif" />Workstation / Server</a>
				<a href="javascript:void(0);" onclick=""><img src="images/spacer.gif" class="usersicon" />�û�</a> 
				<a href="javascript:void(0);" onclick=""><img src="images/search_software_icon.gif" />���</a> 
				<a href="javascript:void(0);" onclick=""><img src="images/search_purchase_icon.gif" />������</a> 
				<a href="javascript:void(0);" onclick=""><img src="images/search_contact_icon.gif" />��ͬ</a> 
				<a href="javascript:void(0);" onclick=""><img src="images/spacer.gif" class="citype-defaulticn" />����������</a>
			</td>
		</tr>
	</table>
</div>