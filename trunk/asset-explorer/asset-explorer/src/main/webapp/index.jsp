<%@ page language="java" contentType="text/html; charset=GB2312"
	pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>��½ϵͳ</title>
<link rel="stylesheet" href="style/style.css" type="text/css">
<style type="text/css">
td.tdLabel {
	font-family: KaiTi_GB2312;
	font-size: 20px;
}
</style>
</head>
<body style="background-image:url(images/login-background.jpg);">
<center>
<div style="margin-top: 230px;text-align:-moz-center;font-size:55px;">��ȫ���м��ƽ̨</div>
<div style="margin-top: 50px;text-align:-moz-center;">
<s:form action="main_page">
  <s:textfield name="userName" label="�û���" />
  <s:password name="password" label="����" />
  <s:submit value="��½" cssClass="cust_button" />
</s:form>
</div>
</center>
</body>
</html>