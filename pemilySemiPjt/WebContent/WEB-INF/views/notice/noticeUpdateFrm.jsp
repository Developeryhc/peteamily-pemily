<%@page import="notice.model.vo.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Notice n = (Notice)request.getAttribute("n");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
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
        background-color: rgba(242, 217, 207, 0.84);
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
</style>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<div class="container">
		<div class="faq-wrap">
        	<div class="faq-image"></div>
        	<div class="faq-text">
            	<p>공지사항 수정</p>
        	</div>
    		</div>
		<form action="/noticeUpdate" method="post"> <!-- enctype="multipart/form-data" -->
		<input type="hidden" name="noticeNo" value="<%=n.getNoticeNo() %>">
			<div class="summer">
				<input type="text" class="summer" placeholder="제목" id="noticeTitle" name="noticeTitle"
					value="<%=n.getNoticeTitle()%>">
			</div>
			<div class="summer">
			
				<textarea class="form-control" rows="5" id="summernote" value="" name="noticeContent">
				<%=n.getNoticeContent() %>
				</textarea>
			</div>
			<button type="submit" class="btn btn-primary">수정 하기</button>
			<button type="button" class="btn btn-info" onclick="history.go(-1);">돌아가기</button>
		</form>
		
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>

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