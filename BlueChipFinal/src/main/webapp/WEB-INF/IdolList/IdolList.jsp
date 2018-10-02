<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	<style>
	#list{
	float: left;
	padding:20px;
	margin: 10px;
	}
	</style>
	</head> 
		
		<body>
		
		<c:set var="root" value="<%=request.getContextPath()%>" />
		<c:forEach var="photo" items="${PPList}" varStatus="i">
		
		<div id=list>
		<img src="${photo.ppurl}" width="200" height="200" ><br>
		<a href = "IdolHome.do?koreanname=${photo.koreanname}" >
		${photo.koreanname}
		</a>
		</div>
			<c:if test="${i.count%5==0}">
				<br>
			</c:if>
		
		</c:forEach>

	</body> 
		

</html>