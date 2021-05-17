<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/js/jquery-3.3.1.js"></script>
    <style>
  .content{
        width: 100%;
        height: 900px;
        position: relative;
        }
        .login-bg{
        position: absolute;
        width: 100%;
        height: 100%;
        }
        .login-wrap{
        background-color:rgba(243, 243, 243, 0.926);
        width: 600px;
        height: 600px;
        margin: 0 auto;
        border-radius: 60px;
        margin-top: 130px;
        }
        .login-wrap>form{
        padding-top: 10px;
        }
        .login-wrap>form>h1{
        text-align: center;
        font-size: 39px;
        margin: 0px;
        padding-top:40px;
        }
        .login-wrap>form>div{
        margin: 0 auto;
        margin-top: 80px;
        width: 400px;
        font-size:16px ;
        }
        .input-box>input{
        width: 360px;
        height: 50px;
        border: 1px solid rgb(204, 204, 204);
        }
        .search-box>ul{
        list-style-type: none;
        }
        .search-box>ul>li{
        float: left;
        text-align: center;
        margin-left:27px ;
        }
        .search-box>ul>li>a{
        text-decoration: none;
        color: #221e1e;
        font-weight: bold;
        font-size: 14px;
        }
        .search-box>ul>li>a:hover{
        text-decoration: underline;
        }
        #login-btn {
        background-color: rgb(106, 208, 106);
        color: white;
        font-size: 20px;
        padding: 1px 2px;
        box-sizing: content-box;
        }
        #login-btn:hover{
        cursor: pointer;
        }

    </style>
</head>
<body>
	 <div class="wrap">
        <div class="hearder">
            headerd
        </div>
        <div class="content">
            <div class="login-bg">
                <div class="login-wrap">
                    <form action="#" method="post" autocomplete="off">
                        <h1>로그인</h1>
                        <div class="input-box">
                            <h3>아이디</h3>
                            <input type="text" name="id" placeholder="아이디를 입력해주세요"><br>
                            <h3>비밀번호</h3>
                            <input type="password" name="pw" placeholder="비밀번호를 입력해주세요"><br><br>
                            <input type="submit" id="login-btn" value="로그인">
                        </div>
                        <div class="search-box">
                            <ul>
                                <li>아이디가 없으신가요? <a href="/joinFrm">회원 가입</a></li>
                            </ul>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="footer">
            footer
        </div>
    </div>
</body>
</html>