<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
   	<meta charset="UTF-8">
    <title>Think</title>
<script type="text/javascript" src="/js/mainView.js"></script>
<link rel="stylesheet" href="/css/mainViews.css?ver=0.1">    
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
<%@ include file="./header/header.jsp" %>
<form action="." method="post">
<div class="title style-1">
<h1>Think Search</h1>
</div>
<div class="search-box">
    <input class="search-txt" type="text" placeholder="검색어를 입력해 주세요">
    <button class="search-btn" type="submit">
	  <i class="fas fa-search"></i>
	</button>
</div>
</form>
</body>
</html>