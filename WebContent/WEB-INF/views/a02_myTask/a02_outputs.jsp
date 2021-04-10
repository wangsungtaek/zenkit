<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>zenkit</title>
<%@ include file="../a01_main/bootstrapTop.jsp"%> 
</head>
<body class="sidebar-mini ">
	<div class="wrapper">

		<%@ include file="../a01_main/sidebar.jsp"%>

		<div class="main-panel">
			
			<%@ include file="../a01_main/header.jsp"%>

			<!-- Start Content -->
			<div class="content">
			 	<%@ include file="my_task_header.jsp"%>
			 	
				<div class="d-flex justify-content-end mb-2">
				  <div class="col-md-3 " style="float:right;">
                        <select class="selectpicker" data-size="5" data-style="btn btn-primary" title="Single Select">
                          <option disabled selected>진행상태</option>
                          <option value="2">시작 전</option>
                          <option value="3">완료</option>
                          <option value="4">진행</option>
                        </select>
                  </div>
                  <div class="col-md-3 " style="float:right;">
                        <select class="selectpicker" data-size="5" data-style="btn btn-primary" title="Single Select">
                          <option disabled selected>프로젝트</option>
                          <option value="2">2021</option>
                          <option value="3">2020</option>
                          <option value="4">2019</option>
                        </select>
                  </div>
				
				
					<div class="col-sm-3">
                    <div class="input-group m-0" style="top: 5px;">
                      <div class="input-group-prepend">
                        <div class="input-group-text">
                          <i class="tim-icons icon-zoom-split"></i>
                        </div>
                      </div>
                      <input type="text" name="firstname"
                      	class="form-control" placeholder="Search.." />
                    </div>
                  </div>
					<button class="btn btn-primary" data-toggle="modal" data-target="#noticeModal">
						산출물 등록
					</button>
				</div>
			 	
			 	
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-body">
								<table id="simple-table" class="table text-center">
									<colgroup>
										<col width="40%">
										<col width="30%">
										<col width="30%">
									</colgroup>
									<thead>
										<tr>
											<th class="text-left">&nbsp;&nbsp;&nbsp;&nbsp;산출물 정보</th>
											<th class="text-left">&nbsp;&nbsp;&nbsp;&nbsp;작업정보</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<tr class="text-left">
											<td class="pl-4">saplem_imges_01.png</td>
											<td class="pl-4">usecase 작성</td>
											<td class="text-right">
												<button class="btn btn-icon detail">
													<i class="tim-icons icon-zoom-split"></i>
												</button>
												<button class="btn btn-icon download ml-3">
													<i class="fas fa-download"></i>
												</button>
											</td>
										</tr>
										<tr class="text-left">
											<td class="pl-4">saplem_imges_01.png</td>
											<td class="pl-4">usecase 작성</td>
											<td class="text-right">
												<button class="btn btn-icon detail">
													<i class="tim-icons icon-zoom-split"></i>
												</button>
												<button class="btn btn-icon download ml-3">
													<i class="fas fa-download"></i>
												</button>
											</td>
										</tr>
										<tr class="text-left">
											<td class="pl-4">saplem_imges_01.png</td>
											<td class="pl-4">usecase 작성</td>
											<td class="text-right">
												<button class="btn btn-icon detail">
													<i class="tim-icons icon-zoom-split"></i>
												</button>
												<button class="btn btn-icon download ml-3">
													<i class="fas fa-download"></i>
												</button>
											</td>
										</tr>
										<tr class="text-left">
											<td class="pl-4">saplem_imges_01.png</td>
											<td class="pl-4">usecase 작성</td>
											<td class="text-right">
												<button class="btn btn-icon detail">
													<i class="tim-icons icon-zoom-split"></i>
												</button>
												<button class="btn btn-icon download ml-3">
													<i class="fas fa-download"></i>
												</button>
											</td>
										</tr>
										<tr class="text-left">
											<td class="pl-4">saplem_imges_01.png</td>
											<td class="pl-4">usecase 작성</td>
											<td class="text-right">
												<button class="btn btn-icon detail">
													<i class="tim-icons icon-zoom-split"></i>
												</button>
												<button class="btn btn-icon download ml-3">
													<i class="fas fa-download"></i>
												</button>
											</td>
										</tr>
										<tr class="text-left">
											<td class="pl-4">saplem_imges_01.png</td>
											<td class="pl-4">usecase 작성</td>
											<td class="text-right">
												<button class="btn btn-icon detail">
													<i class="tim-icons icon-zoom-split"></i>
												</button>
												<button class="btn btn-icon download ml-3">
													<i class="fas fa-download"></i>
												</button>
											</td>
										</tr>
										<tr class="text-left">
											<td class="pl-4">saplem_imges_01.png</td>
											<td class="pl-4">usecase 작성</td>
											<td class="text-right">
												<button class="btn btn-icon detail">
													<i class="tim-icons icon-zoom-split"></i>
												</button>
												<button class="btn btn-icon download ml-3">
													<i class="fas fa-download"></i>
												</button>
											</td>
										</tr>
										<tr class="text-left">
											<td class="pl-4">saplem_imges_01.png</td>
											<td class="pl-4">usecase 작성</td>
											<td class="text-right">
												<button class="btn btn-icon detail">
													<i class="tim-icons icon-zoom-split"></i>
												</button>
												<button class="btn btn-icon download ml-3">
													<i class="fas fa-download"></i>
												</button>
											</td>
										</tr>
										<tr class="text-left">
											<td class="pl-4">saplem_imges_01.png</td>
											<td class="pl-4">usecase 작성</td>
											<td class="text-right">
												<button class="btn btn-icon detail">
													<i class="tim-icons icon-zoom-split"></i>
												</button>
												<button class="btn btn-icon download ml-3">
													<i class="fas fa-download"></i>
												</button>
											</td>
										</tr>

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
							<!-- end card-body-->
						</div>
						<!--  end card  -->
					</div>
					<!-- end col-md-12 -->
				</div>
				<!-- end row -->

				<div class="row">
					<!-- notice modal -->
					<div class="modal fade" id="noticeModal" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-notice">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">
										<i class="tim-icons icon-simple-remove"></i>
									</button>
									<h4 class="modal-title" id="myModalLabel">산출물 등록</h4>
								</div>
								<div class="modal-body">
									<form method="get" action="/" class="form-horizontal">
										<input type="file" name="..."
											style="border: 1px solid #1e1e2f; border-radius: 5px; width: 100%;"
											class="fileinput mb-4" />	
										<div class="row">
											<div class="col-12 text-right">
												<button type="button" class="btn btn-primary"
													data-dismiss="modal">
													등록
												</button>
												<button type="button" class="btn"
													data-dismiss="modal">
													취소
												</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end notice modal -->

			</div>
			<!-- End Content -->

		</div>
	</div>
	<div class="fixed-plugin">
		<div class="dropdown show-dropdown">
			<a href="#" data-toggle="dropdown"> <i class="fa fa-cog fa-2x">
			</i>
			</a>
			<ul class="dropdown-menu">
				<li class="header-title">Sidebar Background</li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger background-color">
						<div class="badge-colors text-center">
							<span class="badge filter badge-primary active"
								data-color="primary"></span> <span
								class="badge filter badge-info" data-color="blue"></span> <span
								class="badge filter badge-success" data-color="green"></span> <span
								class="badge filter badge-warning" data-color="orange"></span> <span
								class="badge filter badge-danger" data-color="red"></span>
						</div>
						<div class="clearfix"></div>
				</a></li>
				<li class="header-title">Sidebar Mini</li>
				<li class="adjustments-line">
					<div class="togglebutton switch-sidebar-mini">
						<span class="label-switch">OFF</span> <input type="checkbox"
							name="checkbox" checked class="bootstrap-switch" data-on-label=""
							data-off-label="" /> <span class="label-switch label-right">ON</span>
					</div>
					<div class="togglebutton switch-change-color mt-3">
						<span class="label-switch">LIGHT MODE</span> <input
							type="checkbox" name="checkbox" checked class="bootstrap-switch"
							data-on-label="" data-off-label="" /> <span
							class="label-switch label-right">DARK MODE</span>
					</div>
				</li>
				<li class="button-container mt-4"><a
					href="../docs/1.0/getting-started/introduction.html"
					class="btn btn-default btn-block btn-round"> Documentation </a></li>
				<li class="header-title">Thank you for 95 shares!</li>
				<li class="button-container text-center">
					<button id="twitter" class="btn btn-round btn-info">
						<i class="fab fa-twitter"></i> &middot; 45
					</button>
					<button id="facebook" class="btn btn-round btn-info">
						<i class="fab fa-facebook-f"></i> &middot; 50
					</button> <br> <br> <a class="github-button"
					href="https://github.com/creativetimofficial/ct-black-dashboard-pro"
					data-icon="octicon-star" data-size="large" data-show-count="true"
					aria-label="Star ntkme/github-buttons on GitHub">Star</a>
				</li>
			</ul>
		</div>

	</div>
	<%@ include file="../a01_main/plugin.jsp"%>
    <%@ include file="../a01_main/bootstrapBottom.jsp"%>
</body>

</html>