<%@page import="employee.model.vo.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ArrayList<Employee> list = (ArrayList<Employee>)request.getAttribute("list");
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
		<h2 class="section-headline">직원</h2>
	    <table id="empList" class="printList">
	        <thead>
	            <tr>
	                <th>No</th><th>직원아이디</th><th>직원이름</th><th>소속</th>
	            </tr>
	        </thead>
	        <tbody>
	            <%for(Employee e : list){ %>
	            <tr>
	            	<td><%=e.getSort() %></td><td><%=e.getEmpId() %></td><td><%=e.getEmpName()%></td><td><%=e.getEmpStore() %></td>	
	            </tr>
	            <%} %>
	        </tbody>
	    </table>
	    <%=navigation %>
	</section>
</body>
</html>