<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<div class="container">
		<a href="/view/intro.jsp">회사소개</a>
        <a href="/staffAddFrm">연혁</a>
        <a href="/staff?store=1">스텝소개</a>
        <a href="/partnerIntro?sort=뷰티">제휴업체 소개</a>
        <a href="/view/partner.jsp">가맹문의</a>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>