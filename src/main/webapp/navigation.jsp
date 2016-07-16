<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.mohammadazadeh.ems.domain.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>

<c:choose>
  <c:when test="${role=='student'}">
	<nav class="navbar navbar-default hidden-print" role="navigation">
	  <div class="container-fluid">
		<div class="navbar-header">
		  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </button>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
		  <ul class="nav navbar-nav navbar-right">
			<li><a href="news.jsp">اخبار</a></li>
			
			<li class="dropdown">
			  <a class="dropdown-toggle" data-toggle="dropdown" href="#">درخواست ها <span class="caret"></span></a>
			  <ul class="dropdown-menu dropdown_style">
				<li><a href="/ems/getreport">گواهی اشتغال به تحصیل</a></li>
			  </ul>
			</li>
		   <li class="dropdown">
			  <a class="dropdown-toggle" data-toggle="dropdown" href="#">تمرین‌ها <span class="caret"></span></a>
			  <ul class="dropdown-menu">
				<li>
				  <form action="/ems/assignment" method="GET">
				    <input type="hidden" name="req" value="send" />
					<a href="#" onClick="this.parentNode.submit()">ارسال تمرین</a>
				  </form>
				</li>
				<li>
				  <form action="/ems/assignment" method="GET">
				    <input type="hidden" name="req" value="recieve" />
					<a href="#" onClick="this.parentNode.submit()">دریافت تمرین</a>
				  </form>
				</li>
			  </ul>
			</li>
			  <li><a href="/ems/profile">پروفایل</a></li>
		  </ul>
		  <ul class="nav navbar-nav navbar-right">
			<li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> خروج</a></li>
		  </ul>
		</div>
	  </div>
	</nav>
  </c:when>
  <c:when test="${role == 'teacher'}">
    <nav class="navbar navbar-default" role="navigation">
	  <div class="container-fluid">
		<div class="navbar-header">
		  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </button>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
		  <ul class="nav navbar-nav navbar-right">
			<li><a href="news.jsp">اخبار</a></li>
		   <li class="dropdown">
			  <a class="dropdown-toggle" data-toggle="dropdown" href="#">درخواست ها  <span class="caret"></span></a>
			  <ul class="dropdown-menu">
				<li><a href="/ems/getlist?req=student">مشاهده لیست دانش آموزان </a></li>
			  </ul>
			</li>
		   <li class="dropdown">
			  <a class="dropdown-toggle" data-toggle="dropdown" href="#">تمرین‌ها <span class="caret"></span></a>
			  <ul class="dropdown-menu">
			  <li>
			    <form action="/ems/assignment" method="GET">
				  <input type="hidden" name="req" value="send"/>
				  <a href="#" onClick="this.parentNode.submit()">ارسال تمرین</a>
			    </form>
			  </li>
				<li>
				  <a href="/ems/files/ans/">دریافت تمرین</a>
				  <!--
				  <form action="/ems/assignment" method="GET">
				    <input type="hidden" name="req" value="recieve" />
					<a href="#" onClick="this.parentNode.submit()">دریافت تمرین</a>
				  </form>
				  -->
				</li>
			  </ul>
			</li>
			  <li><a href="/ems/profile">پروفایل</a></li>
		  </ul>
		  <ul class="nav navbar-nav navbar-right">
			<li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> خروج</a></li>
		  </ul>
		</div>
	  </div>
	</nav>
  </c:when>
  <c:when test="${role=='manager'}">
    <nav class="navbar navbar-default" role="navigation">
	  <div class="container-fluid">
		<div class="navbar-header">
		  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </button>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
		  <ul class="nav navbar-nav navbar-right">
			
			
			<li class="dropdown">
			  <a class="dropdown-toggle" data-toggle="dropdown" href="news.jsp"> اخبار <span class="caret"></span></a>
			  <ul class="dropdown-menu">
			  <li><a href="news.jsp">مشاهده اخبار</a></li>
				<li><a href="CreatNewsManager.html">ایجاد خبر</a></li> 
			  </ul>
			</li>
			
		   <li class="dropdown">
			  <a class="dropdown-toggle" data-toggle="dropdown" href="#">درخواست ها<span class="caret"></span></a>
			  <ul class="dropdown-menu">
				<li><a href="/ems/adduser">ایجاد کاربر جدید</a></li>
				<li><a href="EditProfileManager.html">اصلاح کاربر</a></li>
				<li><a href="/ems/getlist?req=student">مشاهده لیست دانش آموزان </a></li>
				<li><a href="/ems/getlist?req=teacher">مشاهده لیست معلمان</a></li>
			  </ul>
			</li>
			  <li><a href="/ems/profile">پروفایل</a></li>
		  </ul>
		  <ul class="nav navbar-nav navbar-right">
			<li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> خروج</a></li>
		  </ul>
		</div>
	  </div>
	</nav>
  </c:when>
  <c:otherwise>
    <nav class="navbar navbar-default">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-2">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse-2">
          <ul class="nav navbar-nav navbar-right">
          
            <li><a href="contact-us.jsp">ارتباط با ما</a></li>
            <li><a href="abou-us.jsp">درباره ما</a></li>
            <li><a href="personel.jsp">پرسنل</a></li>       
            <li><a href="gallery.jsp">گالری</a></li>
            <li><a href="news.jsp">اخبار</a></li>
            <li><a href="index.jsp">خانه</a></li>
            <li>
              <a class="btn btn-default btn-outline btn-circle collapsed"  href="/ems/profile">ورود به سامانه</a>
            </li>
          </ul>
          <div class="collapse nav navbar-nav nav-collapse slide-down" id="nav-collapse2">
            <form class="navbar-form navbar-right form-inline" role="form">
              <div class="form-group">
                <label class="sr-only" for="Email">Email</label>
                <input type="email" class="form-control" id="Email" placeholder="نام کاربری" autofocus required />
              </div>
              <div class="form-group">
                <label class="sr-only" for="Password">Password</label>
                <input type="password" class="form-control" id="Password" placeholder="گذر واژه" required />
              </div>
              <button type="submit" class="btn btn-success">ورود</button>
            </form>
          </div>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->
  </c:otherwise>
</c:choose>