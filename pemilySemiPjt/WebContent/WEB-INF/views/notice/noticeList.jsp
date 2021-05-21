<%@page import="notice.model.vo.Notice"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
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
    fieldset{
    	border: none;}
    a{
    color : black;
     text-decoration: none;
      
    }
     .faq-wrap {
        width: 100%;
        height: 200px;
        margin: 10px auto;
        border: 1px solid #000000;
        position: relative;
    }
    .faq-wrap img {
        width: 100%;
        vertical-align: middle;
    }
    .faq-text {
        padding: 5px 10px;
        text-align: center;
        position: absolute;
	    top: 50%;
	    left: 50%;
        transform: translate( -50%, -50% );
    }
 
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<fieldset>
		<div class="faq-wrap">
        	<div class="faq-image"><img src="" alt="" width="100%;" height="200px;"></div>
        	<div class="faq-text">
            	<p>공지사항</p>
        	</div>
    		</div>
    		
    		
    		
    		
    		
    		
		<table class="table table-striped" style="width:100%;">
				<tr>
					<th>NO</th><th>제목</th><th>작성자</th><th>작성일</th>
				</tr>
				<%for(Notice n : list) {%>
				<tr>
					<td><%=n.getRnum() %></td>
					<td ><a href="/noticeView?noticeNo=<%=n.getNoticeNo()%>"><%=n.getNoticeTitle()%></a></td>
					<td><%=n.getNoticeWriter()%></td>
					<td><%=n.getNoticeDate() %></td>
				</tr>
				<%} %>
					
			</table>
			<a class="btn btn btn-default" href="/noticeWriteFrm">글쓰기</a>
			<div id="pageNavi"><%=pageNavi %></div> 
	</fieldset>
</div>
<%-- 
<script>
$(document).ready(function() {
	$('#noticeChoice').change(function(){
        //셀렉트값 불러와서 일치하는 폼 show() , id에 서머노트 적용시키기
        const option = $(this).val();
        const noticeCom = $("#noticeCom"); //히든id
        noticeCom.val("option");
        });
});
</script>
--%>
</body>
</html>