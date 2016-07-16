<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.mohammadazadeh.ems.domain.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html dir="rtl" lang="fa">
<head>
  <title>گواهی اشتغال به تحصیل</title>
</head>

<%@ include file="header.jsp" %>

<body>

<%@ include file="navigation.jsp" %>

<div class="container">
    <div class="col-md-3"></div>
    <div class="row user-menu-container square">
        <div class="col-md-7 user-details">
		  <p style="text-align: center;">بسمه تعالی</p>
		  <br/>
		  <p style="float:left; padding-left:5%;">تاریخ: 1395/04/27</p>
		  <br/>
		  <p>با سلام:</p>
		  <br/>
		  <div class="user-image" id="profileImage" style="float:left; width:40%; padding: 0px 7px;">
			<img src="./image/Student_image/${user.username}.jpg" class="img-responsive thumbnail" id="image_profile" >
		  </div>
          <h3> گواهی اشتغال به تحصیل </h3>
		  <br/>
		  <div>
			<p style="text-align: justify; text-justify: inter-word;">بدین وسیله گواهی می‌گردد آقای/خانم <b>${user.firstname} ${user.lastname}</b> به شماره شناسنامه <b>${user.ssn}</b> متولد <b>${user.birthday}</b> فرزند <b>${user.fatherName}</b> در این مرکز مشغول به تحصیل می‌باشد.</p>
			<div style="font-weight: bold;"></div>
			<p>اين گواهي صرفاً جهت اطلاع صادر شده و فاقد هر گونه ارزش دیگری می باشد.</p>
			<br/>
		  </div>
		  <br/><br/><br/><br/>
		  <p style="padding-right:70%;">مدیر مدیریان</p>
		  <br/>
		  <p style="padding-right:62%;">سرپرست اداره کل امور آموزشی</p>
		  <br/><br/><br/>
        </div>
		<div class="hidden-print">
			<FORM>
				<INPUT TYPE="button" value="چاپ گزارش" onClick="window.print()" class="btn btn-info">
			</FORM>
		</div>
	</div>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>