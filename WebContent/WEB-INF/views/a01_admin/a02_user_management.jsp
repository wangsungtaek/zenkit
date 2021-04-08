<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../a01_main/bootstrapTop.jsp"%>
	<style>
		.user-list {
			padding: 10px;
		}
		.user-list:hover {
			background: #1E1E28;
			cursor: pointer;
		}
	</style>
</head>

<body class="sidebar-mini ">
	<div class="wrapper">

		<%@ include file="sidebar.jsp"%>

		<div class="main-panel">
			
			<%@ include file="../a01_main/header.jsp"%>

			<!-- Start Content -->
			<div class="content">

				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<form id="searchForm">
								<div class="row">
									<div class="col-2">
										<h4 class="title">임직원 조회</h4>
									</div>
									<div class="col-3">
										<select class="selectpicker" data-size="7" name="d_name" id="dept"
											data-style="btn btn-primary" title="">
											<option selected>부서</option>
										</select>
									</div>
									<div class="col-3">
										<select class="selectpicker" data-size="7" name="pos_name" id="position"
											data-style="btn btn-primary" title="Single Select">
											<option selected>직책</option>
										</select>
									</div>	
									<div class="col-3">
										<select class="selectpicker" data-size="7" name="r_name" id="rank"
											data-style="btn btn-primary" title="Single Select">
											<option selected>직급</option>
										</select>
									</div>
								</div>
								</form>
							</div>
							<div class="card-body">
								<div class="table-responsive" style="overflow:auto; height: 500px">
									<table class="table">
										<colgroup>
											<col width="17%"><col width="17%"><col width="17%">
											<col width="17%"><col width="17%"><col width="*">
										</colgroup>
										<thead class="text-primary">
											<tr class="text-center">
												<th>아이디</th><th>이름</th><th>부서</th>
												<th>직책</th><th>직급</th><th></th>
											</tr>
										</thead>
										<tbody class="text-center" id="userList">
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<form method="get" action="/" class="form-horizontal">
							<div class="card">
								<div class="card-body">
									<!-- 직원정보 -->
									<div class="row text-left">
										<div class="col-1 p-0 align-items-center d-flex justify-content-end">
											<label class="col-form-label m-0 p-0">
												이메일 *
											</label>
										</div>
										<div class="col-5">
											<div class="form-group mt-2">
												<input type="email" class="form-control" name="d_name"
													placeholder="exam@email.com">
											</div>
										</div>
										<div class="col-3 align-items-center pt-1">
											<button type="submit" class="btn btn-primary">
												<i class="tim-icons icon-simple-add"></i> 초대
											</button>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- End Content -->
		</div>
	</div>
	<script src="${path}/assets/js/core/jquery.min.js"></script>
	<script>
		$.ajax({
			type:"post",
			url:"${path}/user.do?method=data",
			data:$('#searchForm').serialize(),
				dataType:"json",
			success:function(data){
				console.log(data);
				var userList = data.userList;
				var deptList = data.deptList;
				var posList = data.posList;
				var rankList = data.rankList;
				
				/* deptList */
				var show = "";
				$.each(deptList, function(idx, dept){
					show += "<option>"+dept.d_name+"</option>";
				})
				$('#dept').append(show);
	
				/* positionList */
				show = "";
				$.each(posList, function(idx, position){
					show += "<option>"+position.pos_name+"</option>";
				})
				$('#position').append(show);
				
				/* rankList */
				show = "";
				$.each(rankList, function(idx, rank){
					show += "<option>"+rank.r_name+"</option>";
				})
				$('#rank').append(show);
				
				/* userList */
				show = "";
				$.each(userList, function(idx, user){
					show += "<tr><td>"+user.u_id+"</td>";
					show += "<td>"+user.u_name+"</td>";
					show += "<td>"+user.d_name+"</td>";
					show += "<td>"+user.pos_name+"</td>";
					show += "<td>"+user.r_name+"</td></tr>";
				})
				$('#userList').append(show);
			},
			error:function(err){
				console.log(err);
			}
		});
	
	</script>
	
	<%@ include file="../a01_main/plugin.jsp"%>
	<%@ include file="../a01_main/bootstrapBottom.jsp"%>
	
	<script>
		$(document).ready(function() {
			
			$('.selectpicker').change(function(){
				console.log($(this).val());
				console.log($('#searchForm').serialize());
				$.ajax({
					type:"post",
					url:"${path}/user.do?method=data",
					data:$('#searchForm').serialize(),
	 				dataType:"json",
					success:function(data){
						console.log(data);
						var userList = data.userList;
						
						var show = "";
						$.each(userList, function(idx, user){
							show += "<tr><td>"+user.u_id+"</td>";
							show += "<td>"+user.u_name+"</td>";
							show += "<td>"+user.d_name+"</td>";
							show += "<td>"+user.pos_name+"</td>";
							show += "<td>"+user.r_name+"</td></tr>";
						})
						$('#userList').html(show);
						
					},
					error:function(err){
						console.log(err);
					}
				});
			})
		});
	</script>
</body>

</html>