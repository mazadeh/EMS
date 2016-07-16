<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.mohammadazadeh.ems.domain.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>

<!DOCTYPE html>
<% session.invalidate(); %>
<html dir="rtl" lang="fa">
<head>
  <meta http-equiv="Refresh" content="2;url=./">
  <title>خدانگهدار</title>
</head>

<%@ include file="header.jsp" %>

<body>

	<div class="container">
		<div class="row">
			<div class="col-sm-4"></div>
				<div class="col-md-4">
					<div class="alert-message alert-message-success" style=" margin: 20px 0;padding: 20px;border-right: 3px solid #eee; background-color: #F4FDF0; border-color: #3C763D;">
						<h4 style=" margin-top: 0; margin-bottom: 5px; color: #3C763D;">شما با موفقیت از سیستم خارج شدید</h4>
						<p>از شما بخاطر استفاده از این سامانه متشکریم!</p>
						<a href="/ems/">می خواهید به صفحه اصلی باز گردید؟</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
