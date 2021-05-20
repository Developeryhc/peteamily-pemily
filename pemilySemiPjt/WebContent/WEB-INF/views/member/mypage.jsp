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
	<div class="container">
	<br>
		<form action="/updateMember" method="post">
			<div class="mypage">
				<h3>내정보</h3>
				<div class="memberId">
					<label class="control-label" for="memberId">아이디</label> <input
						type="text" id="memberId" name="memberId" class="form-control"
						value="<%=member.getMemberId()%>" readonly>
				</div>
				<div class="form-group">

					<label class="control-label" for="memberPw">비밀번호</label> <input
						type="password" id="memberPw" name="memberPw" class="form-control"
						value="<%=member.getMemberPw()%>">
				</div>
				<div class="form-group">

					<label class="control-label" for="memberName">이름</label> <input
						type="text" id="memberName" name="memberName" class="form-control"
						value="<%=member.getMemberName()%>" readonly>
				</div>
				<div class="form-group">
					<label class="control-label" for="memberPhone">전화번호</label> <input
						type="text" id="memberPhone" name="memberPhone"
						class="form-control" value="<%=member.getMemberPhone()%>">
				</div>
				<div class="form-group">

					<label class="control-label" for="memberAddr">주소</label> <input
						type="text" id="memberAddr" name="memberAddr" class="form-control"
						value="<%=member.getMemberAddr()%>">
				</div>
				<div class="form-group">

					<label class="control-label" for="memberEnter">가입일</label> <input
						type="text" id="memberEnter" name="memberEnter"
						class="form-control" value="<%=member.getMemberEnter()%>" readonly>
				</div>
				<div class="form-group">
					<button type="submit">정보수정</button>
					<a href="/deleteMember?memberNo=<%=member.getMemberNo()%>"
						class="btn btn-outline-danger">회원탈퇴</a>
				</div>
			</div>
		</form><br>
		<div class="order">
		<h3>주문목록</h3>
			<table>
				<tr>
					<td>거래번호</td>
					<td>상품명</td>
					<td>상품금액</td>
					<td>상품수량</td>
				</tr>
				<tr>
					<td> </td>
					<td>상품1</td>
					<td>100</td>
					<td>1</td>
				</tr>
			</table>
		</div><br>
		<div class="shopping">
		<h3>장바구니</h3>
			<table>
				<tr>
					<td>상품명</td>
					<td>상풍금액</td>
					<td>상품수량</td>
				</tr>
				<tr> 
					<td>상품2</td>
					<td>200</td>
					<td>2</td>
				</tr>	
			</table>
		</div>
	</div>


</body>
</html>