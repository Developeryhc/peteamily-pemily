<%@page import="member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Member member = (Member)request.getAttribute("member");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<div class="container">
		<form action="/updateMember" method="post">
			<legend>내정보</legend>
			<div class="form-group">
				<fieldset>
					<label class="control-label" for="memberId">아이디</label>
					<input type="text" id="memberId" name="memberId" class="form-control" value="<%=member.getMemberId()%>" readonly>
				</fieldset> 
			</div>
			<div class="form-group">
				<fieldset>
					<label class="control-label" for="memberPw">비밀번호</label>
					<input type="password" id="memberPw" name="memberPw" class="form-control" value="<%=member.getMemberPw()%>"> 
				</fieldset> 
			</div>
			<div class="form-group">
				<fieldset>
					<label class="control-label" for="memberName">이름</label>
					<input type="text" id="memberName" name="memberName" class="form-control" value="<%=member.getMemberName()%>" readonly>
				</fieldset> 
			</div>
			<div class="form-group">
				<fieldset>
					<label class="control-label" for="memberPhone">전화번호</label>
					<input type="text" id="memberPhone" name="memberPhone" class="form-control" value="<%=member.getMemberPhone()%>">
				</fieldset> 
			</div>
			<div class="form-group">
				<fieldset>
					<label class="control-label" for="memberAddr">주소</label>
					<input type="text" id="memberAddr" name="memberAddr" class="form-control" value="<%=member.getMemberAddr()%>" >
				</fieldset> 
			</div>
			<div class="form-group">
				<fieldset>
					<label class="control-label" for="memberEnter">가입일</label>
					<input type="text" id="memberEnter" name="memberEnter" class="form-control" value="<%=member.getMemberEnter()%>" readonly>
				</fieldset> 
			</div>
			<div class="form-group">
				<fieldset style="text-aling:center">
					<button type="submit">정보수정</button>
					<a href="/deleteMember?memberNo=<%=member.getMemberNo() %>">회원탈퇴</a>
				</fieldset>
			</div>
		</form>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>