<%@page import="notice.model.vo.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Notice n = (Notice)request.getAttribute("n");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		
		<legend>공지사항</legend>
		<table style="width:100%;">
		<tr>
			<th>제목</th>
			<th colspan="3"><%=n.getNoticeTitle() %></th>
		</tr>
		<tr class="table-light">
			<th>작성자</th>
			<th><%=n.getNoticeWriter()%></th>
			<th>작성일</th>
			<th><%=n.getNoticeDate()%></th>
		</tr>
			<%--<tr>
			<th>첨부파일</th>
			<th colspan="3">
				<%if(n.get!=null) {%>
				<img src="/img/file.png" width="16px">
				<%} %>
			</th>
		</tr> --%>
		
		<tr class="table-light">
			<th>내용</th>
			<th><%=n.getNoticeContentBr() %></th>
		</tr>
		<tr class="table-light">
			<th colspan="4" style="text-align:center;">
				<button class="btn btn-info" onclick="history.go(-1);">이전화면</button>
				<a href="/noticeUpdateFrm?noticeNo=<%=n.getNoticeNo()%>">수정하기</a>
				<a href="/noticeDelete?noticeNo=<%=n.getNoticeNo() %>">삭제하기</a>
				
				
				<%--<%if(m!=null && m.getMemberId().equals(b.getBoardWriter())) {%>
				<a class="btn btn-info" href="/boardUpdateFrm?boardNo=<%=b.getBoardNo() %>">수정하기</a>
				<a class="btn btn-info" href="/boardDelete?boardNo=<%=b.getBoardNo() %>">삭제하기</a>
				<%} %> --%>
		</tr>
		</table>
		</fieldset>
	</div>
</body>
</html>