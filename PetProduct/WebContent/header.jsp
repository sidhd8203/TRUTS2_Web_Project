<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type ="text/css" href="/PetProduct/css/css.css">
<title>Insert title here</title>
</head>
<body>
<div class="w3-top">
  <div class="w3-bar" id="myNavbar">
    <a class="w3-bar-item w3-button w3-hover-black w3-hide-medium w3-hide-large w3-right" href="javascript:void(0);" onclick="toggleFunction()" title="Toggle Navigation Menu">
      <i class="fa fa-bars"></i>
    </a>
    <h4></h4><a href="/PetProduct/index.jsp" class="w3-bar-item w3-button"><b><font size="5">ゼヒペットショップ</b></a></h4>
    <a href="#about" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-envelope"></i><b>お問い合わせ</b></a>
    <div class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th" onclick="location.href='http://localhost:8080/PetProduct/view/pet/pet_pdList.action'"><b>ペット用品</b></i></div>
 


<c:choose> 
 	<c:when test = "${session.m_id == null }">
 	    <div class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user" onclick="location.href='/PetProduct/view/member/memberLogin.jsp'"><b>ログイン</b></i></div>  		
  	  </c:when>
  	  
	  <c:when test = "${session.m_id != null }">
	     <div class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user" onclick="location.href='http://localhost:8080/PetProduct/logout.action'"><b>ログアウト</b></i></div>    
	     <div class="w3-bar-item w3-button w3-hide-small" style="text-decoration:none"><i class="fa fa-user" onclick="location='/PetProduct/view/member/memberOk.jsp'" ><b>マイページ</b></i></div>    
	      <a href="/PetProduct/view/pet/pet_PdRegister.jsp" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i><b>ペット登錄</b></a>
	  </c:when> 
  </c:choose>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
      <i class="fa fa-search"></i>
    </a>
  </div>
 </div>
 <div class="bgimg-1 w3-display-container w3-opacity-min" id="home">
  <div class="w3-display-middle" style="white-space:nowrap;" >
    <span class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity"><b>ゼヒ ペットショップ</b></span>
  </div>
</div>
</body>
</html>