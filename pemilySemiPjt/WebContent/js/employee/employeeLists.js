$(function(){
	//'수정'클릭 시 수정 페이지로 이동
	$('.modifyBtn').click(function(){
		const hiddenTextChk = $('.hiddenTextChk').html();
		const num = $(this).val();
		$('.confirmBtn').val(num);
		if(hiddenTextChk == 'noticeEmp'){
			location.href="/noticeEmpModifyMove?noticeNo="+num;
		}else if(hiddenTextChk == 'inca'){
			location.href="/incaModifyMove?incaNo="+num;			
		}else if(hiddenTextChk == 'inPro'){
			location.href="/inProModifyMove?inProNo="+num;						
		}
	});
	//공지사항 수정 '완료' 클릭 시 모달 동작
	$('.completeBtn').click(function(){
		const modifyCheck = $('#modifyCheck').val();
		const num = $(this).val();
		console.log(num);
		if(modifyCheck == 1){		//직원 공지 수정
			noticeModifyAjax(modifyCheck,num);
		}else if(modifyCheck == 2){	//반려동물 등록 수정
			incaModifyAjax(modifyCheck,num);
		}else if(modifyCheck == 3){	//물품 재고 수정
			inProModifyAjax(modifyCheck,num);
		}
	});
	//직원 공지사항에서 '삭제'클릭 시 삭제하기
	$('.deleteBtn').click(function(){
		$('.comment-box').html('정말 삭제하시겠습니까?');
		$('.ynCheck').css('display','flex');
		$('.okBtn').val($(this).val());
	});
	//모달 삭제 예/아니오 중 '예' 클릭 시 동작
	$('.okBtn').click(function(){
		const hiddenTextChk = $('.hiddenTextChk').html();
		//let href;
		if(hiddenTextChk == 'noticeEmp'){
			const noticeNo = $(this).val();
			noticeEmpDelete(noticeNo,hiddenTextChk);
	
		}else if(hiddenTextChk == 'inca'){
			const incaNo= $('.deleteBtn').val();
			console.log(incaNo);
			incaDelete(incaNo,hiddenTextChk);

		}else if(hiddenTextChk == 'inPro'){
			const inProNo = $('.deleteBtn').val();

		}
		$('.ynCheck').css('display','none');
		$('.ynCheck').find('comment-box').html('');
	});
	//모달의 '아니오' 버튼 클릭 시
	$('.noBtn').click(function(){
		$('.ynCheck').css('display','none');
		$('.ynCheck').find('comment-box').html('');
	});
	//모달의 '확인'버튼 클릭 시 동작
	$('.confirmBtn').click(function(){
		$('.confirmChk').find('comment-box').html('');
		$('.confirmChk').css('display','none');
		const reqHref = $('#modifyCheck').val();
		console.log($(this).val());
		if(reqHref == 1){
			location.href='/noticeEmpModifyMove?noticeNo='+$(this).val();
		}else if(reqHref == 2){
			location.href='/incaModifyMove?incaNo='+$(this).val();
		}else if(reqHref == 3){
		
		}
		
	});
	
});
//직원 공지 수정 완료 클릭 시
function noticeModifyAjax(num){
	const noticeContent = $('#modifyContentNote').val();
	const noticeNo = $('#noticeNo').val();
	const noticeWriter = $('#noticeWriter').val();
	const noticeTitle = $('#noticeTitle').val();
	$.ajax({
		url : "/nModifyFrm",
		data : {noticeContent : noticeContent, noticeNo : noticeNo, noticeWriter : noticeWriter, noticeTitle : noticeTitle},
		type : "post",
		success : function(data){
			const text = data>0?"수정 완료!" : "다시 시도해주세요ㅠ";
			$('.confirmChk').find('.comment-box').html(text);
			$('.confirmChk').css('display','flex');
			$('.confirmBtn').val(num);
		}
	});
}
//반려동물 등록 수정 '완료' 클릭 시
function incaModifyAjax(modifyCheck,num){
	const incaNo = $('#incaNo').val();
	const incaPrice	= $('#incaPrice').val();
	const incaCondition = $('#incaCondition').val();
	const incaStore = $('#incaStore').val();
	$.ajax({
		url : "/incaModifyFrm",
		data : {incaNo : incaNo, incaPrice : incaPrice, incaCondition : incaCondition, incaStore : incaStore},
		type : "post",
		success : function(data){
			const text = data>0?"수정 완료!" : "다시 시도해주세요ㅠ";
			$('.confirmChk').find('.comment-box').html(text);
			$('.confirmChk').css('display','flex');
			$('.confirmBtn').val(num);
		}
	});
}

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
//직원 공지사항 ajax로 delete
function incaDelete(val,hiddenTextChk){
//	const noticeNo = val;
	console.log(val);
	$.ajax({
		url : "/incaDelete",
		data : {incaNo : val},
		type : "get",
		success : function(data){
			const text = Number(data) > 0?"삭제되었습니다.":"다시 시도해주세요.";
			$('.confirmChk').find('.comment-box').html(text);
			$('.confirmChk').css('display','flex');
			$('.confirmBtn').val(hiddenTextChk);
		}
	});
	
}
function confirmModalOn(){
	$('.confirm').css('display','flex');
	
}
function confirmModalOff(){
	$('.confirm').css('display','none');
}