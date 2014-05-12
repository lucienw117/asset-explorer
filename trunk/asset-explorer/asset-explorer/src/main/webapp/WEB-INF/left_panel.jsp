<%@ page language="java" contentType="text/html; charset=GB2312"
	pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<table cellpadding="0" id="topHeader" cellspacing="0" border="0"
	width="100%">
	<!--  Left Panel Start -->
	<td align="center" valign="top" class="Lefttd">

		<table id="Left-Section" cellspacing="0" cellpadding="0" border="0"
			style="height: 100%; width: 100%; display: block;" class='floatRight'>
			<tr>
				<td colspan="3" class="lnavtm alignRight"><img class="lnavtr"
					src="images/spacer.gif"></td>
			</tr>
			<tr>
				<td valign="top"><img src="images/spacer.gif" width="10"
					height=506 border="0" /></td>
				<td valign='top' height="100%"
					class='content pad10pxrtlft alignLeft'><br> <SCRIPT
						src="/scripts/common.js?6100" type="text/javascript"></SCRIPT> <script>
var css_browser_selector = function() {
	var ua=navigator.userAgent.toLowerCase();
	var is=function(t){ return ua.indexOf(t) != -1; };
	var h=document.getElementsByTagName('html')[0];
	var b=(!(/opera|webtv/i.test(ua))&&/msie (\d)/.test(ua))?('ie ie'+RegExp.$1):is('gecko/')? 'gecko':is('opera/9')?'opera opera9':/opera (\d)/.test(ua)?'opera opera'+RegExp.$1:is('konqueror')?'konqueror':is('applewebkit/')?'webkit safari':is('mozilla/')?'gecko':'';
	var os=(is('x11')||is('linux'))?' linux':is('mac')?' mac':is('win')?' win':'';
	var c=b+os+' js';
	h.className += h.className?' '+c:c;
}();
</script>

					<table class="LeftTable" width='100%' border="0" cellspacing="0"
						cellpadding="0">
						<tr class="DashboardTableColor">
							<td width="100%" class="leftnavstrip"><a
								href="javascript:void(0)" class="leftnavheading"><img
									src="images/spacer.gif" class="leftnavitems_expand" border="0"
									id="bulletResourcelinks">资产</a></td>
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
					<table width="210" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td colspan="2"><b class="ptop"> <b
												class="cb1 DashboardTableColor"> </b> <b
												class="cb2 DashboardTableColor"> </b> <b
												class="cb3 DashboardTableColor"> </b> <b
												class="cb4 DashboardTableColor"> </b>
										</b></td>
									</tr>
									<tr class="DashboardTableColor">

										<td class="leftnavstrip"><a href="javascript:void(0)"
											class="leftnavheading"><img src="images/spacer.gif"
												class="leftnavitems_expand" hspace="1" vspace="0" border="0"
												id="bulletrecentitems">可用性巡检 </a></td>

									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td valign="top" class="RightItemBorder">


								<div id="recentitems">
									<table width="95%" border="0" cellspacing="0" cellpadding="4">

										<tr>
											<td width="8" class="RIbottomBorder" nowrap class="fontBlack"><img
												src="images/ri_asset_icon.gif"
												title="pa01-nb-think.workgroup" width="16" height="16"
												hspace="0" vspace="0" id='recentItemImg'></td>
											<td class="RIbottomBorder"><a
												href="ViewWSDetails.do?wsId=5409" class="FontBlackLink"
												title="pa01-nb-think.workgroup" style="width: 100%">连通性检测</a></td>
										</tr>

										<tr>
											<td width="8" class="RIbottomBorder" nowrap class="fontBlack"><img
												src="images/ri_asset_icon.gif"
												title="acc12-nb-think.workgroup" width="16" height="16"
												hspace="0" vspace="0" id='recentItemImg'></td>
											<td class="RIbottomBorder"><a
												href="ViewWSDetails.do?wsId=5408" class="FontBlackLink"
												title="acc12-nb-think.workgroup" style="width: 100%">数据接口检测</a></td>
										</tr>

										<tr>
											<td width="8" class="RIbottomBorder" nowrap class="fontBlack"><img
												src="images/ri_asset_icon.gif" title="ca06-pc.workgroup"
												width="16" height="16" hspace="0" vspace="0"
												id='recentItemImg'></td>
											<td class="RIbottomBorder"><a
												href="ViewWSDetails.do?wsId=5407" class="FontBlackLink"
												title="ca06-pc.workgroup" style="width: 100%">可用性检测</a></td>
										</tr>

										<tr>
											<td width="8" class="RIbottomBorder" nowrap class="fontBlack"><img
												src="images/ri_asset_icon.gif" title="Hp Computers"
												width="16" height="16" hspace="0" vspace="0"
												id='recentItemImg'></td>
											<td class="RIbottomBorder"><a
												href="ViewWSDetails.do?wsId=3301" class="FontBlackLink"
												title="Hp Computers" style="width: 100%">可用性分析</a></td>
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

				<td class="divHolder centerclosebg" id="divHolder" valign="top"><span
					style="height: 450px;"><img src="images/spacer.gif"
						width="10" style='min-height: 450px; height: 450px;' border="0"
						id="LeftIndicatorClosed" /></span></td>
			</tr>
			<tr height="13">
				<td colspan="3" class="lnavbm alignRight"><img class="lnavbr"
					src="images/spacer.gif"></td>
			</tr>
		</table>
		<table cellspacing="0" cellpadding="0" border="0" height="100%"
			width="20" id="LeftOpen" style="display: none;">
			<tr height="13">
				<td class="lnavtm alignRight"><img class="lnavhtr"
					src="images/spacer.gif"></td>
			</tr>
			<tr>
				<td valign="top" class="centerclosebg"><a
					href="javascript:showLeftNav('Open')" class="leftnavshowarrow"
					style="height: 450px;"><img src="images/spacer.gif" width="10"
						border="0" height="450px" id="LeftIndicator"
						style='min-height: 450px; height: 450px;' class="leftnavshowarrow" /></a></td>
			</tr>
			<tr height="13">
				<td class="lnavbm alignRight"><img class="lnavhbr"
					src="images/spacer.gif"></td>
			</tr>
		</table>

	</td>
	<!--  Left Panel End -->