<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
	<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		<meta charset="utf-8">
		<title>Welcome</title>
		<style type="text/css">
			div{border: 0px solid red; font-size: 12pt;}
			div#top{
				position: absolute; top: 50px;
				width:100%;
				text-align: center;	
				height: 100px;			
			}
			div#menu{
				position: absolute; top: 170px;
				width:100%;
				text-align: center;	
				height: 250px;					
			}
			div#body{
				position: absolute; top: 350px;
				width:100%;
				text-align: center;	
				height: 500px;					
			}
			
		</style>
	</head> 
	<body>
		<div id="top">
			<tiles:insertAttribute name="header"/>
		</div>
		<div id="menu">
			<tiles:insertAttribute name="menu"/>
		</div>
		<div id="body">
			<tiles:insertAttribute name="body"/>
		</div>
		
	</body>
</html>