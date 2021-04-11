$('#checkAll').click(function(){
	var chk = $(this).is(":checked");
	if(chk) {
		$(".form-check-input").prop('checked', true);
	} else {
		$(".form-check-input").prop('checked', false);
	}
});

$('.btn-app').click(function(){
	if(!$('.form-check-input').is(":checked")) {
		alert("선택된 작업이 없습니다.");
		return;
	}
	$('#authModal').modal();
	$('#authModalLabel').text($(this).text());
	$('#authContentLabel').text($(this).text()+' 내용');
});

$('#authBtn').on('click', function(){
	var a_resultN = $('#auth_content').val();
	var a_name = '';
	if($('#authModalLabel').text()=='작업승인') {
		a_name='승인완료';
	} else if($('#authModalLabel').text()=='작업반려') {
		a_name='반려';
	}
	$('input:checkbox[name=checkano]:checked').each(function(){
		$.ajax({
			type:"post",
			url:path+"/apprej.do",
			data:"a_no="+$(this).val()+"&a_resultN="+a_resultN+"&a_name="+a_name,
			success:function(){
				console.log("성공");
			},
			error:function(request, status, err){
				console.log(request);
				console.log(status);
				console.log(err);
			}
		});
	});
});

$('.task_info_nav').on('click', function(){
	$('.task_info_nav').removeClass('active');
	$(this).addClass('active');
	$('.tab-pane').removeClass('active');
	$($(this).attr('href')).addClass('active');
	return false; // a태그 #sss 주소 안나오게 하기
});

$('[class^=jno]').on('click', function(){
	var j_no=$(this).attr('class').split("_")[1];
	var a_no=$(this).parent().parent().data('ano');
	$.ajax({
		type:"post",
		url:path+"/jsonModal.do",
		data:"j_no="+j_no+"&a_no="+a_no,
		dataType:"json",
		success:function(data){
			modalJobInfo(data.jobInfo);
			modalAuthInfo(data.authInfo);
			modalOutputInfo(data.outputs);
		},
		error:function(request, status, err){
			console.log(request);
			console.log(status);
			console.log(err);
		}
	});
});

function modalOutputInfo(data) {
	$('#tab_1_2 .grid-template-row').empty();
	$.each(data, function(idx, output){
		var outputCode = '';
		outputCode += '<div class="row grid-row"><div class="col-md-7">';
		outputCode += '<div class="forum-list-title" id="task_outputname">'+output.o_name+'</div></div>';
		outputCode += '<div class="col-md-4" style="max-width: 32%;">';
		outputCode += '<a href="#" class="btn-label-brand btn btn-sm" title="파일 다운로드">';
		outputCode += '<i class="fa fa-download"></i></a></div></div>';
		$('#tab_1_2 .grid-template-row').append(outputCode);
	});
}

function modalAuthInfo(data) {
	$('#modal_reqName').text(data.req_name);
	$('#modal_reqN').text(data.a_requestN);
	$('#task_resName').text(data.res_name);
	console.log(data.a_name);
	if(data.a_name=='반려' || data.a_name=='승인완료') {
		$('#modal_resName').text(data.res_name);
		$('#modal_resN').text(data.a_resultN);
	} else {
		$('.task_resInfo').empty();	
	}
}

function modalJobInfo(data) {
	$('#task_name').text(data.j_name);
	$('#task_start').text(new Date(data.j_startD).toLocaleDateString());
	$('#task_finish').text(new Date(data.j_endD).toLocaleDateString());
	$('#task_completeP').text(data.j_completeR*100+'%');
}

$('.auth-cancle').on('click', function(){
	console.log($(this).parent().parent().data('ano'));
	var ano=$(this).parent().parent().data('ano');
	if(confirm('결재 회수 하시겠습니까?')) {
		location.href=path+'/retire.do?a_no='+ano;
	}
});

$('#a_name').on('change', function(){
	$('.auth-search-btn').click();
});

$('#pro_name').on('change', function(){
	$('.auth-search-btn').click();
});