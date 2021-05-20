<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<style>
.faq-wrap {
        width: 100%;
        height: 200px;
        margin: 10px auto;
        border: 1px solid #000000;
        position: relative;
    }
    .faq-wrap img {
        width: 100%;
        vertical-align: middle;
    }
    .faq-text {
        padding: 5px 10px;
        text-align: center;
        position: absolute;
	    top: 50%;
	    left: 50%;
        transform: translate( -50%, -50% );
    }
    input{
    margin-bottom : 10px;
    width: 100%;
    height: 30px}
     table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
  .left{
   border-bottom: 1px solid #444444;
   background-color : pink;}
   select{
   margin-bottom:10px;}
</style>
</head>
<body>
	<div class="container">
		<div class="faq-wrap">
        	<div class="faq-image"><img src="" alt="" width="100%;" height="200px;"></div>
        	<div class="faq-text">
            	<p>공지사항 작성</p>
        	</div>
    		</div>
    	
            
		<form action="/noticeWrite" method="post"> <!-- enctype="multipart/form-data" -->
			<select id="noticeChoice" name="noticeChoice">
            	<option valus="0" selected>공지 분류</option>
            	<option value="1">직원 공지</option>
            	<option value="2">회원 공지</option>
            </select>
		
			<div class="summer">
				<input type="text" class="summer" placeholder="제목을 작성해주세요" id="noticeTitle" name="noticeTitle">
				<input type="hidden" id="noticeCom" name="noticeCom" value="">
            <input type="hidden" id="noticeWriter" name="noticeWriter" value="도베르만">
			</div>
			<div class="summer">
			
				<textarea class="form-control" rows="5" id="summernote" value="" name="noticeContent"></textarea>
			</div>
			<button type="submit" class="btn btn-primary">등록하기</button>
			<button type="button" class="btn btn-info" onclick="history.go(-1);">돌아가기</button>
		</form>
	</div>

<script>
$(document).ready(function() {
    $('#summernote').summernote({
    	placeholder: "게시글을 작성해주세요",
            height: 200,                 // set editor height
            minHeight:400,             // set minimum height of editor
            focus: false ,                 // set focus to editable area after initializing summernote
            lang : "ko-KR",
            callbacks: { // 콜백 사용

            	   // 이미지 업로드할 경우 이벤트 발생

            	   onImageUpload:function( files) {
            	   	uploadImage(files[0],this);
            	   },
            	   onPaste : function(e){
            		   var clipboardData = e.originalEvent.clipboardData;
            		   if(clipboardData && clipboardData.items && clipboardData.items.length){
            			   var item = clipboardData.items[0];
            			   	if(item.kind == 'file' && item.type.indexOf('image/') !== -1){
            			   		e.preventDefault();
            			   	}
            		   }
            	   }
            	  }	
    });
    
    $('#noticeChoice').change(function(){
        //셀렉트값 불러와서 일치하는 폼 show() , id에 서머노트 적용시키기
        const option = $(this).val();
        const noticeCom = $("#noticeCom"); //히든id
        noticeCom.val("option");
        });
 
	});
	
function uploadImage(file, editor) {

    // 파일 전송을 위한 폼생성

 data = new FormData();

    data.append("file", file);

    $.ajax({ // ajax를 통해 파일 업로드 처리

        data : data,

        type : "POST",

        url : "/uploadImage",

        cache : false,

        contentType : false,

        processData : false,

        success : function(data) { // 처리가 성공할 경우

            // 에디터에 이미지 출력

         $(editor).summernote('insertImage', data);

        }

    });
}
			


</script>	
</body>
</html>