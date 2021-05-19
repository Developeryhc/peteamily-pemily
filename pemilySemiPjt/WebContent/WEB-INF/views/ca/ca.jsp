<%@page import="member.model.vo.Member"%>
<%@page import="ca.model.vo.Adopt"%>
<%@page import="inca.model.vo.Inca"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
//	Adopt adopt = (Adopt)session.getAttribute("adopt");

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가족이 될 준비가 된 친구들이에요 :)</title>
</head>
<style>
	.container{
		margin-top: 200px;
		height: 2000px;
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
	.more-btn{
		text-align: center;
	}
</style>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
    <link rel="stylesheet" href="/css/product/shop.css" type="text/css">
    <script type="text/javascript"></script>
	<div class="container">
		<div class="menu-wrap">
			<button type="button" onclick="list(2);">Dog</button> 
      		<button type="button" onclick="list(3);">Cat</button>
      	  	<button type="button" onclick="list(4);">Fish</button>
      	  	<button type="button" onclick="list(5);">Lizard</button>
      	  	<button type="button" onclick="list(6);">Rodent</button>
      	  	<button type="button" onclick="list(7);">Snake</button>
      	  	<button type="button" onclick="list(8);">Arthropod</button>
      	  	
      	  	<%if(m.getMemberGrade()== 1){ %>
      	  	<button type="button" onclick="location.href='/WEB-INF/views/ca/caWrite.jsp'">CA Upload</button>
      	  	<button type="button" onclick="location.href='/WEB-INF/views/ca/incaWrite.jsp'">INCA Upload</button>
			<%} %>
		</div>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>