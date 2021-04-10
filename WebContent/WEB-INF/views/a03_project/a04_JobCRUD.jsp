<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<c:set var="fileName" value="${pageContext.request.servletPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<%@ include file="../a01_main/bootstrapTop.jsp"%>
<script type="text/javascript">
	$(document).ready(function() {
		$.ajax({
			type:"post",
			url:"${path}/job.do?method=data2",
			dataType:"json",
			success: function(data){
				console.log(data);
				var joblist = data.job;
				var show = "";
				$.each(joblist, function(idx, job){
					show += "<tr class='data' id="+job.j_no+">";
					show += "<td>"+job.j_no+"</td>";
					show += "<td style='text-align:left'>"+job.j_name+"</td>";
					show += "<td>"+job.j_pname+"</td>";
					show += "<td>"+job.j_startD_s+"</td>";
					show += "<td>"+job.j_endD_s+"</td>";
					show += "<td>"+job.j_charger+"</td>";
					show += "<td>";
					show += "<div class='progress-container' style='padding-top:4px;'>";
					show += "<div class='progress'>";
					show += "<div class='progress-bar' role='progressbar' aria-valuenow='60' aria-valuemin='0' aria-valuemax='100' style='width:"+job.j_completeR*100+"%;'>";
					show += "<span class='progress-value'>"+job.j_completeR*100+"%</span>";
					show += "</div>";	
					show += "</div>";	
					show += "</div>";	
					show += "</td>";	
					show += "</tr>";
				});
				$("#list").html(show);
				$(".data").on("dblclick",function(){
					var no = $(this).attr("id");
					location.href="${path}/job.do?method=detail&no="+no;
				});
			},
			error:function(err){
				alert("에러발생");
				console.log(err);
			}
		});
		$("#jobbtn").attr("class", "btn btn-primary");
		
		$("#jobBack").on("click",function(){
			location.href="${path}/job.do?method=job";
		});
		
		$("#regBtn").on("click",function(){
			location.href="${path}/job.do?method=insertForm";
		});
		
		$('#task_finish').text(new Date(data.j_endD).toLocaleDateString());
		
	});
</script>
<style>
#tableData th {
	text-align: center;
}

#tableData td {
	text-align: center;
}
</style>
</head>
<body class="sidebar-mini ">
	<div class="wrapper">

		<%@ include file="../a01_main/sidebar.jsp"%>

		<div class="main-panel">

			<%@ include file="../a01_main/header.jsp"%>

			<!-- Start Content -->
			<div class="content" style="width: 100%; height: 100%;">
				<%@ include file="project_header.jsp"%>

				<!--  -->
				<div class="row">
					<div class="col" style="height: 600px;">
						<div class="col-md-8 ml-auto mr-auto">
							<h2 class="text-center">작업 관리</h2>
						</div>
						<div class="card" style="padding: 10px; display: flex;">
							<div id="jobH" class="row">
								<div class="col">
									<button class="btn btn-primary btn-round" disabled>총
										${count}건</button>
								</div>
								<div class="col" align="right">
									<span style="font-size: 10pt; color: white; margin: 0px 10px;">페이지 크기 :</span> 
										<label> 
											<select class="custom-select" name="pageSize">
												<c:forEach var="page" items="${pageO }">
													<option selected value="${page}">${page}</option>
												</c:forEach>
											</select>
									</label>
								</div>
							</div>

							<table class="table table-striped" id="tableData">
								<thead>
									<tr>
										<th width="10%">작업번호</th>
										<th width="30%" style="text-align:left">작업명</th>
										<th width="10%">프로젝트명</th>
										<th width="15%">시작날짜</th>
										<th width="15%">종료날짜</th>
										<th width="10%">담당자</th>
										<th width="10%">완료율</th>
									</tr>
								</thead>
								<tbody id="list">
									<%-- <c:forEach var="job" items="${joblist }">
										<tr class="data" id="${job.j_no}">
											<td>${job.j_no }</td>
											<td style="text-align:left">${job.j_name }</td>
											<td>${job.j_pname }</td>
											<td>${job.j_startD }</td>
											<td>${job.j_endD }</td>
											<td>${job.j_charger }</td>
											<td>
												<div class="progress-container" style="padding-top:4px;">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
															style="width: ${job.j_completeR *100}%;">
															<span class="progress-value">${job.j_completeR *100}%</span>
														</div>
													</div>
												</div>
											</td>
										</tr>
									</c:forEach> --%>
								</tbody>
							</table>

							<ul class="pagination justify-content-center" style="bottom: 0;">
								<li class="page-item"><a class="page-link">야</a></li>
								<li class="page-item"><a class="page-link">호</a></li>
							</ul>

						</div>
						<div align="right" style="margin-right: 10px;">
							<button class="btn" id="regBtn">등록</button>
							<button class="btn" id="jobBack">이전 페이지</button>
						</div>
					</div>
				</div>
				<!-- End Content -->
			</div>
		</div>
	</div>
	<%@ include file="../a01_main/plugin.jsp"%>
	<%@ include file="../a01_main/bootstrapBottom.jsp"%>
</body>

</html>