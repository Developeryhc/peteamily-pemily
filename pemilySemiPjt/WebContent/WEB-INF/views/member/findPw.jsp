<%@page import="member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	Member member = (Member) request.getAttribute("member");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<h1>비밀번호 찾기</h1>
	<fieldset>
		등록된 비밀번호 :
		<%=member.getMemberPw()%>
		&emsp; 가입일 :
		<%=member.getMemberEnter()%><br>
		<button id="button" onclick="location.href='/loginFrm'">로그인하러가기</button>
	</fieldset>


</body>
</html>