<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.mohammadazadeh.ems.domain.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html dir="rtl" lang="fa">
<head>
  <title>پرسنل</title>
</head>

<%@ include file="header.jsp" %>

<body>

<%@ include file="navigation.jsp" %>

<div class="container text-center">
	<div class="row">
		<div class="col-md-6 col-md-offset-3" role="tabpanel">
          <!-- Nav tabs -->
          <ul class="nav nav-justified" id="nav-tabs" role="tablist">
            <li role="presentation" class="active">
                <a href="#dustin" aria-controls="dustin" role="tab" data-toggle="tab">
                    <img class="img-circle" src="./image/personel/128.jpg" />
                    <span class="quote"><i class="fa fa-quote-left"></i></span>
                </a>
            </li>
            <li role="presentation">
                <a href="#daksh" aria-controls="daksh" role="tab" data-toggle="tab">
                    <img class="img-circle" src="./image/personel/129.jpg" />
                    <span class="quote"><i class="fa fa-quote-left"></i></span>
                </a>
            </li>
            <li role="presentation">
                <a href="#anna" aria-controls="anna" role="tab" data-toggle="tab">
                    <img class="img-circle" src="./image/personel/130.jpg" />
                    <span class="quote"><i class="fa fa-quote-left"></i></span>
                </a>
            </li>
            <li role="presentation">
                <a href="#wafer" aria-controls="wafer" role="tab" data-toggle="tab">
                    <img class="img-circle" src="./image/personel/131.jpg" />
                    <span class="quote"><i class="fa fa-quote-left"></i></span>
                </a>        
            </li>
            
            <li role="presentation">
                <a href="#ali" aria-controls="wafer" role="tab" data-toggle="tab">
                    <img class="img-circle" src="./image/personel/129.jpg" />
                    <span class="quote"><i class="fa fa-quote-left"></i></span>
                </a>        
            </li>
            
          </ul>
        
          <!-- Tab panes -->
          <div class="tab-content" id="tabs-collapse">
            <div role="tabpanel" class="tab-pane fade in active" id="dustin">
                <div class="tab-inner">
                
                    <p><strong class="text-uppercase">شهروز شهبازی</strong></p>
                    <p><em class="text-capitalize"> مدیر مدرسه</em></p> 
                                       <hr> 
                    <p class="lead">تحصیلات : کارشناسی ارشد فقه و مبانی حقوق اسلامی.</p>
                                    
                </div>
            </div>
            <div role="tabpanel" class="tab-pane fade" id="daksh">
                <div class="tab-inner">
                    <p><strong class="text-uppercase">دکتر قنادی مراغه</strong></p>
                    <p><em class="text-capitalize"> معاون انضباطی </em></p>
                    <hr>
                    <p class="lead">تحصیلات : دکترای رادیو شیمی</p> 
                </div>
            </div>
            <div role="tabpanel" class="tab-pane fade" id="anna">
                <div class="tab-inner">
                    <p><strong class="text-uppercase">محسن شکر زاده</strong></p>
                    <p><em class="text-capitalize"> معاون پژوهشی</em></p>
                    <hr>
                    <p class="lead">تحصیلات: فوق لیسانس تربیت بدنی</p>
                </div> 
            </div>
            <div role="tabpanel" class="tab-pane fade" id="wafer">
                <div class="tab-inner">
                    <p><strong class="text-uppercase">سید علی هادین</strong></p>
                    <p><em class="text-capitalize"> دفتر دار</em></p>
                    <hr>
                    <p class="lead"> تحصیلات : لیسانس ریاضی کاربردی</p>
                </div>
            </div>
            <!-- -->
             <div role="tabpanel" class="tab-pane fade" id="ali">
                <div class="tab-inner">
                    <p><strong class="text-uppercase">علی اکبر کاوه ایی</strong></p>
                    <p><em class="text-capitalize">مسئول کتابخانه</em></p>
                    <hr>
                    <p class="lead">تحصیلات : لیسانس کتابداری</p>
                </div>
            </div>
            
          </div>
        
        </div>
	</div>
</div>

<div id="push">
</div>

<%@ include file="footer.jsp" %>
	
</body>

</html>
