<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pemily에 오신것을 환영합니다.</title>
</head>
<style>
	.content-wrap{
		background-color:rgba(242, 217, 207, 0.84);
	}
	.content-wrap img{
		width:Calc(100%/3);
	}
</style>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<div class="container">
		<div class="content-wrap"><img src="/img/윤현철.png" alt="윤현철"></div>
		<div class="content-wrap"><img src="/img/김가연.png" alt="김가연"></div>
		<div class="content-wrap"><img src="/img/김민형.png" alt="김민형"></div>
			<img src="/img/성예지.png" alt="성예지">
			<img src="/img/이탁승.png" alt="이탁승">
			<img src="/img/황승연.png" alt="황승연">
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>