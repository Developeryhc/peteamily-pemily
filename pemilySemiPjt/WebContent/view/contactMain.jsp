<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.sub{
		overflow:hidden;
	}
	.sub>div{
		float:left;
		width:24%;
		text-align:center;
		border:3px solid rgba(238, 140, 148, 1.00);
		height:300px;
		
	}
	.sub>div>a{
		line-height:300px;
		font-size:30px;
		text-decoration:none;
		color:black;
	}
	.sub>div>a:hover{
		color: white;
		font-style:italic;
	}
	.sub>div:hover{
		background-color:black;
	}
	
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<div class="container">
		<div class="sub">
			<div style="background-color:rgba(238, 140, 148, 0.60);"><a href="/view/intro.jsp">회사소개</a></div>
			<div style="background-color:rgba(174, 215, 232, 0.73);"><a href="/staff?store=1">스텝소개</a></div>
			<div style="background-color:rgba(242, 217, 207, 0.84);"><a href="/partnerIntro?sort=뷰티">제휴업체 소개</a></div>
			<div style="background-color:rgba(182, 215, 168, 0.54);"><a href="/view/partner.jsp">가맹문의</a></div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>


