<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
/* 컨텐츠 관련 css */
.main {
	border: 1px solid black;
}

.main-left>div {
	display: inline-block;
	width: 69.35%;
}

.main-left>img {
	width: 30%;
}

.main-right>img {
	width: 30%;
}

.main-right>div {
	display: inline-block;
	width: 69.35%;
}

.main-right>div>p {
	text-align: right;
}
.main img{
	width: 300px;
	margin: 20px 20px 20px;
}
/* 버튼 css 관련 */
.more-btn {
	margin: 30px auto;
	width: 120px;
	height: 50px;
	font-size: 16px;
	display: block;
}
.menu-wrap {
	width: 1180px;
	margin: 0 auto;
}

.menu-wrap>ul {
	list-style: none;
	margin: 0;
	padding: 0;
	display: flex;
}

.menu-wrap>ul>li {
	width: 100px;
	text-align: center;
	background-color: rgba(174, 215, 232, 0.73);
	margin: 0px 15px;
	height: 30px;
	line-height: 30px;
}

.menu-wrap>ul>li>a {
	text-decoration: none;
	color: rgb(246,246,246);
	font-size: 16px;
	font-weight: bolder;
}
</style>
<body>
	<div class="content">
		<div class="menu-wrap">
			<ul>
				<li><a href="/dogView?incaNo=2">Dog</a></li>
				<li><a href="/catView?incaNo=3">Cat</a></li>
				<li><a href="/fishView?incaNo=4">Fish</a></li>
				<li><a href="/lizard?incaNo=5">Lizard</a></li>
				<li><a href="/rodent?incaNo=6">Rodent</a></li>
				<li><a href="/snake?incaNo=7">Snake</a></li>
				<li><a href="/arthropod?incaNo=8">Arthropod</a></li>
				<li><a href="/caWrite">Ca Upload</a></li>
				<li><a href="/incaWrite">Inca Upload</a></li>
			</ul>
		</div>
		<script>
		$(function(){
			list(2, 1);
			$(".main").append("<button type='button' class='more-btn' value='' totalCount='' currentCount='0'>더 보기</button>");
			var incaNo;
			$(".more-btn").click(function(){
				console.log($(".more-btn").val());
				list(incaNo, $(".more-btn").val());
			})
		});
		
		function list(incaNo, start) {
			incaNo = incaNo;
			$.ajax({
				url : "/caView",
				data : {
					incaNo : incaNo,
					start : start
				},
				type : "post",
				success : function(data) {
					for (var i = 0; i < data.adopt.length; i++) {
						var ca = data.adopt[i].ca;
						var inca = data.adopt[i].inca;
						var html = "";
						if (i % 2 == 0 || i == 0) {
							html += "<div class='main-left'>";
							html += "<img src='/upload/inca/"+inca.incaPath+"'>";
							html += "<div><p>이름 : " + inca.incaName + "</p>";
							html += "<p>개월 : " + inca.incaMonth + "</p>";
							html += "<p>성별 : " + inca.incaGender + "</p>";
							html += "<p>★ 이런분이 가족이였으면 좋겠어요 ! ☆</p>";
							html += "<p>" + ca.caTitle + "</p>";
							html += "<p>" + ca.caContent + "</p></div></div>";
						} else {
							html += "<div class='main-right'>";
							html += "<div><p>이름 : " + inca.incaName + "</p>";
							html += "<p>개월 : " + inca.incaMonth + "</p>";
							html += "<p>성별 : " + inca.incaGender + "</p>";
							html += "<p>★ 이런분이 가족이였으면 좋겠어요 ! ☆</p>";
							html += "<p>" + ca.caTitle + "</p>";
							html += "<p>" + ca.caContent + "</p></div>";
							html += "<img src='/upload/inca/"+inca.incaPath+"'></div>";
						}
						$(".main").append(html);
						$(".more-btn").attr("totalCount", (1+i));

						// 이미지 추가가 끝나고 나면 더보기 버튼의 value 값 조정
						$(".more-btn").val(Number(start)+4);
						var curr = Number($(".more-btn").attr("currentCount"));
						$(".more-btn").attr("currentCount", curr+data.length);
						var totalCount = $(".more-btn").attr("totalCount");
						var currCount = $(".more-btn").attr("currentCount");
						if(currCount == totalCount){
							$(".more-btn").attr("disabled", true);		// 비활성화
						}
					}
				}
			});
		}
		</script>
	</div>
</body>
</html>