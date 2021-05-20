<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/js/jquery-3.3.1.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
		<div class="hearder">header</div>
		<div class="content">
			<div class="jogin-bg">
				<div class="jogin-wrap">
					<form action="/findId" method="post" autocomplete="off">
						<h1>아이디 찾기</h1>
						<div class="input-box">
							<h3>이름</h3>
							<input type="text" name="memberName" placeholder="이름을 입력해주세요"><br>
							<h3>이메일</h3>
							<input type="email" name="memberEmail" id="memberEmail" class="memberEmail" placeholder="이메일을 입력해주세요"><br> 	
							<h3>전화번호</h3>
							<input type="tel" name="memberPhone" id="memberPhone" class="memberPhone" placeholder="전화번호를 입력해주세요"><br>
							<br>
							<br> <input type="submit" id="join-btn" value="아이디 찾기">
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="footer">footer</div>
	</div>
</body>
</html>