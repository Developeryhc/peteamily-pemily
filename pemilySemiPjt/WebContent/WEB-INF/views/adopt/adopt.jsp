<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가족이 될 준비가 된 친구들이에요 :)</title>
</head>
<style>
	.container{
		margin-top: 200px;
	}
	.menu-wrap{
		width: 1280px
		margin: 0 auto;
	}
	.menu-wrap>ul{
        list-style:none;
        margin:0;
        padding:0;
        display:flex;
	}
	.menu-wrap>ul>li{
        width:100px;
        text-align:center;
	}
	.menu-wrap>ul>li>a{
        text-decoration: none;
        color:black;
	}
</style>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<div class="container">
		<div class="menu-wrap">
			<ul>
				<li><a href="#">강아지</a></li>
				<li><a href="#">고양이</a></li>
				<li><a href="#">물고기</a></li>
				<li><a href="#">도마뱀류</a></li>
				<li><a href="#">설치류</a></li>
				<li><a href="#">뱀류</a></li>
				<li><a href="#">절지류</a></li>
			</ul>
		</div>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>