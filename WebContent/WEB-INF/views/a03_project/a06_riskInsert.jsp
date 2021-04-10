<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form"
      uri="http://www.springframework.org/tags/form"%>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>  
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
           
              <div class="card">
               
                <div class="card-header">
                  <h4 class="card-title">리스크 등록</h4>
                </div>
                <div class="card-body">
               
            <form:form modelAttribute="risk" action="${path}/riskInsert.do" method="post"
            id="TypeValidation" class="form-horizontal">
                   
                    <div class="row">
                    <label class="col-sm-2 col-form-label">리스크명</label>
                    <div class="col-sm-7">
                      <div class="form-group">
                       <form:input path="r_name" class="form-control mr-sm-2" />
                      
                      </div>
                    </div>
                    <label class="col-sm-3 label-on-right">
                      <code></code>
                    </label>
                  </div>
                     <!--  
                     <div class="row">
                    <label class="col-sm-2 col-form-label">프로젝트 명</label>
                    <div class="col-sm-7">
                      <div class="form-group">
                        
                      <input type="text" class="form-control mr-sm-2"/>
                     
                      </div>
                    </div>
                    <label class="col-sm-3 label-on-right">
                      <code>*필수</code>
                    </label>
                  </div>
                 -->
                   <div class="row">
                    <label class="col-sm-2 col-form-label">리스크 내용</label>
                    <div class="col-sm-7">
                      <div class="form-group">
                        <form:textarea path="r_content" rows="10" 
                        class="form-control" 
                        />
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
                        <input class="form-control" type="text" name="name"  required placeholder="첨부파일등록"/>
                      </div>
                    </div>
                    <label class="col-sm-3 label-on-right">
                      <code></code>
                    </label>
                  </div>
                  
                  <div class="row">
                    <label class="col-sm-2 col-form-label">등록자</label>
                    <div class="col-sm-7">
                      <div class="form-group">
                   <form:input path="r_send" class="form-control" />
                     
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
                         <form:input path="r_regdate" class="form-control datetimepicker" value="${risk.r_regdate }"/>
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
                       <form:input path="rs_name"  class="form-control"/>
                      </div>
                    </div>
                    
                    <label class="col-sm-4 label-on-right">
                      <code></code>
                    </label>
                    
                  </div>
                  </form:form>
                </div>
                <div class="card-footer text-center">
                  <button type="submit" id="saveBtn" class="btn btn-primary">저장</button>
                  &nbsp; &nbsp;    
                  <a href="${path}/riskInsert.do">
                   <button type="button" class="btn btn-primary">취소</button></a>
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
  
  <script type="text/javascript">
 
  $(document).ready(function(){
	  $("#saveBtn").click(function(){
		  location.href="${path}/riskList.do";
	  });
  });
  
 
  </script>
</body>
</html>