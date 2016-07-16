<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.mohammadazadeh.ems.domain.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html dir="rtl" lang="fa">
<head>
  <title>ایجاد پروفایل</title>
</head>

<%@ include file="header.jsp" %>

<body>

<%@ include file="navigation.jsp" %>

	<div class="container" id="wrap">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<form action="adduser" method="get" accept-charset="utf-8" class="form" role="form" validate>
					<legend>ثبت نام کاربر جدید</legend>
					<div class="row">
						<div class="col-xs-6 col-md-6">
							<input type="password" name="password" class="form-control input-lg" placeholder="رمز عبور"  required/>
						</div>
						<div class="col-xs-6 col-md-6">
							<input type="text" name="username" class="form-control input-lg" placeholder="نام کاربری"  required/>   
						</div>
					</div>
					<div class="row">
						<div class="col-xs-6 col-md-6">
							<input type="text" name="lastname" class="form-control input-lg" placeholder="نام خانوادگی"  required/> 
						</div>
						<div class="col-xs-6 col-md-6">
							<input type="text" name="firstname" class="form-control input-lg" placeholder="نام"  required/>
						</div>
					</div>
					<input type="text" name="father_name" class="form-control input-lg" placeholder="نام پدر"  required/>
					<input type="password" name="ssn" class="form-control input-lg" placeholder="شماره ملی"  required/>
					<input type="email" name="email" class="form-control input-lg" placeholder="پست الکترونیکی"  required/>
					<input type="text" name="phone" class="form-control input-lg" placeholder="تلفن"  required/>
					<input type="text" name="address" class="form-control input-lg" placeholder="آدرس"  required/>
					<select class="form-control" name="user_role">
						<option value="student">دانش آموز</option>
						<option value="teacher">معلم</option>
						<option value="manager">مدیر</option>
					</select>
					<br/>
					<hr/>
					<button class="btn btn-lg btn-primary btn-block btn-success" type="submit">ثبت نام</button>
				</form>
			</div>
		</div>
	</div>
	
<%@ include file="footer.jsp" %>
</body>
</html>