<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 

<!DOCTYPE html>
<html lang="en">
<script>
	$(document).ready(function(){
		var session = "${sesMem.u_no}";
		
		
	})
</script>
<head>
  <meta charset="utf-8" />
  <title> zenkit </title> 
   <%@ include file="../a01_main/bootstrapTop.jsp"%> 
</head>

<body class="sidebar-mini ">
	
  <div class="wrapper">   
   <%@ include file="../a01_main/sidebar.jsp"%>
    <div class="main-panel">
      <%@ include file="../a01_main/header.jsp"%>
    <c:if test="${sesMem.pos_no >2}">
      <div class="content">
        <div class="row">   
          <div class="col-lg-3 col-md-6">
            <div class="card card-stats">
              <div class="card-body" OnClick="location.href ='${path}/mytask.do?method=task'">
                <div class="row">
                  <div class="col-5">
                    <div class="info-icon text-center icon-warning">
                      <i class="tim-icons icon-single-02"></i>
                    </div>
                  </div>
                  <div class="col-7">
                    <div class="numbers">
                      <p class="card-category" style="font-weight:550;">작업</p>
                     <c:forEach var="jc" items="jobCnt" varStatus="status">
                      	<h3 class="card-title">${jobCnt}</h3>
                    </c:forEach>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer">
                <hr>
                <div class="stats">
                   <a href="${path}/mytask.do?method=task" style="color:#a9a9b1; font-weight:500;">
	                 View More <i class="tim-icons icon-minimal-right"></i> 
	               </a>
                </div>
              </div>
            </div>
          </div>
          <!-- 
          <div class="col-lg-3 col-md-6">
            <div class="card card-stats">
              <div class="card-body" OnClick="location.href =''">
                <div class="row">
                  <div class="col-5">
                    <div class="info-icon text-center icon-primary">
                      <i class="tim-icons icon-app"></i>
                    </div>
                  </div>
                  <div class="col-7">
                    <div class="numbers">
                      <p class="card-category" style="font-weight:550;">리스크</p>
                      <h3 class="card-title">2</h3>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer">
                <hr>
                <div class="stats">
                  <a href="##" style="color:#a9a9b1; font-weight:500;">
	                 View More <i class="tim-icons icon-minimal-right"></i> 
	              </a> 
                </div>
              </div>
            </div>
          </div>
            -->
          <div class="col-lg-3 col-md-6">
            <div class="card card-stats">
              <div class="card-body" OnClick="location.href =''">
                <div class="row">
                  <div class="col-5">
                    <div class="info-icon text-center icon-success">
                      <i class="tim-icons icon-notes"></i>
                    </div>
                  </div>
                  <div class="col-7">
                    <div class="numbers">
                      <p class="card-category" style="font-weight:550;">프로젝트</p>
                      <h3 class="card-title">${projectCnt}</h3>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer">
                <hr>
                <div class="stats">
	                <a href="project.do?method=detail_1" style="color:#a9a9b1; font-weight:500;">
	                 View More <i class="tim-icons icon-minimal-right"></i> 
	                 </a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="card card-stats">
              <div class="card-body" OnClick="location.href ='${path}/mytask.do?method=output'">
                <div class="row">
                  <div class="col-5">
                    <div class="info-icon text-center icon-danger">
                      <i class="tim-icons icon-attach-87"></i>
                    </div>
                  </div>
                  <div class="col-7">
                    <div class="numbers">
                      <p class="card-category" style="font-weight:550;">산출물</p>
                      <h3 class="card-title">${outputCnt}</h3>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer">
                <hr>
                <div class="stats">
	                <a href="${path}/mytask.do?method=output" style="color:#a9a9b1; font-weight:500;">
	                  View More <i class="tim-icons icon-minimal-right"></i>
	                </a> 
                </div>
              </div>
            </div>
          </div>               
        </div>
  
        <h4 class="title pl-3">참여 프로젝트</h4>
        <div class="row">
	        <c:forEach var="proj" items="${projectDate}">
	          <div class="col-sm-6 col-lg-3">
	            <div class="card ">
	              <div class="card-body" style="padding-top:2em;">
	                 <h4 style="font-weight:450;">${proj.p_name}</h4>   
	                 <div class="progress-container progress-primary">
	                   <span class="progress-badge">D-${proj.dDay}</span>
	                   <div class="progress">
	                     <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: ${proj.percent}%;">
	                       <span class="progress-value">${proj.percent}%</span>
	                     </div>
	                   </div>
	                 </div>     
	              </div>
	            </div>
	          </div>
	        </c:forEach>  
        </div>

				<div class="row">					
					<div class="col-md-6">
						<div class="card card-chart card-chart-pie">
							<div class="card-header">
								<h4 class="title">리스크 현황</h4>
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
											<i class="tim-icons  icon-tag text-warning "></i> 고객변심 - 5 건
										</h4>
										<h4 class="card-title">
											<i class="tim-icons  icon-tag text-warning "></i> 일정지연 - 3 건
										</h4>
										<h4 class="card-title">
											<i class="tim-icons  icon-tag text-warning "></i> 기타 - 2 건
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

				</div>
				<!-- End of row -->        
        
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="title">참여프로젝트 현황</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table">
                    <thead class="text-primary">
                      <tr>
                        <th class="text-center">
                          프로젝트명
                        </th>
                        <th class="text-center">
                          프로젝트코드
                        </th>
                        <th class="text-center">
                          PM
                        </th>
                        <th class="text-center">
                          부서
                        </th>
                        <th class="text-center">
                          진행상태
                        </th>
                        <th class="text-center">
                          시작일
                        </th>
                        <th class="text-center">
                          종료일
                        </th>
                        <th class="text-center">
                          진행률(%)
                        </th>
                        <th class="text-center">
                          산출물
                        </th>
                        <th class="text-center">
                          리스크
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="project" items="${projectList}">
                      <tr>
                        <td class="text-center">
                          ${project.p_name}
                        </td>
                        <td class="text-center">
                         ${project.p_no}
                        </td>
                        <td class="text-center">
                          ${project.p_pm}
                        </td>
                        <td class="text-center">
                          ${project.d_name}
                        </td>
                        <td class="text-center">
                          진행
                        </td>
                        <td class="text-center">
                        <!-- <fmt:formatDate value="${project.p_endD}"/> -->
                          <fmt:formatDate value="${project.p_startD}"/>
                        </td>
                        <td class="text-center">
                         <fmt:formatDate value="${project.p_endD}"/>
                        </td>
                        <td class="text-center">
                          ${project.percent}%
                        </td>
                        <td class="text-center">
                          ${project.poCnt}
                        </td>
                        <td class="text-center">
                          2
                        </td>
                      </tr>
                     </c:forEach>                     
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
	</c:if>
	<c:if test="${sesMem.pos_no < 3}">
	<div class="content">           
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="title"  style="margin-bottom:-30px;">주요프로젝트 현황</h4>
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
                          <option disabled selected>연도</option>
                          <option value="2">2021</option>
                          <option value="3">2020</option>
                          <option value="4">2019</option>
                        </select>
                 </div>
                 <div class="col-md-3 " style="float:right;">
                        <select class="selectpicker" data-size="7" data-style="btn btn-primary" title="Single Select">
                          <option disabled selected>부서</option>
                          <option value="2">IT팀</option>
                          <option value="3">경영지원팀</option>
                          <option value="4">인사팀</option>
                          <option value="5">전략기획</option>
                        </select>
               	</div>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table">
                    <thead class="text-primary">
                      <tr>
                        <th class="text-center">
                          프로젝트명
                        </th>
                        <th class="text-center">
                          프로젝트코드
                        </th>
                        <th class="text-center">
                          PM
                        </th>
                        <th class="text-center">
                          부서
                        </th>
                        <th class="text-center">
                          진행상태
                        </th>
                        <th class="text-center">
                          시작일
                        </th>
                        <th class="text-center">
                          종료일
                        </th>
                        <th class="text-center">
                          진행률(%)
                        </th>
                        <th class="text-center">
                          산출물
                        </th>
                        <th class="text-center">
                          이슈
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="text-center">
                          ECOBEAN
                        </td>
                        <td class="text-center">
                         SE-2020-03
                        </td>
                        <td class="text-center">
                          한지혜
                        </td>
                        <td class="text-center">
                          IT팀
                        </td>
                        <td class="text-center">
                          완료
                        </td>
                        <td class="text-center">
                          2020-11-13
                        </td>
                        <td class="text-center">
                          2020-12-15
                        </td>
                        <td class="text-center">
                          35%
                        </td>
                        <td class="text-center">
                          10
                        </td>
                        <td class="text-center">
                          2
                        </td>
                      </tr>
                      <tr>
                        <td class="text-center">
                          GAMEFLIX
                        </td>
                        <td class="text-center">
                         SE-2021-01
                        </td>
                        <td class="text-center">
                          한지혜
                        </td>
                        <td class="text-center">
                          IT팀
                        </td>
                        <td class="text-center">
                          진행
                        </td>
                        <td class="text-center">
                          2020-11-24
                        </td>
                        <td class="text-center">
                          2021-01-30
                        </td>
                        <td class="text-center">
                          90%
                        </td>
                        <td class="text-center">
                          15
                        </td>
                        <td class="text-center">
                          6
                        </td>
                      </tr>
                      <tr>
                        <td class="text-center">
                          PLO
                        </td>
                        <td class="text-center">
                         SE-2021-03
                        </td>
                        <td class="text-center">
                          김나영
                        </td>
                        <td class="text-center">
                          마케팅팀
                        </td>
                        <td class="text-center">
                          완료
                        </td>
                        <td class="text-center">
                          2021-02-01
                        </td>
                        <td class="text-center">
                          2021-03-15
                        </td>
                        <td class="text-center">
                          95%
                        </td>
                        <td class="text-center">
                          30
                        </td>
                        <td class="text-center">
                          10
                        </td>
                      </tr>
                      <tr>
                        <td class="text-center">
                          ZENKIT
                        </td>
                        <td class="text-center">
                         SE-2021-04
                        </td>
                        <td class="text-center">
                          한지혜
                        </td>
                        <td class="text-center">
                          IT팀
                        </td>
                        <td class="text-center">
                          진행
                        </td>
                        <td class="text-center">
                          2021-03-22
                        </td>
                        <td class="text-center">
                          2021-04-30
                        </td>
                        <td class="text-center">
                          10%
                        </td>
                        <td class="text-center">
                          5
                        </td>
                        <td class="text-center">
                          0
                        </td>
                      </tr>
                      
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="title" style="margin-bottom:-30px;">프로젝트 수행지표</h4>
                  <div class="col-md-3 " style="float:right;">
                        <select class="selectpicker" data-size="7" data-style="btn btn-primary" title="Single Select">
                          <option disabled selected>연도</option>
                          <option value="2">2021</option>
                          <option value="3">2020</option>
                          <option value="3">2019</option>
                        </select>
                  </div>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table">
                    <thead class="text-primary">
                      <tr>
                      	<th class="text-left">
                          부서
                        </th>
                        <th class="text-center">
                          전체
                        </th>
                        <th class="text-center">
                          시작 전
                        </th>
                        <th class="text-center">
                          정상
                        </th>
                        <th class="text-center">
                          지연
                        </th>                        
                        <th class="text-center">
                          완료
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="text-left">
                          IT팀
                        </td>
                        <td class="text-center">
                          160
                        </td>
                        <td class="text-center">
                          21
                        </td>
                        <td class="text-center">
                          7
                        </td>
                        <td class="text-center">
                          13
                        </td>
                        <td class="text-center">
                          117
                        </td>
                      </tr>
                      <tr>
                        <td class="text-left">
                          &nbsp;&nbsp; - ECOBEAN
                        </td>
                        <td class="text-center">
                          30
                        </td>
                        <td class="text-center">
                          3
                        </td>
                        <td class="text-center">
                          2
                        </td>
                        <td class="text-center">
                          5
                        </td>
                        <td class="text-center">
                          20
                        </td>
                      </tr>
                       <tr>
                        <td class="text-left">
                          &nbsp;&nbsp; - GAMEFLIX
                        </td>
                        <td class="text-center">
                          40
                        </td>
                        <td class="text-center">
                          3
                        </td>
                        <td class="text-center">
                          1
                        </td>
                        <td class="text-center">
                          1
                        </td>
                        <td class="text-center">
                          35
                        </td>
                      </tr>
                      <tr>
                        <td class="text-left">
                          &nbsp;&nbsp; - PLO
                        </td>
                        <td class="text-center">
                          70
                        </td>
                        <td class="text-center">
                          5
                        </td>
                        <td class="text-center">
                          1
                        </td>
                        <td class="text-center">
                          4
                        </td>
                        <td class="text-center">
                          60
                        </td>
                      </tr>
                      <tr>
                        <td class="text-left">
                          &nbsp;&nbsp; - ZENKIT
                        </td>
                        <td class="text-center">
                          20
                        </td>
                        <td class="text-center">
                          10
                        </td>
                        <td class="text-center">
                          5
                        </td>
                        <td class="text-center">
                          3
                        </td>
                        <td class="text-center">
                          2
                        </td>
                      </tr>
                      
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <div class="row">
       	 <div class="col-md-6">
            <div class="card card-chart card-chart-pie"> 
              <div class="card-header">
                <h4 class="title">리스크 현황</h4>
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
						<i class="tim-icons  icon-tag text-warning "></i> 고객변심 - 5 건
					</h4>
					<h4 class="card-title">
						<i class="tim-icons  icon-tag text-warning "></i> 일정지연 - 3 건
					</h4>
					<h4 class="card-title">
						<i class="tim-icons  icon-tag text-warning "></i> 기타 - 2 건
					</h4>
				   </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card card-chart">
              <div class="card-header" style="margin-bottom:50px;">
                <h4 class="title" style="margin-bottom:-45px;">진행 현황</h4>
                	<div class="col-md-3 " style="float:right; ">
                        <select class="selectpicker" data-size="7" data-style="btn btn-primary" title="Single Select">
                          <option disabled selected>프로젝트</option>
                          <option value="2">ECOBEAN</option>
                          <option value="3">GAMEFLIX</option>
                          <option value="4">PLO</option>
                          <option value="5">ZENKIT</option>
                        </select>
                 	</div>
              </div>             
              <div class="card-body" >
                <div class="chart-area">
                  <canvas id="MultipleBarsChart2"></canvas>
                </div>
              </div>
            </div>
          </div>               
        </div>
        
      </div>
	</c:if>
	
	
    </div>
  </div>

   <%@ include file="../a01_main/plugin.jsp"%>
    <%@ include file="../a01_main/bootstrapBottom.jsp"%>

  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initChartPageCharts();

      

    });
  </script>
</body>

</html>
