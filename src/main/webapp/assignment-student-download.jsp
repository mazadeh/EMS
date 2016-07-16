<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.mohammadazadeh.ems.domain.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html dir="rtl" lang="fa">
<head>
  <title>دریافت تمرین - دانش آموز</title>
</head>

<%@ include file="header.jsp" %>

<body>

<%@ include file="navigation.jsp" %>

<div class="container">
<div class="row">
<h1>دریافت تمرین</h1>
</div>
 <div class="row">
 <table class="table table-bordered table_download_Excersis_std">
    <thead>
      <tr>
        <th>نام تمرین</th>
		<th>محتوا</th>
        <th>فایل آپلود شده</th>
      </tr>
    </thead>
    <tbody>
	  <c:forEach begin="0" end="${assignmentSize - 1}" varStatus="loop">
	    <tr>
	      <td><c:out value="${assignmentList[loop.index].courseName}"/></td>
		  <td><c:out value="${assignmentList[loop.index].content}"/></td>
	      <td><a href="${assignmentList[loop.index].attachment}">دانلود</a></td>
	    </tr>
	  </c:forEach>
    </tbody>
  </table>
 </div>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>

