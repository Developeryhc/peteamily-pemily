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
<style>
	.empMenu:nth-child(3)>a{
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
		<h2 class="section-headline">등록 상품 목록</h2>
    <table id="inProductList" class="printList">
        <thead>
            <tr>
                <th>No</th><th>분류</th><th>상품명</th><th>판매가</th><th>수량</th><th colspan="2"></th>
            </tr>
        </thead>
        <tbody>
            <%
            	for(InPro inPro : list){
            		 String proKinds = inPro.getInProSn()==10?"Snack":(inPro.getInProSn()==20?"Toy":(inPro.getInProSn()==30?"Clothes":"기타"));
            %>
            <tr>
            	<td><%=inPro.getSort() %></td><td><%=proKinds %></td><td><%=inPro.getInProName() %></td><td><%=inPro.getInProPrice() %><span class="won">원</span></td><td><%=inPro.getInProAmount() %><span class="won">개</span></td><td><button type="button" class="mdBtn modifyBtn">수정</button></td><td><button type="button" class="mdBtn deleteBtn">삭제</button></td>
            </tr>
            <%} %>
        </tbody>
    </table>
    <%=navigation %>
	</section>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>