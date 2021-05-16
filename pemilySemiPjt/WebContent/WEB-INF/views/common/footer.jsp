<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
    .testWrap{
        position:relative;
        height:800px;
    }
    .test{
        width:100px;
        height:400px;
        margin-top:130px;
        background-color:rgba(182, 215, 168, 0.54);
        position:sticky;
        top:130px;
        left:90%;
        border-radius: 30px;
    }
    .go-top{
        width:50px;
        height:50px;
        background-color: rgb(232,69,86);
        position:fixed;
        bottom:100px;
        left:100px;
        cursor:pointer;
    }
</style>
<body>
    <div class="testWrap">
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