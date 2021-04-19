<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../a01_main/bootstrapTop.jsp"%>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<style>
	.project-item:hover {
		background: #1E1E28;
		cursor: pointer;
	}
	</style>
	<script>
	</script>
</head>
<body class="sidebar-mini ">
	<div class="wrapper">
	
		<%@ include file="../a01_main/sidebar.jsp"%>

		<div class="main-panel">

			<%@ include file="../a01_main/header.jsp"%>

			<!-- Start Content -->
			<div class="content">
				
				<div class="row mb-3">
					<div class="col-12 col-md-3 pr-0">
                    <div class="input-group m-0" style="top: 5px;">
                      <div class="input-group-prepend">
                        <div class="input-group-text">
                          <i class="tim-icons icon-zoom-split"></i>
                        </div>
                      </div>
                      <input type="text" name="schWord" value="${schObject.schWord}"
                      	class="form-control" placeholder="Search.."/>
                    </div>
					</div>
					<div class="col-12 col-md-2 text-left p-0">
						<button class="btn" id="schBtn">검 색</button>
					</div>
					<c:if test="${sesMem.pos_no == 3}">
					<div class="col-12 col-md-2 ml-auto text-right">
						<button class="btn btn-primary"
							onclick="location.href='${path}/project.do?method=regForm'">
							프로젝트 등록
						</button>
					</div>
					</c:if>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-body">
								<form id="proForm" method="post">
								<input type="hidden" name="p_no" value=""/>
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
								</form>
								
								<!-- 페이징 -->
								<ul class="pagination justify-content-center" id="viewShow">
									<!-- 이전 버튼 -->
									<li class="page-item" id="preBtn">
										<button class="page-link" aria-label="Previous">
											<span aria-hidden="true">
												<i class="tim-icons icon-double-left" aria-hidden="true"></i>
											</span>
										</button>
									</li>
									
									<!-- 페이징 버튼 -->
									<li class='page-item' v-for="i in (endPage-startPage)+1">
										<button class='page-link pageBtn'>
											{{(i+startPage)-1}}
										</button>
									</li>
									
									<!-- 다음 버튼 -->									
									<li class="page-item">
										<button class="page-link" aria-label="Next">
											<span aria-hidden="true">
												<i class="tim-icons icon-double-right" aria-hidden="true"></i>
											</span>
										</button>
									</li>
									
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
	<%@ include file="../a01_main/plugin.jsp"%>
	<%@ include file="../a01_main/bootstrapBottom.jsp"%>
	
	<script>
	 jQuery(function($){
		var page = 1;
		var sch = "";
		getProList(page, sch);
		$('.page-item').eq(page).addClass("active");
		
		// 페이지 버튼 클릭
		$(document).on("click", ".pageBtn",function(){
			$('.page-item').removeClass("active"); // 클래스 삭제
			$(this).parent().addClass("active"); // 클래스 생성
			
			page = $(this).text(); // 클릭된 번호 얻기
			sch = $('[name=schWord]').val(); // 검색어 얻기
			
			// 리스트 출력
			getProList(page, sch);
		});
		
		// 검색
		$('#schBtn').on('click', function(){
			$('.page-item').removeClass("active"); // 클래스 삭제
			$('.page-item').eq(1).addClass("active"); // 클래스 생성
			sch = $('[name=schWord]').val(); // 검색어 얻기
			page = 1;
			
			// 리스트 출력
			getProList(page, sch);
		})
		
		
		// 함수 : 프로젝트 리스트
		function getProList(page, sch){
			$.ajax({
				type:"post",
				url:"${path}/project.do?method=data&u_no="+"${sesMem.u_no}"+"&currPage="+page+"&schWord="+sch,
				/* data:$('form').serialize(), */
				dataType:"json",
				success:function(data){
					console.log(data);
					var projectList = data.projectList;
					var schProject = data.schProject;
					console.log(schProject);
					// 프로젝트 리스트
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
					
					var vm = new Vue({
						el : "#viewShow",
						data : schProject
					});
				},
				error:function(err){
					console.log(err);
				}
			});		
		}
		// 프로젝트 상세 클릭
		$(document).on("click",".project-item",function(){
			console.log("asdf");
			var p_no = $(this).children().eq(1).text();
			$('[name=p_no]').val(p_no);
			$('#proForm').submit();
		});	
	});
	 
	</script>
</body>
</html>