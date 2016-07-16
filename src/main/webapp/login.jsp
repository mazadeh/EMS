<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.mohammadazadeh.ems.domain.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html dir="rtl" lang="fa">
<head>
  <title>ورود کاربران</title>
</head>

<%@ include file="header.jsp" %>

<body>
	<div class="container" style="margin-top:40px">
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong><h4>نام کاربری و گذرواژه خود را وارد کنید.</h4></strong>
					</div>
					<div class="panel-body">
						<form name="loginForm" method="post" action="j_security_check">
							<fieldset>
								<table border="0" style="width:320px;">
									<tbody>
										<tr>
											<td>نام کاربری:	</td>
											<td><input name="j_username" type="text"></td>
										</tr>
										<tr>
											<td>گذرواژه:</td>
											<td><input name="j_password" type="password"></td>
										</tr>
										<tr>
											<td colspan="2" align="center" style="padding-top:20px;">
												<input name="Submit" class="btn btn-success btn-block" type="submit" value="ورود">
											</td>
										</tr>
									</tbody>
								</table>
								<br/>
								<hr/>
								<a href="password-reset.jsp">گذرواژه خود را فراموش کرده اید؟</a>
								<br/>
								<a href="">هم اکنون ثبت نام کنید!</a>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
