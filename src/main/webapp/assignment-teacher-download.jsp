<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.mohammadazadeh.ems.domain.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html ng-app="stock" dir="rtl" lang="fa">
<head>
  <title>دریافت تمرین-معلم</title>
</head>

<%@ include file="header.jsp" %>

<body>

<%@ include file="navigation.jsp" %>

<div class="container">
<div class="row">
<h1>دریافت تمرین</h1>
</div>
<div class="row">
<br><br>
<div class="col-md-4"></div>
<div class="col-md-4"></div>
<select class="col-md-4 selector_excersise">
  <option value="volvo">شماره تمرین</option>
  <option value="saab">تمرین ۱</option>
  <option value="opel">تمرین ۲</option>
  <option value="audi">تمرین ۳</option>
</select>

<br><br>
</div>
 <div class="row">
 <table class="table table-bordered table_download_Excersis_tch">
    <thead>
      <tr>
        <th>نام و نام خانوادگی دانش آموز</th>
        <th>فایل آپلود شده توسط دانش آموز</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>نام و نام خانوادگی</td>
        <td><a href="">فایل آپلود شده</a></td>
      </tr>
   
    </tbody>
  </table>
 </div>
</div>

<%@ include file="footer.jsp" %>    

</body>
</html>

