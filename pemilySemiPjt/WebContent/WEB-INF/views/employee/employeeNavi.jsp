<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- 직원페이지 메뉴 css -->
<nav class="emp-nav-Wrap">
    <ul class="emp-nav">
        <li><a href="/noticeList?reqPage=1&noticeCom=1">공지사항</a></li>
        <li><a href="/companionAnimalList?reqPage=1">반려동물 목록</a></li>
        <li><a href="/productList?reqPage=1">물품 재고</a></li>
        <!-- 밑의 메뉴는 관리자 계정만 가능 -->
        <%--
        <%if(로그인 != null %% 로그인.getEmpGrade == '1'){ %>
        	여기에 들어갈 것
        <%} %>
        --%>
        <li><a href="/outCAList?reqPage=1">분양 내역</a></li>
        <li><a href="/outProList?reqPage=1">판매 내역</a></li>
        <li><a href="/empList?reqPage=1">직원 목록 </a></li>
        <li><a href="/memberList?reqPage=1">회원 목록</a></li>
        <li><a href="/insertPage">등록하기</a></li>
    </ul>
</nav>