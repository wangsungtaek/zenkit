<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html lang="en">

<head>
<%@ include file="../a01_main/bootstrapTop.jsp"%>
</head>

<body class="sidebar-mini ">
	<div class="wrapper">
		<%@ include file="../a01_main/sidebar.jsp"%>
		<div class="main-panel">
			
			<%@ include file="../a01_main/header.jsp"%>
			
			<div class="content">
				<div class="row">
					<div class="col-md-7">
						<div class="card card-user">
							<div class="card-body">
								<p class="card-text">
									<div class="author">
										<div class="block block-one"></div>
										<div class="block block-two"></div>
										<div class="block block-three"></div>
										<div class="block block-four"></div>
										<a href="javascript:void(0)"> <img class="avatar"
											src="${path}/assets/img/mike.jpg" alt="...">
											<h3 class="title">${sesMem.u_name} <span id="r_no"></span></h3>
										</a>
										<h4 class="title" id="d_name"></h4>
									</div>
								</p>
								<div class="row justify-content-center">
									<label class="col-sm-3 col-form-label text-right title">
										사원번호
									</label>
									<div class="col-sm-8">
										<div class="form-group">
											<input type="text" class="form-control" disabled 
		                        		value="${sesMem.u_id}" style="color: gray;">
										</div>
									</div>
								</div>
								<div class="row justify-content-center">
									<label class="col-sm-3 col-form-label text-right title">
										직책
									</label>
									<div class="col-sm-8">
										<div class="form-group">
											<input type="text" class="form-control" disabled 
		                        		value="${sesMem.pos_no}" style="color: gray;">
										</div>
									</div>
								</div>
								<div class="row justify-content-center">
									<label class="col-sm-3 col-form-label text-right title">
										직급
									</label>
									<div class="col-sm-8">
										<div class="form-group">
											<input type="text" class="form-control" disabled 
		                        		value="${sesMem.r_no}" style="color: gray;">
										</div>
									</div>
								</div>
								<div class="row justify-content-center">
									<label class="col-sm-3 col-form-label text-right title">
										이메일
									</label>
									<div class="col-sm-8">
										<div class="form-group">
											<input type="email" class="form-control" 
		                        		value="${sesMem.u_email}">
										</div>
									</div>
								</div>
								<div class="row justify-content-center">
									<label class="col-sm-3 col-form-label text-right title">
										기존 비밀번호
									</label>
									<div class="col-sm-8">
										<div class="form-group">
											<input type="password" class="form-control" 
		                        		value="" style="color: gray;">
										</div>
									</div>
								</div>
								<form id="RegisterValidation">
								<div class="row justify-content-center">
									<label class="col-sm-3 col-form-label text-right title">
										새 비밀번호
									</label>
									<div class="col-sm-8">
										<div class="form-group">
											<input type="password" class="form-control"  id="registerPassword" required>
										</div>
									</div>
								</div>
								<div class="row justify-content-center">
									<label class="col-sm-3 col-form-label text-right title">
										새 비밀번호 확인
									</label>
									<div class="col-sm-8">
										<div class="form-group">
											<input type="password" class="form-control"  id="registerPasswordConfirmation" equalto="#registerPassword" required>
										</div>
									</div>
								</div>
								</form>
								<div class="row justify-content-end mr-3 mt-1">
									<button type="submit" class="btn btn-fill btn-primary">
										수 정
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<script src="${path}/assets/js/core/jquery.min.js"></script>
	<script>
		$.ajax({
			type:"post",
			url:"${path}/user.do?method=model",
			dataType:"json",
			success:function(data){
				console.log(data);
				var deptList = data.deptList;
				var posList = data.posList;
				var rankList = data.rankList;
				
				$("#d_name").text(deptList["${sesMem.d_no}"-1].d_name);
				$("#r_no").text(rankList["${sesMem.r_no}"-1].r_name);
				console.log(posList["${sesMem.pos_no}"-1]);
			},
			error:function(err){
				console.log(err);
			}
		});
	</script>
	<%@ include file="../a01_main/plugin.jsp"%>
	<%@ include file="../a01_main/bootstrapBottom.jsp"%>
</body>
<script>
function setFormValidation(id) {
    $(id).validate({
      highlight: function(element) {
        $(element).closest('.form-group').removeClass('has-success').addClass('has-danger');
        $(element).closest('.form-check').removeClass('has-success').addClass('has-danger');
      },
      success: function(element) {
        $(element).closest('.form-group').removeClass('has-danger').addClass('has-success');
        $(element).closest('.form-check').removeClass('has-danger').addClass('has-success');
      },
      errorPlacement: function(error, element) {
        $(element).closest('.form-group').append(error);
      },
    });
  }
    $(document).ready(function() {
      setFormValidation('#RegisterValidation');
    });
    </script>
</html>