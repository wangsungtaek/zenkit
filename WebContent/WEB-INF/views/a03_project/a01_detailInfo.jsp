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
							<div class="card-header">
								<h4 class="title">프로젝트 정보</h4>
							</div>
							<div class="card-body">
								<div class="row mb-2">
									<div class="col-md-12">
										<h4>프로젝트명</h4>
									</div>
								</div>
								<div class="row mb-4">
									<div class="col-md-3">
										<h5>시작일</h5>
										<div class="btn btn-info btn-sm">2021-03-23</div>
									</div>
									<div class="col-md-3">
										<h5>종료일</h5>
										<div class="btn btn-danger btn-sm">2021-04-21</div>
									</div>
									<div class="col-md-6">
										<h5 class="mb-2">Progress</h5>
										<div class="progress-container">
											<span class="progress-badge">&nbsp</span>
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
													style="width: 25%;">
													<span class="progress-value">25%</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row mb-2">
									<div class="col-md-12">
										<h5>PM</h5>
										<p>홍길동과장</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-6 col-sm-6 text-center">
						<div class="card card-tasks text-left">
							<div class="card-header">
								<h4 class="title">참여인원</h4>
							</div>
							<div class="card-body">
								<div class="table-full-width table-responsive"
									style="overflow: auto; max-height: 380px;">
									<table class="table">
										<thead>
											<tr>
												<th>이름</th>
												<th>직급</th>
												<th>직책</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
											<tr>
												<td>홍길동</td>
												<td>대리</td>
												<td>개발자</td>
											</tr>
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
							<div class="card-header">
								<h4 class="title">주요 작업 현황</h4>
							</div>

							<div class="card-body row p-4 m-0">
								<div class="col-md-2 bg-warning p-3">
									<div class="progress-container">
										<h4>요구사항 정의</h4>
										<div class="progress">
											<div class="progress-bar" role="progressbar"
												aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
												style="width: 25%; background: white;">
												<span class="progress-value">25%</span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-2 bg-info p-3">
									<div class="progress-container">
										<h4>유스케이스 설계</h4>
										<div class="progress">
											<div class="progress-bar" role="progressbar"
												aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
												style="width: 25%; background: white;">
												<span class="progress-value">25%</span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-2 bg-danger p-3">
									<div class="progress-container">
										<h4>데이터베이스 설계</h4>
										<div class="progress">
											<div class="progress-bar" role="progressbar"
												aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
												style="width: 25%; background: white;">
												<span class="progress-value">25%</span>
											</div>
										</div>
									</div>
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