<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta charset="utf-8">
<title>Welcome</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <style>
  .ui-menu { width: 200px;
  			px;}
  .ui-widget-header { padding: 0.2em; }
  </style>
<c:set var="root" value="<%=request.getContextPath()%>" />

</head>
<body>
	<a href="${root}/board/NewFile.do">게시판</a> 
	<br><br>
	<a href="${root}/board/NewFile.do">컨텐츠</a> 
	<br>
	
	
	
	
	
</body>
</html>