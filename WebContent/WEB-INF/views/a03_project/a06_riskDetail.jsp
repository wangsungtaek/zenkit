<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
 <%@ include file="../a01_main/bootstrapTop.jsp" %>
</head>

<body class="sidebar-mini ">
  <div class="wrapper">
  <%@ include file="../a01_main/sidebar.jsp" %>
   <div class="main-panel">
    <%@ include file="../a01_main/header.jsp" %>
      
     
      <div class="modal modal-search fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="searchModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="SEARCH">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <i class="tim-icons icon-simple-remove"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
      <!-- End Navbar -->
      <div class="content">
        <div class="row">
          <div class="col-md-6">
           
          </div>
         
          <div class="col-md-12">
            <form id="TypeValidation" class="form-horizontal"  method="post" enctype="multipart/form-data">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title">리스크 상세 정보</h4>
                </div>
                <div class="card-body">
               
                  <div class="row">
                    <label class="col-sm-2 col-form-label">제목</label>
                    <div class="col-sm-7">
                      <div class="form-group">
                        <input class="form-control" value="${riskDetail.name }">
                       
                      </div>
                    </div>
                    <label class="col-sm-3 label-on-right">
                      <code>*필수</code>
                    </label>
                  </div>
                  
                     <div class="row">
                    <label class="col-sm-2 col-form-label">프로젝트 명</label>
                    <div class="col-sm-7">
                      <div class="form-group">
                       <input class="form-control" value="${riskDetail.j_name }">
                      </div>
                    </div>
                    <label class="col-sm-3 label-on-right">
                      <code>*필수</code>
                    </label>
                  </div>
                
                   <div class="row">
                    <label class="col-sm-2 col-form-label">리스크 내용</label>
                    <div class="col-sm-7">
                      <div class="form-group">
                        <input class="form-control" type="text" name="content" value="${riskDetail.r_content }"/>
                      </div>
                    </div>
                    <label class="col-sm-3 label-on-right">
                      <code></code>
                    </label>
                  </div>
                  <div class="row">
                    <label class="col-sm-2 col-form-label">첨부파일</label>
                    <div class="col-sm-7">
                      <div class="form-group">
                        <input class="form-control" type="url" name="name"  value="${riskDetail.r_file }"
                        required placeholder="첨부파일등록"/>
                      </div>
                    </div>
                    <label class="col-sm-3 label-on-right">
                      <code></code>
                    </label>
                  </div>
                  <div class="row">
                    <label class="col-sm-2 col-form-label">조치자</label>
                    <div class="col-sm-7">
                      <div class="form-group">
                        <input class="form-control" type="url" name="name" value="${riskDetail.r_send }"/>
                     
                      </div>
                    </div>
                    <label class="col-sm-3 label-on-right">
                      <code>*필수</code>
                    </label>
                  </div>
                  
                   <div class="row">
                    <label class="col-sm-2 col-form-label">조치 내용</label>
                    <div class="col-sm-7">
                      <div class="form-group">
                        <input class="form-control" type="url" name="name" value="${riskDetail.r_rcontent }"/>
                     
                      </div>
                    </div>
                    <label class="col-sm-3 label-on-right">
                      <code>*필수</code>
                    </label>
                  </div>
                  
                   <div class="row">
                    <label class="col-sm-2 col-form-label">등록일</label>
                    <div class="col-sm-7">
                      <div class="form-group">
                         <input type="text" class="form-control datetimepicker" value="${riskDetail.r_regdate}" >
                      </div>
                    </div>
                    <label class="col-sm-3 label-on-right">
                      <code>*필수</code>
                    </label>
                  </div>
                  <div class="row">
                    <label class="col-sm-2 col-form-label">리스크 상태</label>
                    <div class="col-sm-3">
                      <div class="form-group">
                        <input class="form-control" type="url" name="name" value="${riskDetail.rs_name }"/>
                      </div>
                    </div>
                    
                    <label class="col-sm-4 label-on-right">
                      <code></code>
                      
                    </label>
                    
                  </div>
                  
                </div>
                </form>
                <div class="card-footer text-center">
                  <button type="submit" class="btn btn-primary">수정</button>
                  &nbsp; &nbsp;    
                  <a href="a03_riskInsert.jsp">
                   <button type="submit" class="btn btn-primary">삭제</button></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12">
          
          </div>
        </div>
      </div>
      
    </div>
  </div>
  <%@ include file="../a01_main/plugin.jsp" %>
 <%@ include file="../a01_main/bootstrapBottom.jsp" %>
 
</body>

</html>