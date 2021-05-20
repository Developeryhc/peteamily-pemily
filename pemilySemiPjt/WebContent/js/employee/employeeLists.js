$(function(){
	//직원 공지사항에서 '수정'클릭 시 수정 페이지로 이동
	$('.modifyBtn').click(function(){
		const noticeNo = $(this).val();
		location.href="/noticeEmpModifyMove?noticeNo="+noticeNo;
	});
	//직원 공지사항에서 '삭제'클릭 시 삭제하기
	$('.deleteBtn').click(function(){
		const noticeNo = $(this).val();
		$('.eModal-wrap').css('display','flex');
		if(modalChk){
			location.href="/noticeDelete?noticeNo="+noticeNo;			
		}
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
		return true;
	});
	$('.noBtn').click(function(){
		return false;
	});
});
