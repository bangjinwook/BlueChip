
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

 <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<div id="kakao_btn_changed">

</div>
 

<body>
<div class="container">
<div class="w3-bar w3-block">
    <a href="${root}/main.do" class="w3-bar-item w3-button w3-padding-large"><font style="vertical-align: inherit;">아그랭 </font></a>
    <a href="${root}/board/NewFile.do" class="w3-bar-item w3-button w3-padding-large "><font style="vertical-align: inherit;">아이돌그룹</font></a>
     
    <form class="form-inline my-2 my-lg-0">
    <div class="w3-center w3-padding-large">
    <input class="form-control mr-sm-2" type="search" placeholder="search" aria-label="검색">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
   
    </form>
    <div class="w3-right">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">로그인</button>
 </div>
  </div>
  </div>
</div>


<a id="kakao-login-btn"></a>
<a href="http://developers.kakao.com/logout"></a>
<script type='text/javascript'>
  //<![CDATA[
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
    
  //]]>
</script>

</body>
</html>










