$(function(){
	//직원 공지사항에서 '수정'클릭 시 수정 페이지로 이동
	$('.modifyBtn').click(function(){
		const hiddenTextChk = $('.hiddenTextChk').html();
		const num = $(this).val();
		if(hiddenTextChk == 'noticeEmp'){
			location.href="/noticeEmpModifyMove?noticeNo="+num;
		}else if(hiddenTextChk == 'inca'){
			location.href="/incaModifyMove?incaNo="+num;			
		}else if(hiddenTextChk == 'inPro'){
			location.href="/inProModifyMove?inProNo="+num;						
		}
	});
	//직원 공지사항에서 '삭제'클릭 시 삭제하기
	$('.deleteBtn').click(function(){
		$('.comment-box').html('정말 삭제하시겠습니까?');
		$('.ynCheck').css('display','flex');
		$('.okBtn').val($(this).val());
	});
	//공지사항 수정 페이지에서 '완료' 클리 시 update
	$('.completeBtn').click(function(){
		const noticeTitle = $('#nModifyTitle').val();
		const noticeContent = $('#modifyContentNote').summernote('code');
		console.log(noticeTitle);
		console.log(noticeContent);
		if(noticeTitle==''){
			alert('제목을 입력해주세요.');
			return;
		}else if(noticeContent==''){
			alert('내용을 입력해주세요.');
			return;
		}
		$('.nModifyFrm').submit();
	});
	$('.okBtn').click(function(){
		const hiddenTextChk = $('.hiddenTextChk').html();
		//let href;
		if(hiddenTextChk == 'noticeEmp'){
			const noticeNo = $(this).val();
			console.log(noticeNo);
			noticeEmpDelete(noticeNo,hiddenTextChk);
			//href = "/noticeEmpDelete?noticeNo="+noticeNo;		
		}else if(hiddenTextChk == 'inca'){
			const incaNo= $('.deleteBtn').val();
			//href = "/incaDelete?incaNo="+incaNo;
		}else if(hiddenTextChk == 'inPro'){
			const inProNo = $('.deleteBtn').val();
			//href = "/inProDelete?inProNo="+inProNo;
		}
		//location.href=href;
		$('.ynCheck').css('display','none');
		$('.ynCheck').find('comment-box').html('');
	});
	$('.noBtn').click(function(){
		$('.ynCheck').css('display','none');
		$('.ynCheck').find('comment-box').html('');
	});
	$('.confirmBtn').click(function(){
		$('.confirmChk').find('comment-box').html('');
		$('.confirmChk').css('display','none');
		const reqHref = $(this).val();
		if(reqHref == 'noticeEmp'){
			location.href='/noticeList?reqPage=1&noticeCom=1';
		}		
	});
	
});
//직원 공지사항 ajax로 delete
function noticeEmpDelete(val,hiddenTextChk){
//	const noticeNo = val;
	console.log(val);
	$.ajax({
		url : "/noticeEmpDelete",
		data : {noticeNo : val},
		type : "get",
		success : function(data){
			const text = Number(data) > 0?"삭제되었습니다.":"다시 시도해주세요.";
			$('.confirmChk').find('.comment-box').html(text);
			$('.confirmChk').css('display','flex');
			$('.confirmBtn').val(hiddenTextChk);
		}
	});
	
}