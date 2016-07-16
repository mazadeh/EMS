<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.mohammadazadeh.ems.domain.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html ng-app="stock" dir="rtl" lang="fa">
<head>
  <title>معلم- پروفایل</title>
</head>

<%@ include file="header.jsp" %>

<body>

<%@ include file="navigation.jsp" %>
  
<div class="container">
    <div class="col-md-3"></div>
    <div class="row user-menu-container square">
        <div class="col-md-7 user-details">
            <div class="row coralbg white">
                <div class="col-md-6 no-pad">
                    <div class="user-pad">
                        <h4>شما در قالب </h4>
                        <h3 class="white">${user.firstname} ${user.lastname}</h3>
                        <h4>وارد شدید</h4>
                       
                    </div>
                </div>
                <div class="col-md-6 no-pad">
                    <div class="user-image" id="profileImage">
                        <img src="./image/Teacher_image/${user.username}.jpg" class="img-responsive thumbnail" id="image_profile" >
                    </div>
                </div>
            </div>
           
          <h3> مشخصات فردی </h3>
          <div class="col-md-8"></div>
          <div class="col-md-8 col-sm-8 col-sm-offset-4">
  <form class="form-horizontal" role="form">
  
    <div class="form-group">
      <div class="col-sm-6">
        <input class="form-control"  type="text" placeholder="${user.firstname}" disabled>
      </div>
      <label for="Name" class="col-sm-1 control-label control-form lable-profile" id="name_edit">نام</label>
    </div>
    
    <div class="form-group">
      <div class="col-sm-6">
        <input class="form-control" type="text" placeholder="${user.lastname}" disabled >
      </div>
      <label for="FamilyName" class="col-sm-1 control-label control-form " id="familyname_edit">نام خانوادگی</label>
    </div>
    
     <div class="form-group">
      <div class="col-sm-6">
        <input class="form-control"  type="text" placeholder="${user.fatherName}" disabled>
      </div>
      <label for="FatherName" class="col-sm-1 control-label control-form " id="fathername_edit">نام پدر</label>
    </div>
    
     <div class="form-group">
      <div class="col-sm-6">
        <input class="form-control" type="text" placeholder="${user.ssn}" disabled>
      </div>
      <label for="SSN" class="col-sm-1 control-label control-form" id="SSN_edit">شماره ملی</label>
    </div>
   
    
    <div class="form-group">
      <div class="col-sm-6">
        <input class="form-control"  type="text" placeholder="${user.birthday}" disabled>
      </div>
      <label for="Date Of Birth" class="col-sm-1 control-label control-form" id="birthday_edit">تاریخ تولد</label>
    </div>
    
     <div class="form-group">
      <div class="col-sm-6">
        <input class="form-control"  type="text" placeholder="${user.phone}" disabled>
      </div>
      <label for="PhoneNumber" class="col-sm-1 control-label control-form" id="telephone_edit">شماره تماس</label>
    </div>
     <div class="form-group">
      <div class="col-sm-6">
        <input class="form-control"  type="text" placeholder="${user.address}" disabled>
      </div>
      <label for="  Adress" class="col-sm-1 control-label control-form" id="address_edit">آدرس</label>
    </div>
  </form>
        </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>

