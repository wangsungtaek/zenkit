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

				<div class="row">
					<div class="col-5">
						<div class="card card-tasks">
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
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>

					<div class="col-2 text-center d-flex align-items-center">
						<div class="">
							<button class="btn btn-info">
								<i class="tim-icons icon-double-left"></i> 추가
							</button>
							<button class="btn btn-warning">
								<i class="tim-icons icon-simple-remove"></i> 삭제
							</button>
						</div>
					</div>

					<div class="col-5">
						<div class="card card-tasks">
							<div class="card-header">
								<h4 class="title">전체인원</h4>
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
											<tr><td>홍길동</td><td>대리</td><td>개발자</td></tr>
											<tr><td>홍길동</td><td>대리</td><td>개발자</td></tr>
											<tr><td>홍길동</td><td>대리</td><td>개발자</td></tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
					
				
			</div>
			<!-- End Content -->

		</div>
	</div>
	<%@ include file="../a01_main/plugin.jsp"%>
	<%@ include file="../a01_main/bootstrapBottom.jsp"%>

</body>

</html>