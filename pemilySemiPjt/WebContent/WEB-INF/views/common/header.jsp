<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
    <!-- jQuery 라이브러리 추가 (2개) -->
<script type="text/javascript" src="/js/jquery-3.3.1.js"></script>
    <style>
        body{
            margin:0;
            height:2000px;
        }
        header{
            display:flex;
            width:100%;
            height:200px;
            line-height:200px;
            justify-content: space-evenly;
            border-bottom:1px solid black;
            position:fixed;
            top:0;
            background-color: rgba(238, 140, 148, 0.60);
        }
        header>ul{
            list-style:none;
            margin:0;
            padding:0;
            display:flex;
            
        }
        header a{
            text-decoration: none;
            color:black;
        }
        header>ul>li{
            width:100px;
            text-align:center;

        }
        header>ul>li:nth-child(3){
            width:150px;
            text-align:center;
        }
    </style>
</head>
<body>
	<header>
        <ul>
            <li><a href="/adopt">분양</a></li>
            <li><a href="#">상품</a></li>
            <li><a href="/">Pemily</a></li>
            <li><a href="#">커뮤니티</a></li>
            <li><a href="#">컨택</a></li>
        </ul>
	</header>
</body>
</html>