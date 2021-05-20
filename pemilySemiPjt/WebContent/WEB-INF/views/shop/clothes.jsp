<%@page import="inPro.model.vo.InPro"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    ArrayList<InPro> list = (ArrayList<InPro>)request.getAttribute("list");
    int count = list.size();
    
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<div class="container">
  <div class="content">
        <p>product</p>
		<%@include file="/WEB-INF/views/shop/shopMenu.jsp" %>
		      <!-- 기본 css -->
	    <link rel="stylesheet" href="/css/product/shop.css">
   		<script type="text/javascript"></script>
        <div class="c_hr"> 
            <p class="c_p">Total <%=count %> items</p>
            <button type="button">높은가격</button>
            <button type="button">낮은가격</button>
            <button type="button">리뷰순</button>
            <button type="button">인기도순</button>
        </div>

        <div class="p_main">
            <div>
              <%for(InPro pro : list) {%>
           	 	<div>
                    <img src="/upload/inProduct/<%=pro.getInProPic() %>" alt=""><br>
                    <a href="#"><%=pro.getInProName() %></a>
                    <p><%=pro.getInProPrice() %> won</p>
                </div>
            <%} %>
               
            </div>
        </div>

    </div>
</div>
    

</body>
</html>