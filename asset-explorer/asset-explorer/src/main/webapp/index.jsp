<%@ page language="java" contentType="text/html; charset=GB2312"
	pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>登陆系统</title>
<link rel="stylesheet" href="style/common.css" type="text/css">
</head>
<body style="background-image:url(image/login-background.jpg);">
<center>
<div style="margin-top: 260px;text-align:-moz-center;">
<s:form action="login">
  <s:textfield name="userName" label="用户名" />
  <s:textfield name="password" label="密码" />
  <s:submit value="登陆" cssClass="button" />
</s:form>
</div>
</center>
</body>
</html>