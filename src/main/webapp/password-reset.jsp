<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.mohammadazadeh.ems.domain.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html dir="rtl" lang="fa">
<head>
  <title>تازه سازی گذرواژه</title>
</head>

<%@ include file="header.jsp" %>

<body>
	<div class="container" style="margin-top:40px">
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong>نام کاربری و آدرس ایمیل خود را وارد کنید.</strong>
					</div>
					<div class="panel-body">
						<form name="loginForm" method="post" action="j_security_check">
							<fieldset>
								<table border="0" style="width:320px;">
									<tbody>
										<tr>
											<td>نام کاربری:	</td>
											<td><input name="username" type="text" size="20"></td>
										</tr>
										<tr>
										</tr>
										<tr>
											<td>آدرس ایمیل: </td>
											<td><input name="email" type="email" size="20"></td>
										</tr>
										<tr>
											<td></td>
											<td colspan="2" align="center" style="padding-top:20px;">
												<input name="Submit" class="btn btn-primary btn-block" type="submit" value="تازه کن">
											</td>
											<td></td>
										</tr>
									</tbody>
								</table>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
