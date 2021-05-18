<%@page import="outCa.model.vo.OutCa"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ArrayList<OutCa> list = (ArrayList<OutCa>)request.getAttribute("list");
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
		<h2 class="section-headline">분양</h2>
	    <table id="outCaList" class="printList">
	        <thead>
	            <tr>
	                <th>No</th><th>입양동물</th><th>입양자</th><th>분양가</th><th>분양지점</th><th>담당 매니저</th><th>분양일</th><th>계약서</th>
	            </tr>
	        </thead>
	        <tbody>
	            <%for(OutCa oCa : list){ %>
	            <tr>
	            	<td><%=oCa.getSort() %></td><td><%=oCa.getOutCaAn() %></td><td><%=oCa.getOutCaMi() %></td><td><%=oCa.getOutCaPrice() %></td><td><%=oCa.getOutCaStore() %></td><td><%=oCa.getOutCaEmp() %></td><td><%=oCa.getOutCaDate() %></td><td><%=oCa.getOutCaCon() %></td>
	            </tr>
	            <%} %>
	        	<%if(list.isEmpty()) {%>
       			<tr><td colspan="8">분양 내역이 없습니다...</td></tr>
	        	<%} %>
	        </tbody>
	    </table>
	    <%=navigation %>
	</section>
</body>
</html>