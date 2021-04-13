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
	html, body {
		/* height: 100%;
		padding: 0px;
		margin: 0px;
		overflow: hidden; */
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

				<%@ include file="project_header.jsp"%>

				<!-- Start project-info -->
				<div class="row">

					<div class="col-lg-6 col-md-6">
						<div class="card card-tasks">
							<div class="card-header mb-4">
								<h4 class="title">프로젝트 정보</h4>
							</div>
							<div class="card-body">
							
							<!-- 프로젝트 정보 -->
								<div class="row mb-4 text-right">
								<label class="col-sm-2 col-form-label title">
									진행률 :
								</label>
								<div class="col-md-10">
									<div class="progress-container progress-primary pr-5 pt-3">
										<div class="progress">
											<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">
												<span class="progress-value text-primary" style="top: 13px; right:12px;">
													20%
												</span>
			                        </div>
			                      </div>
			                    </div>
									</div>
								</div>
							
								<!-- 프로젝트 정보 -->
								<div class="row mb-4 text-right">
									<label class="col-sm-2 col-form-label title">
										프로젝트 명 :
									</label>
									<div class="col-sm-10">
										<div class="form-group pr-5">
											<input type="text" class="form-control" disabled 
		                        		value="${proInfo.p_name}" style="color: gray;">
										</div>
									</div>
								</div>
								
								<!-- 담당 부서 정보 -->
								<div class="row mb-4 text-right">
									<label class="col-sm-2 col-form-label title">
										담당 부서 :
									</label>
									<div class="col-sm-10">
										<div class="form-group pr-5">
											<input type="text" class="form-control" disabled 
		                        		value="${sesMem.d_name}" style="color: gray;">
										</div>
									</div>
								</div>
								
								<!-- PM 정보 -->
								<div class="row mb-4 text-right">
									<label class="col-sm-2 col-form-label title">
										PM :
									</label>
									<div class="col-sm-10">
										<div class="form-group pr-5">
											<input type="text" class="form-control" disabled 
		                        		value="${proInfo.p_pm}" style="color: gray;">
										</div>
									</div>
								</div>
								
								<!-- 시작일, 종료일-->
								<div class="row mb-4">
									<label class="col-sm-2 col-form-label text-right title">
										시작일 :
									</label>
									<div class="col-sm-4">
										<div class="form-group pr-5">
											<h3 class="form-control text-center title	" style="color: white; background: #1D8CF7;">
												${proInfo.p_startD_s}
											</h3>
										</div>
									</div>
									<label class="col-sm-2 col-form-label text-right title">
										종료일 :
									</label>
									<div class="col-sm-4">
										<div class="form-group pr-5">
											<h3 class="form-control text-center title	" style="color: white; background: #FE5D93;">
												${proInfo.p_endD_s}
											</h3>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>

					<div class="col-lg-6 col-sm-6 text-center">
						<div class="card card-tasks text-left">
							<div class="card-header mb-4">
								<h4 class="title">참여인원</h4>
							</div>
							<div class="card-body">
								<div class="table-full-width table-responsive"
									style="overflow: auto; max-height: 350px;">
									<table class="table text-center mr-auto ml-auto" style="width: 90%">
										<thead>
											<tr>
												<th><h4 class="p-0 m-0 text-info">이 름</h4></th>
												<th><h4 class="p-0 m-0 text-info">직 책</h4></th>
												<th><h4 class="p-0 m-0 text-info">직 급</h4></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="resource" items="${resourceList}">
												<tr>
													<td>${resource.u_name}</td>
													<td>${resource.pos_name}</td>
													<td>${resource.r_name}</td>
												</tr>												
												<tr>
													<td>${resource.u_name}</td>
													<td>${resource.pos_name}</td>
													<td>${resource.r_name}</td>
												</tr>												
												<tr>
													<td>${resource.u_name}</td>
													<td>${resource.pos_name}</td>
													<td>${resource.r_name}</td>
												</tr>												
												<tr>
													<td>${resource.u_name}</td>
													<td>${resource.pos_name}</td>
													<td>${resource.r_name}</td>
												</tr>												
											</c:forEach>										
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End of row -->

				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header m-10">
								<h4 class="title">주요 작업 현황</h4>
							</div>
							<div class="card-body">
								<div class="row">
								<c:forEach var="job" items="${jobList}">
									<div class="col-sm-2">
										<div class="form-group">
											<c:set var="input" value="${job.j_completeR * 100}"/>
											<c:set var="color" value="${(input<30)?'#FE5D93':(input<60)?'#FF8779':'#1D8CF7'}"/>
											<h3 class="form-control text-center title	mb-1"
												style="color: white; background: ${color}; height: 40px; overflow: auto;">
												${job.j_name}
											</h3>
										</div>
										<h4 class="text-center title"style="color: white;">
											${job.j_completeR * 100} %
										</h4>
									</div>
								</c:forEach>
								</div>
							</div>	
							<!-- End of card-body -->

						</div>
					</div>
				</div>
				<!-- End of row -->

				<div class="row">
					<div class="col-md-6">
						<div class="card card-chart card-chart-pie">
							<div class="card-header">
								<h4 class="title">프로젝트 태스크 진행상태</h4>
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-6">
										<div class="chart-area">
											<canvas id="PieChartGradient"></canvas>
										</div>
									</div>
									<div class="col-6">
										<h4 class="card-title">
											<i class="tim-icons  icon-tag text-warning "></i> 시작전 - 5 건
										</h4>
										<h4 class="card-title">
											<i class="tim-icons  icon-tag text-warning "></i> 진행중 - 5 건
										</h4>
										<h4 class="card-title">
											<i class="tim-icons  icon-tag text-warning "></i> 완료 - 5 건
										</h4>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card card-chart card-chart-pie">
							<div class="card-header">
								<h4 class="title">프로젝트 태스크 진행상태</h4>
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-6">
										<div class="chart-area">
											<canvas id="PieChartGradient2"></canvas>
										</div>
									</div>
									<div class="col-6">
										<h4 class="card-title">
											<i class="tim-icons  icon-tag text-warning "></i> 시작전 - 5 건
										</h4>
										<h4 class="card-title">
											<i class="tim-icons  icon-tag text-warning "></i> 진행중 - 5 건
										</h4>
										<h4 class="card-title">
											<i class="tim-icons  icon-tag text-warning "></i> 완료 - 5 건
										</h4>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- End of row -->

				<div class="row">
				
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="title">담당영역</h4>
							</div>
							<div class="card-body p-4">
								<div id="gantt_here" style="width:100%; height:500px;"></div>
							</div>
						</div>
					</div>
					
				</div>
				<!-- End of row -->
				
			</div>
			<!-- End Content -->
		</div>
	</div>
	<%@ include file="../a01_main/plugin.jsp"%>
	<%@ include file="../a01_main/bootstrapBottom.jsp"%>
	
	<script>
	$(document).ready(function() {
	      // Javascript method's body can be found in assets/assets-for-demo/js/demo.js
	    	demo.initChartPageCharts();
	    });
		
		gantt.init("gantt_here");
		
		gantt.parse({
			data: [
				{ id: 1, text: "요구사항 정의", start_date: "01-04-2021", duration: 18, progress: 0.4, open: true },
				{ id: 2, text: "화면설계", start_date: "02-04-2021", duration: 8, progress: 0.6, parent: 1 },
				{ id: 3, text: "화면구현", start_date: "11-04-2021", duration: 8, progress: 0.6, parent: 1 }
			],
			links: [
				{id: 1, source: 1, target: 2, type: "1"},
				{id: 2, source: 2, target: 3, type: "0"}
			]
		});
  </script>
</body>

</html>