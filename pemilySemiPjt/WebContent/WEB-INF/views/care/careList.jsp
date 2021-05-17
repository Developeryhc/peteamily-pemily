<%@page import="care.model.vo.Care"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ArrayList<Care> list = (ArrayList<Care>)request.getAttribute("list");
    String pageNavi = (String)request.getAttribute("pageNavi");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
    .write>a{
      color : black;
      font-weight: bolder;
     
    }
	#pageNavi{
        text-align: center;
    }
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<fieldset>
		<legend>분양 후기 게시판</legend>
		<table class="table" style="width:100%;">
				<tr>
					<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th>
				</tr>
				<%for(Care c : list) {%>
				<tr>
					<td><%=c.getRnum() %></td>
					<td style="text-align:left;"><a href="/careView?careNo=<%=c.getCareNo()%>"><%=c.getCareTitle()%></a></td>
					<td><%=c.getCareWriter()%></td>
					<td><%=c.getCareDate() %></td>
				</tr>
				<%} %>
				<div class="write">
				<a href="/careWriteFrm">글쓰기</a>
				</div>
				
			</table>
			<div id="pageNavi"><%=pageNavi %></div>
	</fieldset>
</body>
</html>