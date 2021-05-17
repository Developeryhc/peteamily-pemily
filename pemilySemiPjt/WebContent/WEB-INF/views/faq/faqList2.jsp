<%@page import="java.util.ArrayList"%>
<%@page import="faq.model.vo.Faq"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	ArrayList<Faq> list = (ArrayList<Faq>)request.getAttribute("list");
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	li{
	 list-style: none;
	 }
	 .b{
	 	display:none;
	 }
</style>

 <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
     <script>
           $(function(){
             $(".a").append("<span class='answer'></span>"); //+버튼 추가 ul태그를 가진 태그 전의 a태그에만 +가 있어야댐
             $(".answer").click(function(event){  //more를 클릭했을때 + 돌리고 메뉴 보여줌
                 $(this).parent().next().slideToggle();     //more기준으로 부모의 형제임
                if($(this).attr("class") == "more"){
                    $(this).addClass("active");
                }else{
                    $(this).removeClass("active");
                }
                event.stopPropagation();//버블링제거
            });
             $(".answer").parent().click(function(){ //more sapn을 가진 a태그만 클릭시
                $(this).children().last().click();
            });
        });
     </script>

</head>
<body>
	<div>
		<fieldset>
			<legend>자주하는 질문</legend>
			<div>
				<ul class="menu">
					<li class="a">질문</li>
					<li class="b">답변</li>
					<li class="a">
					<%for(Faq faq :list) {%>
					<%=faq.getFaqTiite() %>
					<%} %>
					</li>
					<li class="b">
					<%for(Faq faq :list) {%>
					<%=faq.getFaqContentBr() %>
					<%} %>
					</li>
			
				</ul>
				<%for(Faq f : list) {%>
				<a href="/faqUpdateFrm?faqNo=<%=f.getFaqNo() %>">수정하기</a>
				<a href="/faqDelete?faqNo=<%=f.getFaqNo() %>">삭제하기</a>
				<%} %>
					
			</div>
		</fieldset>
	</div>
</body>
</html>