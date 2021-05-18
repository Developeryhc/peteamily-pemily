<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
    <!-- jQuery 라이브러리 추가 (2개) -->
<script type="text/javascript" src="/js/jquery-3.3.1.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Yanone+Kaffeesatz&display=swap" rel="stylesheet">
    <style>
        body{
            margin: 0;
        }
        header{
            display: flex;
            justify-content: center;
            background-color: rgb(246,246,246);
            border-bottom:1px solid black;
        }
        .header{
            display:flex;
            flex-direction: column;
            /* height:200px; */
            /* line-height:200px; */
            justify-content: space-evenly;
            /* position:fixed; */
            /* top:0; */
        }
        .header>ul{
            list-style:none;
            margin:0;
            padding:0;
            display:flex;
            align-items: flex-end;
            flex-direction: row;
			font-family: 'Yanone Kaffeesatz', sans-serif;
        }
        .header a{
            text-decoration: none;
            color:black;
        }
        .menu{
            width:100px;
            text-align:center;
        }
        .container{
        	width:1280px;
        	margin: 0 auto;
        }
        .empLink{
        	position : absolute;
        	top:0;
        	right:0;
        }
    </style>
</head>
<body>
    <header>
        <div class="header">
            <ul>
                <li class="menu"><a href="/ca?incaNo=2">Adopt</a></li>
                <li class="menu"><a href="/buyProduct">Goods</a></li>
                <li><a href="/"><img src="img/logo.JPG.jpg" alt="Logo" style="width:200px;"></a></li>
                <li class="menu"><a href="/community">Community</a></li>
                <li class="menu"><a href="/staff">Contact</a></li>
            </ul>
        </div>
    </header>
</body>
</html>