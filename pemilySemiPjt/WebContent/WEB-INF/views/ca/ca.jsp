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
    <link rel="stylesheet" href="/css/product/shop.css">
    <script type="text/javascript"></script>
	<div class="container">
		<div class="menu-wrap">
			<button type="button"><a href="/ca?incaNo=2" class="no">Dog</a></button> 
      		<button type="button"><a href="/ca?incaNo=3" class="no">Cat</a></button>
      	  	<button type="button"><a href="/ca?incaNo=4" class="no">Fish</a></button>
      	  	<button type="button"><a href="/ca?incaNo=5" class="no">lizard</a></button>
      	  	<button type="button"><a href="/ca?incaNo=6" class="no">rodent</a></button>
      	  	<button type="button"><a href="/ca?incaNo=7" class="no">snake</a></button>
      	  	<button type="button"><a href="/ca?incaNo=8" class="no">arthropod</a></button>
      	  	<%if(m.getMemberGrade()== 1){ %>
      	  	<button type="button"><a href="/caWriteFrm" class="no">CA Upload</a></button>
      	  	<button type="button"><a href="/incaWriteFrm" class="no">INCA Upload</a></button>
			<%} %>
		</div>
		<div class="main"></div>
		<button type='button' class='more-btn' currentCount='0' value='' totalCount='<%=%>'>더 보기</button>
	</div>
	<script>
		$(function(){
			more(1);
			var main = $(".main");
			//main.append("<button type='button' class='more-btn' currentCount='0' value='' totalCount='0'>더 보기</button>");
			$(".more-btn").click(function(){
				// more($(this).val());
			});
		});
		function more(start){
			$.ajax({
				url : "/ca",
				data : {start:start},
				type : "post",
				success : function(data){
					for(var i = 0; i<data.length; i++){
						var a = data[i];
						var html = "";
						html += "<div class='main-left'>";
						html += "<img src='/upload/inca/"+a.inca.incaPath+"'>";
						html += "<p>"+a.ca.caContent+"</p></div>";
						$(".main").append(html);
					}
					// 이미지 추가가 끝나고 나면 더보기 버튼의 value 값 조정
					$(".more-btn").val(Number(start)+4);
					var curr = Number($(".more-btn").attr("currentCount"));
					$(".more-btn").attr("currentCount", curr+data.length);	// attr과 append의 의미
					var totalCount = $(".more-btn").attr("totalCount");
					var currCount = $(".more-btn").attr("currentCount");
					if(currCount == totalCount){
						$(".more-btn").attr("disabled", true);		// 비활성화
					}
				}
			});
		}
	</script>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>