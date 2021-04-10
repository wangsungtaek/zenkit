<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="sidebar">
   <div class="sidebar-wrapper">
      <div class="logo">
          <a href="javascript:void(0)" class="simple-text logo-mini">
            <img src="${path}/assets/img/logo_symbol.png" />
          </a>
          <a href="javascript:void(0)" class="simple-text logo-normal">
            zenkit
          </a>
        </div>
        <ul class="nav">
        
          <li>
            <a data-toggle="collapse" href="#pagesExamples">
              <i class="tim-icons icon-chart-pie-36"></i>
              <p class="title">
                대시보드
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse" id="pagesExamples">
              <ul class="nav">
                <li>
                  <a href="${path}/dashboard.do?method=personalList">
                    <span class="sidebar-mini-icon">PE</span>
                    <span class="sidebar-normal"> 개인 대시보드 </span>
                  </a>
                </li>
                <li>
                  <a href="${path}/dashboard.do?method=projectList">
                    <span class="sidebar-mini-icon">PJ</span>
                    <span class="sidebar-normal"> 프로젝트 대시보드 </span>
                  </a>
                </li>               
              </ul>
            </div>
          </li>
          
          <li>
            <a href="${path}/mytask.do?method=task">
              <i class="tim-icons icon-single-02"></i>
              <p class="title">
                내 작업
              </p>
            </a>                      
          </li>
          
          <li>
            <a  href="${path}/calendar.do?method=list">
              <i class="tim-icons icon-components"></i>
              <p class="title">
                일정 관리
              </p>
            </a>                      
          </li>
          
          <li>
            <a href="${path}/project.do?method=form">
              <i class="tim-icons icon-notes"></i>
              <p class="title">
                프로젝트
              </p>
            </a>                      
          </li>         
          
          <li>
            <a data-toggle="collapse" href="#tablesExamples">
              <i class="tim-icons icon-bullet-list-67"></i>
              <p class="title">
                결재
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse" id="tablesExamples">
              <ul class="nav">
                <li>
                  <a href="${path}/authIng.do">
                    <span class="sidebar-mini-icon">PA</span>
                    <span class="sidebar-normal"> 결재진행함 </span>
                  </a>
                </li>
                <li>
                  <a href=" ${path}/authApp.do">
                    <span class="sidebar-mini-icon">CA</span>
                    <span class="sidebar-normal"> 결재완료함</span>
                  </a>
                </li>
                <li>
                  <a href=" ${path}/authRej.do">
                    <span class="sidebar-mini-icon">RA</span>
                    <span class="sidebar-normal"> 결재반려함</span>
                  </a>
                </li>
                <li>
                  <a href="${path}/authReq.do">
                    <span class="sidebar-mini-icon">RA</span>
                    <span class="sidebar-normal"> 결재요청함</span>
                  </a>
                </li>
              </ul>
            </div>
          </li>              
      </ul>
   	</div>
</div>