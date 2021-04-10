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

<head>
  <meta charset="utf-8" />
  <title>zenkit</title>
  <%@ include file="../a01_main/bootstrapTop.jsp"%>
</head>

<body class="sidebar-mini ">
  <div class="wrapper">   
   <%@ include file="../a01_main/sidebar_ceo.jsp"%>
    <div class="main-panel">
      <%@ include file="../a01_main/header.jsp"%>
    
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
      </div>
 
      
    </div>
  </div>
  <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
      <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
      </a>
      <ul class="dropdown-menu">
        <li class="header-title"> Sidebar Background</li>
        <li class="adjustments-line">
          <a href="javascript:void(0)" class="switch-trigger background-color">
            <div class="badge-colors text-center">
              <span class="badge filter badge-primary active" data-color="primary"></span>
              <span class="badge filter badge-info" data-color="blue"></span>
              <span class="badge filter badge-success" data-color="green"></span>
              <span class="badge filter badge-warning" data-color="orange"></span>
              <span class="badge filter badge-danger" data-color="red"></span>
            </div>
            <div class="clearfix"></div>
          </a>
        </li>
        <li class="header-title">
          Sidebar Mini
        </li>
        <li class="adjustments-line">
          <div class="togglebutton switch-sidebar-mini">
            <span class="label-switch">OFF</span>
            <input type="checkbox" name="checkbox" checked class="bootstrap-switch" data-on-label="" data-off-label="" />
            <span class="label-switch label-right">ON</span>
          </div>
          <div class="togglebutton switch-change-color mt-3">
            <span class="label-switch">LIGHT MODE</span>
            <input type="checkbox" name="checkbox" checked class="bootstrap-switch" data-on-label="" data-off-label="" />
            <span class="label-switch label-right">DARK MODE</span>
          </div>
        </li>
        <li class="button-container mt-4">
          <a href="../docs/1.0/getting-started/introduction.html" class="btn btn-default btn-block btn-round">
            Documentation
          </a>
        </li>
        <li class="header-title">Thank you for 95 shares!</li>
        <li class="button-container text-center">
          <button id="twitter" class="btn btn-round btn-info"><i class="fab fa-twitter"></i> &middot; 45</button>
          <button id="facebook" class="btn btn-round btn-info"><i class="fab fa-facebook-f"></i> &middot; 50</button>
          <br>
          <br>
          <a class="github-button" href="https://github.com/creativetimofficial/ct-black-dashboard-pro" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star ntkme/github-buttons on GitHub">Star</a>
        </li>
      </ul>
    </div>
  </div>
  <%@ include file="../a01_main/plugin.jsp"%>
  <%@ include file="../a01_main/bootstrapBottom.jsp"%>
   
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initChartPageCharts();
/*       demo.initDashboardPageCharts();      
      demo.initVectorMap(); */

    });
  </script>
</body>

</html>
