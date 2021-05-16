<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <style>
        div{
            /* border: 1px solid black; */
        }
        .top{
            height: 100px;
        }
        .middlewrap{
            height: 700px;
        }
        .middle{
            height: 700px;
        }
        .navi{
            height: 100px;
            background-color: rgba(182, 215, 168, 0.54);
        }
        .qna{
            height: 600px;
        }
        .bottom{
            
            height: 100px;
        }
        .header{
            height: 100px;
            background-color: rgba(238, 140, 148, 0.60);
        }
        
        .bottom{
            height: 100px;
            background-color:  rgba(174, 215, 232, 0.73);
        }
        h1{
            text-align: center;
            line-height: 50px;
        }
        h2{
            line-height: 60px;
            margin-left: 50px;
        }
       
        .menu>li{
            border-top: 1px solid gray;
            border-bottom: 1px solid gray;
            list-style: none;
            width: 600px;
        }
        li>a{
            text-decoration: none;
            color: black;
            margin-left: 5px;
        }
       
        .a{
            line-height: 40px;
            
         
        }
        .b{
            height: 100px;
            text-align: center;
            display: none;
            background-color: rgb(212, 208, 208);
        }
       
        li:hover>b{
            display: block;
        }
       p{
           text-align: left;
           margin-left: 10px;
       }
       .answser{
           margin-right: 5px;
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
	 <div class=wrap>
        <div class="middlewrap">
            <div class="middle">
                <div class="navi">
                    <h2>QnA</h2>
                </div>
                <div class="qna">
                    <ul class="menu">
                    <li class="a">
                        <a href="#">Pemily란 무슨 뜻인가요?</a>
                    </li>
                    <li class="b"><p>반려동물을 뜻하는 'Pet'과 가족의 'Familly'를 합성한
                        글자로 단순한 애완동물 취급이 아닌
                        가족으로 생각해 살아간다는 의미를 담고있습니다!</p></li>

                    <li class="a">
                        <a href="#">다른 회사와 다른 점이 뭔가요?</a>
                    </li>
                    <li class="b"><p>저희 Pemily는 다양한 반려동물들이 좀 더 보호 받고 
                        안전하게 분양될 수 있는 환경을 조성하고 싶습니다!</p></li>

                    <li class="a">
                        <a href="#">분양 하려면 어떤 절차가 있나요?</a>
                    </li>
                    <li class="b"><p>저희는 반려동물 친구들을 따로 운송/배송하지않습니다! 맘에 드는 친구들이 있으면 저희에게 문의 및 상담 후 같이 집으로 가실 수 있어요! </p></li>

                    <li class="a">
                        <a href="#">
                            어떤 반려동물이 있나요?</a>
                    </li>
                    <li class="b"><p>대중적인 고양이,강아지 말고도 파충류,양서류 등 많은 친구들이 있어요
                        자세한건 반려동물 친구들 카테고리를 참고해주세요</p></li>
                    </ul>
                    </table>

                </div>
            </div>
            </div>

        </div>


        </div>
    </div>
</body>
</html>