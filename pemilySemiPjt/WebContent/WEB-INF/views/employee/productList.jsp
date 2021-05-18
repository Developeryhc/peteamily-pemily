<%@page import="inPro.model.vo.InPro"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	ArrayList<InPro> list = (ArrayList<InPro>)request.getAttribute("list");
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
		<h2 class="section-headline">등록 상품 목록</h2>
    <table id="inProductList" class="printList">
        <thead>
            <tr>
                <th>No</th><th>분류</th><th>상품명</th><th>판매가</th><th>수량</th>
            </tr>
        </thead>
        <tbody>
            <%
            	for(InPro inPro : list){
            %>
            <tr>
            	<td><%=inPro.getSort() %></td><td><%=inPro.getInProSn() %></td><td><%=inPro.getInProName() %></td><td><%=inPro.getInProPrice() %></td><td><%=inPro.getInProAmount() %></td>
            </tr>
            <%} %>
        </tbody>
    </table>
    <%=navigation %>
	</section>
</body>
</html>