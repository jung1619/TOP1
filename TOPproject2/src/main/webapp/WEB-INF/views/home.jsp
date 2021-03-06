<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>TOP - 혁신적인 프로젝트 관리</title>
<script type="text/javascript" src="<c:url value='/resources/js/jquery-3.2.1.js'/>"></script>
<script type="text/javascript" src="<c:url value='resources/js/home.js'/>"></script>
<link rel="stylesheet" type="text/css" href="./resources/css/style.css"/>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<!-- 상단 네비게이터. 메인과 로그인 후 개인화면에서 사용할 예정 -->
	<%@ include file="nabi-top.jsp" %>
	
	<!-- 슬라이드 쇼 -->
<header class="w3-display-container w3-center">
  <button class="w3-button w3-block w3-green w3-hide-large w3-hide-medium" onclick="document.getElementById('download').style.display='block'">Download <i class="fa fa-android"></i> <i class="fa fa-apple"></i> <i class="fa fa-windows"></i></button>
  <div class="mySlides w3-animate-opacity">
    <img src="./resources/img/team5.jpg" alt="Image 1" style="min-width:500px" width="100%" height="90%">
    <div class="display-middle" style="white-space:nowrap;">
	    	<div class="group_top"><span class="cG">T</span>ake <span class="cG">O</span>ut <span class="cG">P</span>roject</div>
	    	<div class="group_middle">최상의 그룹 오피스</div>
	    	<br><br>
	    	<div class="group_buttom">
		    	<c:if test="${sessionScope.loginedId == null}">
		    		<p><button class="w3-button w3-block w3-yellow w3-round" onclick="location.href='join'">가입하기</button></p>
			    </c:if>
	    	</div>
  		</div>
  </div>
  <div class="mySlides w3-animate-opacity">
    <img src="./resources/img/team4.jpg" alt="Image 1" style="min-width:500px" width="100%" height="90%">
    <div class="w3-display-left w3-padding w3-hide-small" style="width:35%">
      <div class="w3-black w3-opacity w3-hover-opacity-off w3-padding-large w3-round-large">
        <h1 class="w3-xlarge w3-text-red"><b>프로젝트를</b> Take Out</h1>
        <hr class="w3-opacity">
        <p>이젠 언제 어디서나 팀 프로젝트에 참여할 수 있습니다.</p>
        <p><button class="w3-button w3-block w3-red w3-round" onclick="document.getElementById('download').style.display='block'">사용 예시</button></p>
      </div>
    </div>
  </div>
  <div class="mySlides w3-animate-opacity">
   <img src="./resources/img/team6.jpg" alt="Image 1" style="min-width:500px" width="100%" height="90%">
    <div class="w3-display-left w3-padding w3-hide-small" style="width:35%">
      <div class="w3-black w3-opacity w3-hover-opacity-off w3-padding-large w3-round-large">
        <h1 class="w3-xlarge">설치의 번거로움 없이 한번에</h1>
        <hr class="w3-opacity">
        <p>문서 작업에 별도 프로그램 없이도 웹에서 해결</p>
        <p>팀 멤버들과 파일을 공유하세요</p>
        <!-- <p><button class="w3-button w3-block w3-indigo w3-round" onclick="document.getElementById('download').style.display='block'">Download</button></p> -->
      </div>
    </div>
  </div>
  <a class="w3-button w3-black w3-display-right w3-margin-right w3-round w3-hide-small w3-hover-light-grey" onclick="plusDivs(1)">TOP의 다른 기능을 더 알아볼까요? <i class="fa fa-angle-right"></i></a>
  <a class="w3-button w3-block w3-black w3-hide-large w3-hide-medium" onclick="plusDivs(1)">TOP의 다른 기능을 더 알아볼까요? <i class="fa fa-angle-right"></i></a>
</header>
<div class="content container padding-64" id="about">
  <h3 class="center">ABOUT ME</h3>
  <p class="center"><em>I love </em></p>
  <p>We have created a fictional "personal" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa
    qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
	<p>영어라서 있어보이죠? 사실 나도 뭔뜻인지 모름</p>

  <p class="large center padding-16">TOP 이 점이 좋다</p>
  <p class="wide"><i class="fa fa-camera"></i>Excel, Power Point, PDF 저장 포맷</p>
  <div class="w3-light-grey">
    <div class="w3-container w3-padding-small w3-dark-grey w3-center" style="width:90%">90%</div>
  </div>
  <p class="wide"><i class="fa fa-laptop"></i>언제 어디서든 팀 프로젝트 참여</p>
  <div class="w3-light-grey">
    <div class="w3-container w3-padding-small w3-dark-grey w3-center" style="width:85%">85%</div>
  </div>
  <p class="wide button"><i class="fa fa-photo"></i>개인 프로젝트 문서도 작성 가능</p>
  <div class="w3-light-grey">
    <div class="w3-container w3-padding-small w3-dark-grey w3-center" style="width:75%">75%</div>
  </div>
</div>



		<br><br><br><br><br><br><br><br><br><br><br><br>
<script>
// Slideshow
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>
</body>


</html>