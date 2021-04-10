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
	.project-item:hover {
		background: #1E1E28;
		cursor: pointer;
	}
	</style>
</head>
<body class="sidebar-mini ">
	<div class="wrapper">
	
		<%@ include file="../a01_main/sidebar.jsp"%>

		<div class="main-panel">

			<%@ include file="../a01_main/header.jsp"%>

			<!-- Start Content -->
			<div class="content">
				
				<div class="row">
					<div class="col-12 col-md-3 pr-0">
                    <div class="input-group m-0" style="top: 5px;">
                      <div class="input-group-prepend">
                        <div class="input-group-text">
                          <i class="tim-icons icon-zoom-split"></i>
                        </div>
                      </div>
                      <input type="text" name="firstname"
                      	class="form-control" placeholder="Search.."/>
                    </div>
					</div>
					<div class="col-12 col-md-2 text-left p-0">
						<button class="btn">검 색</button>
					</div>
					<div class="col-12 col-md-2 ml-auto text-right">
						<button class="btn btn-primary" onclick="location.href='${path}/a02_project/a00_regProject.jsp'">
							프로젝트 등록
						</button>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-body">
								<table id="simple-table" class="table text-center">
									<colgroup>
										<col width="30%">
										<col width="20%">
										<col width="15%">
										<col width="15%">
										<col width="10%">
										<col width="10%">
									</colgroup>
									<thead>
										<tr>
											<th>프로젝트</th>
											<th>프로젝트 코드</th>
											<th>시작일</th>
											<th>완료일</th>
											<th>산출물</th>
											<th>이슈</th>
										</tr>
									</thead>
									<tbody id="project-list">
										
									</tbody>
								</table>
								<ul class="pagination justify-content-center">
									<li class="page-item"><a class="page-link" href="#link"
										aria-label="Previous"> <span aria-hidden="true"><i
												class="tim-icons icon-double-left" aria-hidden="true"></i></span>
									</a></li>
									<li class="page-item"><a class="page-link" href="#link">1</a>
									</li>
									<li class="page-item active"><a class="page-link"
										href="#link">2</a></li>
									<li class="page-item"><a class="page-link" href="#link">3</a>
									</li>
									<li class="page-item"><a class="page-link" href="#link"
										aria-label="Next"> <span aria-hidden="true"><i
												class="tim-icons icon-double-right" aria-hidden="true"></i></span>
									</a></li>
								</ul>
							</div>
							<!-- end content-->
						</div>
						<!--  end card  -->
					</div>
					<!-- end col-md-12 -->
				</div>
				<!-- end row -->
      	</div>
			<!-- End Content -->

		</div>
	</div>
	<script src="${path}/assets/js/core/jquery.min.js"></script>
	<script>
	// 프로젝트 리스트 읽어오기
	$.ajax({
		type:"post",
		url:"${path}/project.do?method=data",
		/* data:$('form').serialize(), */
		dataType:"json",
		success:function(data){
			console.log(data);
			var projectList = data.projectList;
			
			var show = "";
			$.each(projectList, function(idx, pro){
				show += "<tr class='project-item'><td>"+pro.p_name+"</td>";
				show += "<td>"+pro.p_no+"</td>";
				show += "<td>"+pro.p_startD_s+"</td>";
				show += "<td>"+pro.p_endD_s+"</td>";
				show += "<td>"+5+"</td>";
				show += "<td>"+5+"</td></tr>";
			});
			$('#project-list').html(show);
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
		console.log(1);
		// 프로젝트 상세 클릭
		$('.project-item').on('click',function(){
			console.log($(this).children().eq(1).text());
			location.href="${path}/project.do?method=detail_1";
		});
	});
	</script>
</body>
</html>