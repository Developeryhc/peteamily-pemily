<%@page import="inca.model.vo.Inca"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ArrayList<Inca> list = (ArrayList<Inca>)request.getAttribute("list");
    String navigation = (String)request.getAttribute("navigation");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.activeMenu{
	color:#555;
    background-color:#fff;
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<%@include file="/WEB-INF/views/employee/employeeNavi.jsp" %>
	<section>
		<h2 class="section-headline">반려동물 목록</h2>
		<!-- 반려동물 list table -->
        <table id="com_animals" class="printList">
            <thead>
                <tr>
                    <th>No</th><th>과</th><th>종</th><th colspan="2">이름</th><th>개월</th><th>예상 분양가</th><th>검사</th><th>지점</th><th>분양</th>
                </tr>
            </thead>
            <tbody>
                <%for(Inca inca : list) {%>
            	<%
            		String condition = inca.getIncaCondition() == 0 ? "1차" : (inca.getIncaCondition() == 1 ? "2차" : "완료");
            	%>
                <tr>
                	<td><%=inca.getSort() %></td><td><%=inca.getIncaAn() %></td><td><%=inca.getIncaAn() %></td><td><%=inca.getIncaName() %></td><td><%=inca.getIncaName() %></td><td><%=inca.getIncaMonth() %></td><td><%=inca.getIncaPrice() %>원</td><td><%=condition %></td><td><%=inca.getIncaStore() %></td><td><%=inca.getIncaCondition() %></td>
                </tr>
                <%} %>
            </tbody>
        </table>
        <%=navigation %>
	</section>
	<script>
	</script>
</body>
</html>