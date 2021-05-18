<%@page import="ca.model.vo.Adopt"%>
<%@page import="inca.model.vo.Inca"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Adopt adopt = (Adopt)session.getAttribute("adopt");
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
</style>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<div class="container">
		<div class="menu-wrap">
			<ul>
				<li><a href="ca?incaNo=2">강아지</a></li>
				<li><a href="cat">고양이</a></li>
				<li><a href="fish">물고기</a></li>
				<li><a href="lizard">도마뱀류</a></li>
				<li><a href="rodent">설치류</a></li>
				<li><a href="snake">뱀류</a></li>
				<li><a href="arthropod">절지류</a></li>
				<li><a href="caWriteFrm">글쓰기</a></li>
				<li><a href="incaWriteFrm">글쓰기</a></li>
			</ul>
		</div>
		<div class="main">
			<div class="main-left"></div>
			<div class="main-right"></div>
		</div>
	</div>
	<script>
		$(function(){
			more(1);
			var main = $(".main");
			main.append("<button type='button' class='more-btn' value='more'>더 보기</button>");
			$(".more-btn").click(function(){
				// more($(this).val());
				var left = "<div class='main-left'><img src=/upload/inca/"++"'>"
			});
		});
		function more(start){
			$.ajax({
				url : "/ca",
				data : {start:start},
				type : "post",
				success : function(data){
					for(var i = 0; i<data.length; i++){
						var p = data[i];
						var html = "";
						html += "<div class='photo'>";
						html += "<img src='/upload/photo/"+p.filepath+"'>";
						html += "<p class='caption'>"+p.photoContent+"</p></div>";
						$(".photoWrapper").append(html);
					}
					// 이미지 추가가 끝나고 나면 더보기 버튼의 value 값 조정
					$("#more-btn").val(Number(start)+5);
					var curr = Number($("#more-btn").attr("currentCount"));
					$("#more-btn").attr("currentCount", curr+data.length);	// attr과 append의 의미
					var totalCount = $("#more-btn").attr("totalCount");
					var currCount = $("#more-btn").attr("currentCount");
					if(currCount == totalCount){
						$("#more-btn").attr("disabled", true);		// 비활성화
					}
				}
			});
		}
	</script>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>