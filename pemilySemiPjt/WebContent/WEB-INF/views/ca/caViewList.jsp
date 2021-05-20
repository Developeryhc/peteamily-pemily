<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    int totalCount = (Integer)request.getAttribute("totalCount");
    int incaAn = (Integer)request.getAttribute("incaNo");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dog</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<div class="container">
		<%@include file="/WEB-INF/views/ca/caMenu.jsp" %>
		<div class="main"></div>
		<button type="button" class="more-btn" value="" currentCount="" totalCount="<%=totalCount%>">더 보기</button>
	</div>
	<script>
	$(function(){
		var incaNo = <%=incaAn%>;
		list(incaNo, 1);
		$(".more-btn").click(function(){
			list(incaNo, $(".more-btn").val());
		});
		$(".main").children().click(function(){
			oneView();
		});
	});
	
	function list(incaNo, start) {
		$.ajax({
			url : "/caView",
			data : {
				incaNo : incaNo,
				start : start
			},
			type : "post",
			success : function(data) {
				for (var i = 0; i < data.length; i++) {
					var ca = data[i].ca;
					var inca = data[i].inca;
					console.log(inca.incaNo);
					var html = "";
					if (i % 2 == 0 || i == 0) {
						html += "<div class='main-left'>";
						html += "<img src='/upload/inca/"+inca.incaPath+"'>";
						html += "<div><p>이름 : " + inca.incaName + "</p>";
						html += "<p>개월 : " + inca.incaMonth + "</p>";
						html += "<p>성별 : " + inca.incaGender + "</p>";
						html += "<p>★ 이런분이 가족이였으면 좋겠어요 ! ☆</p>";
						html += "<p>" + ca.caTitle + "</p></div></div>";
					} else {
						html += "<div class='main-right'>";
						html += "<div><p>이름 : " + inca.incaName + "</p>";
						html += "<p>개월 : " + inca.incaMonth + "</p>";
						html += "<p>성별 : " + inca.incaGender + "</p>";
						html += "<p>★ 이런분이 가족이였으면 좋겠어요 ! ☆</p>";
						html += "<p>" + ca.caTitle + "</p></div>";
						html += "<a href='/caOneView?incaNo="+inca.incaNo+"'><img src='/upload/inca/"+inca.incaPath+"'></a></div>";
					}
					$(".main").append(html);
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
	
	function oneView(){
		$.ajax({
			url : "/caOneView",
			data : {}
		});
	}
	</script>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>