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
			</table> <iframe width="205" height="220" frameborder="0"
				src="/framework/html/blank.html" style="display: none;" class="dLf1"></iframe>
			<ul style="display: none;">
				<li><a href="/WorkstationListView.do" class="fontBlack"
					title="Click to view all workstations">All Workstations</a></li>
				<li><a href="/WorkstationListView.do?AssetType=In Store"
					class="fontBlack" title="Click to view the workstation(s) In Store">Workstations
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
					class="fontBlack" title="Notification Rules">Notification Rules</a></li>

				<li><a
					href="/CMDBAction.do?mode=listView&allRelationships=true"
					class="fontBlack" title="All Relationships">All Relationships</a></li>

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
				src="/framework/html/blank.html" style="display: none;" class="dLf1"></iframe>
			<ul style="display: none;">


				<li><a href="javascript:void(0)"
					onClick="showURLInDialog('/AddCI.do?mode=showDialog','closeButton=no,position=absolute,top=100,height=500,overflow=visible,left=350,modal=yes')"
					class="fontBlack" title="Add New CI">CI</a></li>

				<li><a href="javascript:void(0)"
					onclick="showURLInDialog('/AddCI.do?mode=showAssetDialog&filter=allassetproducts','closeButton=no,position=absolute,top=100,height=500,overflow=visible,left=350,modal=yes')"
					class="fontBlack" title="Click to create a new Asset/Component">Asset/Component</a></li>
				<li><a href="/ManualNodeAddition.do" class="fontBlack"
					title="Click to create a new workstation">Workstation</a></li>
				<li><a href="/ManualNodeAddition.do?isServer=true"
					class="fontBlack" title="Click to create a New Server">Server</a></li>

				<li><a href="/SoftwareLicense.do?operation=new"
					class="fontBlack" title="Click to create New Software License">Software
						License</a></li>
				<li><a href="/LicenseAgreement.do?operation=newagreement"
					class="fontBlack" title="Click to create a New License Agreement">License
						Agreement</a></li>

				<li><a href="/PurchaseOrder.do?module=newPO" class="fontBlack"
					title="Click to create a New Purchase Order.">Purchase Order</a></li>

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
							src="images/search_allresources_icon.gif" id="searchImage" /> <script>document.getElementById('selName').value=getMessageForKey("sdp.common.search.allresources")</script>
					</a></td>
					<td><input type="text" name="searchText" value="搜索资产"
						onblur="checkField(this)" onfocus="checkField(this)" class=""
						id="searchText"> <script>
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
						onclick="return validateSearchValue(this.form)" class="button"
						title="Go"> <!--a href="#" class="go_button">GO</a-->


					</td>
				</tr>
			</table>
		</form>
	</div>
</div>