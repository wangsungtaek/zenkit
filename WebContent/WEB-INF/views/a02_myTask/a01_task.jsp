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

<style>
#projectRow:hover {
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
						승인요청
					</button>
				</div>

				<div class="row">
					<div class="col-md-12">
		            <div class="card">

		              <div class="card-body">
		                  <table class="table table-striped">
		                  	<colgroup>
	        					<col width="50px">
	        					<col width="20%">
		        				<col width="20%">
		        				<col width="90px">
		        				<col width="80px">
		        				<col width="100px">
		        				<col width="100px">
		        				<col width="100px">
        					</colgroup>
		                    <thead class="text-primary">
		                      <tr>
		                        <th class="text-center">
		                          <div class="form-check">
		                            <label class="form-check-label">
		                              <input id="checkAll" class="form-check-input" type="checkbox">
		                              <span class="form-check-sign"></span>
		                            </label>
		                          </div>
		                        </th>
		                        <th class="text-left">작업</th>
		                        <th class="text-left">프로젝트</th>
		                        <th class="text-center">승인자</th>
		                        <th class="text-center">상태</th>
		                        <th class="text-center">시작일</th>
		                        <th class="text-center">완료일</th>
		                        <th class="text-center">완료율</th>
		                      </tr>
		                    </thead>
		                    <tbody>
		                    <c:if test="${empty taskList}">
		                    </c:if>
		                    <c:if test="${!empty taskList}">
		                    <c:forEach var="task" items="${taskList}">
		                    	<tr>
		                    		<td class="text-center">
	        							<div class="form-check">
	        							<label class="form-check-label">
	        							<input name="checkano" class="form-check-input" type="checkbox" value="${task.j_no}">
	        							<span class="form-check-sign">
											<span class="check"></span>
										</span>
										</label>
										</div>
        							</td>
		                    		<td>${task.j_name}</td>
		                    		<td>${task.p_name}</td>
		                    		<td class="text-center">${task.pm_name}</td>
		                    		<td class="text-center task_state">완료</td>
		                    		<td class="text-center"><fmt:formatDate value="${task.j_startD}"/></td>
		                    		<td class="text-center"><fmt:formatDate value="${task.j_endD}"/></td>
		                    		<td class="text-center">
				                     	<input type="number" name="completeRate" class="form-control" 
				                     		min="0" max="100" step="10" value="${task.j_completeR*100}"/>
		                    		</td>
		                    	</tr>
		                    </c:forEach>
		                    </c:if>               
		                    </tbody>
		                  </table>
		              </div> <%--card-body --%>
		            </div>
		          </div>
				</div>
				<!-- end row -->
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
									<h4 class="modal-title" id="myModalLabel">승인요청</h4>
								</div>
								<div class="modal-body" id="auth-form">
							        <div class="form-group">
								        <label id="authContentLabel" for="auth_content" style="color:#222a42;">승인요청 내용</label>
								        <textarea class="form-control" id="auth_content" rows="7" style="color:#222a42;border:1px solid #2b3553;max-height:150px;"></textarea>
									</div>
							    </div>	
							    <div class="modal-footer">
							       <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
							       <button type="button" class="btn btn-primary" id="authBtn">저장</button>
							    </div>
							<%-- 	<div class="modal-body">
									<form method="get" action="/" class="form-horizontal">
										<p>승인요청 내용</p>
										<textarea cols="67" rows="5"></textarea>
										<div class="row">
											<div class="col-12 text-right">
												<button type="button" class="btn btn-primary" data-dismiss="modal">
													승인요청
												</button>
											</div>
										</div>
									</form>
								</div>--%>
							</div>
						</div>
					</div>
				<!-- end notice modal -->
      	</div>
			<!-- End Content -->	
		</div>
	</div>
	<%@ include file="../a01_main/plugin.jsp"%>
	 <%@ include file="../a01_main/bootstrapBottom.jsp"%>
</body>

</html>