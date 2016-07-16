<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.mohammadazadeh.ems.domain.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html ng-app="stock" dir="rtl" lang="fa">
<head>
  <title>ارسال تمرین</title>
</head>

<%@ include file="header.jsp" %>

<body>

<%@ include file="navigation.jsp" %>

  <div class="container"> <br />
    <div class="row">
    	<div class="col-md-12">
        <p><h1>ارسال تمرین</h1></p>
			<div class="panel panel-default">
			  <form action="/ems/assignment?req=upload" method="POST" enctype="multipart/form-data">
			    <!--
			    <input type="hidden" name="req" value="upload">
				-->
				<!--<div class="panel-heading"><strong>تیتر تمرین </strong> <small> </small></div>-->
				<div class="panel-body">
					<div class="input-group image-preview">
					  <form>
						<!--<input placeholder="text!!!" type="text" class="form-control image-preview-filename" disabled="disabled">-->
						<!-- don't give a name === doesn't send on POST/GET --> 
						<span class="input-group-btn"> 
						<!-- image-preview-clear button -->
						<!--
						<button type="button" class="btn btn-default image-preview-clear" style="display:none;"> <span class="glyphicon glyphicon-remove"></span> Clear </button>
						-->
						<!-- image-preview-input -->
						<div class="btn btn-default image-preview-input"> <span class="glyphicon glyphicon-folder-open"></span> <span class="image-preview-input-title">انتخاب پوشه</span>
							<input type="file" name="file" accept="image/png, image/jpeg, image/gif, PDF/pdf"/ required>
							<!-- rename it --> 
						</div>
                        <!-- button --> 
                        
                        <button type="submit" class="btn btn-success image-preview-clear"> <span class="glyphicon glyphicon-upload"></span> ارسال </button>
							<!-- rename it --> 
						</div>
						</span>
					</div>
					<!-- /input-group image-preview [TO HERE]--> 
					
					<br />
					
					<!-- Drop Zone -->
					<div class="upload-drop-zone" id="drop-zone"> یا پوشه ها را گرفته و در این مکان رها کنید </div>
					<br />
					<!-- Progress Bar -->
					
					<br />
				
				</div>
			  </form>
			</div>
		</div>
	</div>
</div>

<!-- /container --> 

<%@ include file="footer.jsp" %>

</body>
</html>