<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<c:set var="root" value="<%=request.getContextPath() %>"/>
<style>
	html,body{font-family:"Lato", sans-serif}
</style>

<body>
<div class="container">
	<div class="w3-bar w3-block">
    	<a href="${root}/main.do" class="w3-bar-item w3-button w3-padding-large"><font style="vertical-align: inherit;">아그랭 </font></a>
    	<a href="${root}/idollist/idollist.do" class="w3-bar-item w3-button w3-padding-large "><font style="vertical-align: inherit;">아이돌그룹</font></a>
    
    	<form class="form-inline my-2 my-lg-0">
    	<div class="w3-center w3-padding-large">
    	<input class="form-control mr-sm-2" type="search" placeholder="search" aria-label="검색">
    	<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
    	</form>

    	<div class="w3-right">
    		<a href="${root}/loginout/logintable.do">로그인</a> 
		</div>
  </div>
</div>
</body>
</html>










