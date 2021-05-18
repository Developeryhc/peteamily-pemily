<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<%@ include file="/WEB-INF/views/employee/employeeNavi.jsp" %>
	<section>
		<div class="category">
	        <h4>카테고리 설정</h4>
	        <select id="menuSelect">
	            <option selected>선택</option>
	            <option value="noticeFrm">공지사항</option>
	            <option value="faqFrm">자주 듣는 질문</option>
	            <option value="incaFrm">반려동물 등록</option>
	            <option value="inProFrm">물품재고 등록</option>
	            <option value="parcelOutFrm">분양등록</option>
	            <option value="goodsFrm">물품등록</option>
	        </select>
		</div>
        <form class="forms" id="noticeFrm" action="/noticeWrite"><!-- action="/noticeWrite" -->
        	<!-- 넘겨줄 값 : 작성자,제목,내용 -->
            <h2>공지사항 등록</h2>
            <select id="noticeChoice">
            	<option value="0" selected>공지 분류</option>
            	<option value="1">직원 공지</option>
            	<option value="2">회원 공지</option>
            </select>
            <input type="hidden" id="noticeCom" name="noticeCom" value="0">
            <input type="hidden" id="noticeWriter" name="noticeWriter" value="도베르만">
            <input type="text" id="noticeTitle" class="title" name="noticeTitle" placeholder="제목 입력" autocomplete="off">
            <div id="noticeContent" class="summernote" name="noticeContent"></div>
            <div class="btns">
	            <button type="button" id="noticeBtn">작성완료</button>
	            <button type="button" class="cancelBtn">돌아가기</button>            
            </div>
        </form>
        <form class="forms" id="faqFrm" action="javascript:void(0);">
        	<h2>자주 듣는 질문 등록</h2>
        	<input type="text" class="title" name="서블릿에 전송할 명칭" placeholder="제목 입력">
            <div id="noticeContent" class="summernote" name="noticeContent"></div>
        </form>
        <form class="forms" id="incaFrm" action="/inCompanionAnimalWrite" method="post" enctype="multipart/form-data">
        	<h2>반려동물 등록</h2>
        	<!-- 동물 종 select -->
        	<div class="animalInfoWrap" id="animalInfoWrap">
        		<!-- 동물 등록 사진 : incaPic -->
        		<input type="file" id="incaPic" name="incaPic">
        		<label for="incaPic"></label>
        		<div>
	        		<div class="animalInfo">
			        	<div class="kindsWrap">
				        	<!-- 과 분류 -->
				        	<select id="kindChoice">
				            	<option value="0" selected>분류</option>
				            	<option value="dog">견</option><!-- dog -->
				            	<option value="cat">묘</option><!-- cat -->
				            	<option value="pisces">어류</option><!-- pisces -->
				            	<option value="amphibia">양서류</option><!-- amphibia -->
				            	<option value="arthropod">절지류</option><!-- arthropod -->
				            	<option value="reptile">파충류</option><!-- reptile -->
				            </select>
				            <div class="kindsBox">
					            <!-- 견 -->
					            <select id="dog" class="kinds">
					            	<option value="0" selected>분류</option>
					            	<option value="2">닥스훈트</option>
					            	<option value="2">말티즈</option>
					            	<option value="2">비글</option>
					            	<option value="2">비숑 프리제</option>
					            	<option value="2">보더 콜리</option>
					            	<option value="2">시바</option>
					            	<option value="2">시추</option>
					            	<option value="2">웰시 코기</option>
					            	<option value="2">제페니즈 스피츠</option>
					            	<option value="2">치와와</option>
					            	<option value="2">퍼그</option>
					            	<option value="2">포메라니안</option>
					            	<option value="2">푸들</option>
					            </select>
					            <!-- 묘 -->
					            <select id="cat" class="kinds">
					            	<option value="0" selected>분류</option>
					            	<option value="14">러시안 블루</option>
					            	<option value="15">랙돌</option>
					            	<option value="16">먼치킨</option>
					            	<option value="17">브리티시 숏헤어</option>
					            	<option value="18">브리티시 롱헤어</option>
					            	<option value="19">봄베이</option>
					            	<option value="20">뱅골</option>
					            	<option value="21">사바나</option>
					            	<option value="22">샴</option>
					            	<option value="23">시베리안</option>
					            	<option value="24">스코티시 폴드</option>
					            	<option value="25">아메리칸 숏헤어</option>
					            	<option value="26">유러피안 숏헤어</option>
					            	<option value="27">페르시안</option>
					            </select>
					            <!-- 어류 -->
					            <select id="pisces" class="kinds">
					            	<option value="0" selected>분류</option>
					            </select>
					            <!-- 양서류 -->
					            <select id="arthropod" class="kinds">
					            	<option value="0" selected>분류</option>
					            </select>
					            <!-- 절지류 -->
					            <select id="amphibia" class="kinds">
					            	<option value="0" selected>분류</option>
					            </select>
					            <!-- 파충류 -->
					            <select id="reptile" class="kinds">
					            	<option value="0" selected>분류</option>
					            	<!-- 도마뱀 > 카멜레온, 이구아나 포함... -->
					            	<optgroup label="도마뱀">
						            	<option value="">종1</option>
						            	<option value="">종2</option>
						            	<option value="">종3</option>
						            	<option value="">종4</option>		            	
					            	</optgroup>
					            	<optgroup label="게코">
						            	<option value="">크레스티드 게코</option>
						            	<option value="">레오파드 게코</option>
						            	<option value="">토카이</option>
					            	</optgroup>
					            	<optgroup label="뱀">
					            		<option value="">비단뱀</option>
					            		<option value="">구렁이</option>
					            		<option value="">아나콘다</option>
					            		<option value="">살모사</option>
					            		<option value="">블랙맘바</option>
					            	</optgroup>
					            	<optgroup label="거북">
					            		<option value="">종1</option>
					            		<option value="">종2</option>
					            		<option value="">종3</option>
					            		<option value="">종4</option>
					            		<option value="">종5</option>
					            		<option value="">종6</option>
					            	</optgroup>
					            </select>
				            </div>
			        	</div>
			        	<div class="animalDivWrap">
				            <!-- 동물 이름 : incaName -->
				            <input type="text" class="incaInputs" id="incaName" name="incaName" placeholder="이름(5자 이내)">
				            <!-- 동물 성별 select -->
				            <select id="incaGenderSel">
				            	<option value="0" selected>성별</option>
				            	<option value="M">남아</option>
				            	<option value="F">여아</option>
				            </select>
			        	</div>
			        	<div class="animalDivWrap">
			            	<!-- 동물 분양가 : incaPrice-->
				            <input type="text" class="incaInputs" id="incaPriceFake" placeholder="분양가">
				            <input type="hidden" id="incaPrice" name="incaPrice">
				            <!-- 동물 지점 select -->
				            <select id="incaStoreSel">
				            	<option value="0" selected>지점</option>
				            	<option value="1">당산</option>
				            	<option value="2">강남 1호점</option>
				            	<option value="3">강남 2호점</option>
				            	<option value="4">강남 3호점</option>
				            	<option value="5">종로</option>
				            	<option value="6">이태원</option>
				            	<option value="7">울산</option>
				            </select>
			        	</div>
			        	
		            	<!-- 동물 개월 수 : incaMonth-->
		            	<input type="text" class="incaInputs" id="incaMonth" name="incaMonth" placeholder="개월 수">
			       		<div class="btns" id="incaBtnWrap">
			       			<button type="button" id="incaBtn">등록</button>
			       			<button type="button" class="cancelBtn">취소</button>
			       		</div>
	        		</div>
        		</div>
        	</div>
        	<!-- 동물 종 : incaAn -->
        	<input type="hidden" id="incaAn" name="incaAn" value="0">
        	<!-- 동물 성별 : incaGender -->
        	<input type="hidden" id="incaGender" name="incaGender" value="0">
        	<!-- 동물 등록 지점 : incaStore-->
        	<input type="hidden" id="incaStore" name="incaStore" value="0">
            <!-- 동물 건강(검사) : incaCondition--><!-- 처음 등록은 '0'값을 넘겨준다. -->
            <input type="hidden" id="incaCondition" name="incaCondition" value="0">
        </form>
        <!-- 물품재고 등록 form -->
        <form class="forms" id="inProFrm" action="/inProductWrite" method="post" enctype="multipart/form-data">
        	<h2>물품 재고 등록</h2>
        	<div class="inProWrap">
        		<input type="file" id="inProPic" name="inProPic">
        		<label for="inProPic"></label>
        		<div class="proWrap">
        			<!-- 상품 이름 -->     
        			<input type="text" id="inProName" class="inProInputs" name="inProName" placeholder="상품 이름 입력">
        			<!-- 상품 분류 -->			
		        	<select id="inProKind">
		        		<option value="0" selected>분류</option>
		        			<option value="5">올인원 상품</option>
		        			<option value="10">비브리움?</option>
		        			<option value="15">집</option>
		        			<option value="20">영양제</option>
		        			<option value="25">사료</option>
		        			<option value="30">하네스</option>
		    	    		<option value="35">목줄</option>
			        		<option value="40">입마개</option>
			        		<option value="45">패드</option>
		        			<option value="50">놀이기구</option>        		
		        			<option value="55">캣 타워</option>
		        			<option value="60">조형물</option>
		        			<option value="65">어항(수조)</option>
		        			<option value="70">여과기</option>
		        	</select>
		        	<!-- 상품 분류 -->
		        	<input type="hidden" id="inProSn" name="inProSn" value="0">
		        	<!-- 상품 수량 -->
		        	<input type="text" id="inProAmount" class="inProInputs" name="inProAmount" placeholder="상품 수량 입력">
		        	<!-- 상품 가격 -->
		        	<input type="text" id="inProPriceFake" class="inProInputs" placeholder="상품 가격 입력">
		        	<input type="hidden" id="inProPrice" class="inProInputs" name="inProPrice">
		        	<div class="btns" id="inProBtnWrap">
		        		<button type="button" id="inProBtn">등록</button>
		        		<button type="button" class="cancelBtn">취소</button>
		        	</div>
        		</div>
        	</div>
        </form>
        <form class="forms" id="parcelOutFrm" action="javascript:void(0);">
        	<h2>분양 등록</h2>
        	<input type="text" class="title" name="서블릿에 전송할 명칭" placeholder="제목 입력">
            <div id="noticeContent" class="summernote" name="noticeContent"></div>
        </form>
        <form class="forms" id="goodsFrm" action="javascript:void(0);">
        	<h2>물품 등록</h2>
        	<input type="text" class="title" name="서블릿에 전송할 명칭" placeholder="제목 입력">
            <div id="noticeContent" class="summernote" name="noticeContent"></div>
        </form>
    </section>
</body>
</html>