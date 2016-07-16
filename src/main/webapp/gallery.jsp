<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.mohammadazadeh.ems.domain.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html dir="rtl" lang="fa">
<head>
  <title>گالری</title>
</head>

<%@ include file="header.jsp" %>

<body>

<%@ include file="navigation.jsp" %>
    
    <!-- Page Content -->
   <div class="container">
  <div class="row">
    <div class="col-lg-12">
      <ul class="timeline">
        <li>
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="./image/foodfestival.jpg" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4><a href="Gallery-detail.html">              مراسم ها</a></h4>
            </div>
            <div class="timeline-body">
              <p class="text-muted">
              عکس هایی از مراسم های مختلف که در مدرسه برپا شده است.
              </p>
            </div>
          </div>
          <div class="line"></div>
        </li>
        <li class="timeline-inverted">
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="./image/stud.jpg" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4><a href="Gallery-detail.html">استعداد های درخشان</a></h4>
            </div>
            <div class="timeline-body">
              <p class="text-muted">
                عکس هایی از استعداد های درخشان در مدرسه.
              </p>
            </div>
          </div>
          <div class="line"></div>
        </li>
        <li>
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="./image/festival.jpg" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4><a href="Gallery-detail.html">جشنواره ها</a></h4>
            </div>
            <div class="timeline-body">
              <p class="text-muted">
                جشنواره هایی که دانش آموزان در آن شرکت کرده آند.
              </p>
            </div>
          </div>
          <div class="line"></div>
        </li>
        <li class="timeline-inverted">
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="./image/eftari.jpg" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4><a href="Gallery-detail.html">مراسم افطاری</a></h4>
            </div>
            <div class="timeline-body">
              <p class="text-muted">
               مراسم سفره افطاری در مدرسه
              </p>
            </div>
        </li>
        <li>
        </li>
      </ul>
    </div>
  </div>
</div>
<div id="push">
</div>

<%@ include file="footer.jsp" %>

</body>

</html>
