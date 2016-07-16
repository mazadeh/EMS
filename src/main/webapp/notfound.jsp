<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.mohammadazadeh.ems.domain.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html dir="rtl" lang="fa">
<head>
  <title>یافت نشد</title>
</head>

<%@ include file="header.jsp" %>

<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-4"></div>
				<div class="col-md-4">
					<div class="aalert-message alert-message-danger" style=" margin: 20px 0;padding: 20px;border-right: 3px solid #eee;  background-color: #fdf7f7; border-color: #d9534f;">
						<h2 style=" margin-top: 0; margin-bottom: 5px; color: #d9534f;">یافت نشد!</h2>
						<h4>صفحه ای که درخواست کرده اید در دسترس نمی باشد.</h4>
						<br/>
						<hr/>
						<div style="text-align:left;">
							<h5> ${request.requestURI} </h5>
							<h5>JSP URI, URL, Context</h5>
							<p>Request Context Path: <%= request.getContextPath() %></p>
							<p>Request URI:          <%= request.getRequestURI() %></p>
							<p>Request URL:          <%= request.getRequestURL() %></p>
						</div>
						<hr/>
						<a href="/ems/">می خواهید به صفحه اصلی باز گردید؟</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
