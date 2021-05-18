<%@page import="notice.model.vo.Notice"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
   	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
    String navigation = (String)request.getAttribute("navigation");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<%@include file="/WEB-INF/views/employee/employeeNavi.jsp" %>
	<section>
		<h2 class="section-headline">직원 공지사항</h2>
		<table id="notice-table" class="printList">
            <thead>
                <tr>
                    <th>제목</th><th>작성자</th><th colspan="3">작성일</th>
                </tr>
            </thead>
            <tbody>
            	<%for(Notice n : list){ %>
            	<%--if(emp != null && emp.getGrade() == 1){ --%>
            	
            	<%--} --%>
            	<tr>
            		<td><%=n.getNoticeTitle() %></td><td><%=n.getNoticeWriter() %></td><td><%=n.getNoticeDate() %></td><td><button type="button" class="mdBtn">수정</button></td><td><button type="button" class="mdBtn">삭제</button></td>
            	</tr>
            	<%} %>
            </tbody>
        </table>
        <%=navigation %>
	</section>
</body>
</html>