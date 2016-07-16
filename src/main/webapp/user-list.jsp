<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.mohammadazadeh.ems.domain.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html dir="rtl" lang="fa">
<head>
  <title>لیست دانش آموز</title>
</head>

<%@ include file="header.jsp" %>

<body>

<%@ include file="navigation.jsp" %>

<div class="container">
	<div class="row">
		<h1>لیست دانش آموزان</h1>
	</div>
	<div class="row col-md-6 col-md-6 pull-right">
		<table class="table table-bordered table_download_Excersis_tch">
			<thead>
				<tr>
					<th>نام</th>
					<th>نام خانوادگی</th>
					<th>آدرس ایمیل</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${userList}" var="user">
					<tr>
						<td><c:out value="${user.firstname}"/></td>
						<td><c:out value="${user.lastname}"/></td>
						<td style="text-align:left;"><c:out value="${user.email}"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<FORM>
			<INPUT TYPE="button" value="چاپ گزارش" onClick="window.print()" class="btn btn-info hidden-print">
		</FORM>
	</div>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>