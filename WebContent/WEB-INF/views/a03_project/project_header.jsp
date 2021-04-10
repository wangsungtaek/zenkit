<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="fileName" value="${pageContext.request.servletPath}" />
<div class="card">
	<div class="row">
		<div class="col-md-12">
			<div class="card-body">
				<ul class="nav ">
				<li class="nav-item mr-1">
	          	<a class="btn ${(fileName=='/WEB-INF/views/a03_project/a01_detailInfo.jsp')?'btn-primary':''}"
	          	href="${path}/project.do?method=detail_1">
	        		<i class="tim-icons icon-book-bookmark"></i> 요약정보
	      		</a>
	        </li>
					<li class="nav-item mr-1">
	          <a class="btn ${(fileName=='/WEB-INF/views/a03_project/a02_defaultInfo.jsp')?'btn-primary':''}"
	          	href="${path}/proInfo.do?">
	        		<i class="tim-icons icon-paper"></i> 기본정보
	      		</a>
	        </li>
			  <li class="nav-item mr-1">
	          <a class="btn ${(fileName=='/WEB-INF/views/a03_project/a03_resource.jsp')?'btn-primary':''}"
	          	href="${path}/project.do?method=detail_3">
	        		<i class="tim-icons icon-single-02"></i> 리소스
	      		</a>
	        </li>
	        
			<li class="nav-item mr-1">
	          <a class="btn ${(fileName=='/WEB-INF/views/a03_project/a04_Job.jsp')?'btn-primary':''}"
	          	href="${path}/job.do?method=job">
	        		<i class="tim-icons icon-bullet-list-67"></i> 작업관리
	      		</a>
	        </li>
					<li class="nav-item mr-1">
	          <a class="btn ${(fileName=='/WEB-INF/views/a03_project/a05_assign.jsp')?'btn-primary':''}"
	          	href="${path}/assign.do">
	        		<i class="tim-icons icon-badge"></i> 배정현황
	      		</a>
	        </li>
					<li class="nav-item mr-1">
	          <a class="btn ${(fileName=='/WEB-INF/views/a03_project/a06_riskList.jsp')?'btn-primary':''}"
	          	href="${path}/riskList.do">
	        		<i class="tim-icons icon-alert-circle-exc"></i> 리스크
	      		</a>
	      </ul>
	    </div>
	  </div>
	</div>
</div>
	