<%@page import="member.model.vo.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
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
		<h2 class="section-headline">회원</h2>
	    <table id="memberList" class="printList">
	        <thead>
	            <tr>
	                <th>No</th><th>회원아이디</th><th>등급</th><th>회원Email</th><th>가입일</th>
	            </tr>
	        </thead>
	        <tbody>
	        	<%for(Member ml : list){ %>
	            <tr>
	                <td><%=ml.getSort() %></td><td><%=ml.getMemberId() %></td><td><%=ml.getMemberGrade() %></td><td><%=ml.getMemberEmail() %></td><td><%=ml.getMemberEnter() %></td>
	            </tr>
	        	<%} %>
	        </tbody>
	    </table>
		<%=navigation %>	    
	</section>
</body>
</html>