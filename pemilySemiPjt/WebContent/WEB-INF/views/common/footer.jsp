<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
	.footer{
		background-color: rgb(182, 215, 168);
		height: 200px;
	}
</style>
<body>
    <div class="footer">
        <div class="test"></div>
        <div class="go-top"></div>
    </div>
    <script>
        $('.go-top').click(function(){
            window.scrollTo(0,0);
        });
    </script>
</body>
</html>