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
		alert("선택된 작없이 없습니다.");
		//$('#authModal').modal('hide');
		return;
	}
	$('#authModal').modal();
	$('#authModalLabel').text($(this).text());
	$('#authContentLabel').text($(this).text()+' 내용');
});

$('.task_info_nav').on('click', function(){
	$('.task_info_nav').removeClass('active');
	$(this).addClass('active');
	$('.tab-pane').removeClass('active');
	$($(this).attr('href')).addClass('active');
});

$('#auth-cancle').on('click', function(){
	confirm('결재 회수 하시겠습까?');
});