<%@page import="inca.model.vo.Inca"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Inca inca = (Inca)request.getAttribute("inca");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.empMenu:nth-child(2)>a{
		color:#555;
    	background-color:#fff;
	}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<%@include file="/WEB-INF/views/common/empDefault.jsp" %>
	<%@include file="/WEB-INF/views/employee/employeeNavi.jsp" %>
	<section>
		<%=inca.getIncaAn() %>
		<%=inca.getIncaName() %>
	<%@include file="/WEB-INF/views/employee/empModal.jsp" %>
        <span class="hiddenTextChk">inca</span>
	</section>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>