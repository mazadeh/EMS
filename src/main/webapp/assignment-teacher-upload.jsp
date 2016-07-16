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
<form action="/ems/assignment?req=upload" method="POST" enctype="multipart/form-data" accept-charset="UTF-8">
  <div class="container"> <br />
    <div class="row">
    	
        
        <p><h1>آپلود تمرین</h1></p>
        <br>
        </div>
        
         <div class="form-group ">
         <div class="col-sm-8">
         </div>
      <div class="col-sm-4">
        
      
      <label for="FatherName" class="col-sm-12 control-label control-form " ><h3>نام تمرین</h3></label>
      <input name="name" class="form-control"  type="text" placeholder="نام تمرین" required>
      <br>
      </div>
    </div>
    <br>
    
    <div class="row">
        
        
       
    
    <div class="col-md-12">
			<div class="panel panel-default">
			  
				<div class="panel-body">
					<div class="input-group image-preview">
						<!--<input placeholder="" type="text" class="form-control image-preview-filename" disabled="disabled">-->
						<!-- don't give a name === doesn't send on POST/GET --> 
						<span class="input-group-btn"> 
						<!-- image-preview-clear button -->
						<button type="button" class="btn btn-default image-preview-clear" style="display:none;"> <span class="glyphicon glyphicon-remove"></span> Clear </button>
						<!-- image-preview-input -->
						<div class="btn btn-default image-preview-input"> <span class="glyphicon glyphicon-folder-open"></span> <span class="image-preview-input-title">انتخاب پوشه</span>
							<input type="file" accept="image/png, image/jpeg, image/gif" name="input-file-preview"/ required>
							<!-- rename it --> 
						</div>
                        
                    
                    
                    
                    
                    
                        
                        <!-- button --> 
                        
                        
                        <button type="submit" class="btn btn-success image-preview-clear"> <span class="glyphicon glyphicon-upload"></span> ارسال </button>
					
					
                    
                    
                    
                    		
							<!-- rename it --> 
						</div>
						</span> </div>
					<!-- /input-group image-preview [TO HERE]--> 
					
					<br />
					
					<!-- Drop Zone -->
					<div class="upload-drop-zone" id="drop-zone"> یا پوشه ها را گرفته و در این مکان رها کنید </div>
					<br />
					<!-- Progress Bar -->
					
					<br />
				
				</div>
			</div>
		</div>
	</div>
</div>
</form>
<!-- /container --> 

<%@ include file="footer.jsp" %>

</body>
</html>