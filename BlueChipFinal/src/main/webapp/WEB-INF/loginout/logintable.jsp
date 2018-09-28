<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
	<meta charset="utf-8">
	<title></title>
	
	<style type="text/css">
		table {
			margin: 0 auto;
		}
		
	</style>
	
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	<div id="kakao_btn_changed"></div>
	
	<div id="fb-root"></div>
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = 'https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v3.1&appId=321562368651705&autoLogAppEvents=1';
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
	</script>
	
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	
	<meta name="google-signin-client_id" content="434659524742-5i0dkhmrjkh9aeh2lhmk3jkkch6r8kka.apps.googleusercontent.com">

	<script type="text/javascript">
	function onSignIn(googleUser) {
		  var profile = googleUser.getBasicProfile();
		  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
		  console.log('Name: ' + profile.getName());
		  console.log('Image URL: ' + profile.getImageUrl());
		  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
		}
	
	function signOut() {
	    var auth2 = gapi.auth2.getAuthInstance();
	    auth2.signOut().then(function () {
	      console.log('User signed out.');
	    });
	}
	</script>
</head> 
<body>
<table>
	<tr>
		<td>
			<a id="kakao-login-btn"></a>
			<a href="http://developers.kakao.com/logout"></a>
			<script type='text/javascript'>
		    // 사용할 앱의 JavaScript 키를 설정해 주세요.
		    Kakao.init('cd216f0edc63ab928c283e541d5c9286');  
		    //여기서 아까 발급받은 키 중 javascript키를 사용해준다.
		    // 카카오 로그인 버튼을 생성합니다.
		    Kakao.Auth.createLoginButton({
		      container: '#kakao-login-btn',
		      success: function(authObj) {
		    	   Kakao.API.request({
		    	       url: '/v1/user/me',
		    	       success: function(res) {
		    	            alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력
		    	            alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력
		    	            console.log(res.id);//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)
		    	            console.log(res.kaccount_email);//<---- 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)
		    	            console.log(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근 
		    	        	// res.properties.nickname으로도 접근 가능 )
		    	            console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력
		    	           }
		    	         })
		 	     },
		    		fail: function(err) {
		    		alert(JSON.stringify(err));
		   			}
	    		});
			</script>
		</td>
	</tr>
	<tr>
		<td style="padding-bottom: 5px;">
			<div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="continue_with" 
			data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div>
		</td>
	</tr>
	<tr>
		<td align="center">
			<div class="g-signin2" data-onsuccess="onSignIn"></div>
		</td>
	</tr>
</table>
</body>
</html>
