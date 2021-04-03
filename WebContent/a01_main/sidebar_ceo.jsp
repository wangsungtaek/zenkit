<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="sidebar">
   <div class="sidebar-wrapper">
      <div class="logo">
          <a href="javascript:void(0)" class="simple-text logo-mini">
            <img src="../assets/img/logo_symbol.png" />
          </a>
          <a href="javascript:void(0)" class="simple-text logo-normal">
            Zenkit
          </a>
        </div>
        <ul class="nav">
        
          <li>
            <a data-toggle="collapse" href="#pagesExamples">
              <i class="tim-icons icon-chart-pie-36"></i>
              <p>
                대시보드
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse" id="pagesExamples">
              <ul class="nav">
                <li>
                  <a href="${path}/a01_main/a03_dashboard_all.jsp">
                    <span class="sidebar-mini-icon">CS</span>
                    <span class="sidebar-normal"> 종합 대시보드 </span>
                  </a>
                </li>
                <li>
                  <a href="${path}/a01_main/a04_dashboard_department.jsp">
                    <span class="sidebar-mini-icon">DP</span>
                    <span class="sidebar-normal"> 부서 대시보드 </span>
                  </a>
                </li>               
              </ul>
            </div>
          </li>
              
      </ul>
   	</div>
</div>