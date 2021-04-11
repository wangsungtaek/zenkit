<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="form"
      uri="http://www.springframework.org/tags/form"%>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
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
          <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                <h5 class="title">프로필 편집</h5>
              </div>
              <div class="card-body">
                <form>
                  <div class="row">
                    <div class="col-md-5 pr-md-1">
                      <div class="form-group">
                        <label>이름</label>
                        <input type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-md-3 px-md-1">
                      <div class="form-group">
                        <label>아이디</label>
                        <input type="text" class="form-control" >
                      </div>
                    </div>
                    <div class="col-md-4 pl-md-1">
                      <div class="form-group">
                        <label>이메일 주소</label>
                        <input type="email" class="form-control" placeholder="mike@email.com">
                      </div>
                    </div>
                  </div>
                 
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>전화번호</label>
                        <input type="text" class="form-control" value="">
                      </div>
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="col-md-4 pr-md-1">
                      <div class="form-group">
                        <label>직책</label>
                        <input type="text" class="form-control" value="">
                      </div>
                    </div>
                    <div class="col-md-4 px-md-1">
                      <div class="form-group">
                        <label>직급</label>
                        <input type="text" class="form-control" value="">
                      </div>
                    </div>
                    <div class="col-md-4 pl-md-1">
                      <div class="form-group">
                        <label>부서</label>
                        <input type="text" class="form-control">
                      </div>
                    </div>
                 
                  </div>
                  <div class="row">
                    <div class="col-md-8">
                      <div class="form-group">
                        <label></label>
                        <textarea rows="4" cols="80" class="form-control"></textarea>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
              <div class="card-footer">
                <button type="submit" class="btn btn-fill btn-primary">저장</button>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card card-user">
              <div class="card-body">
                <p class="card-text">
                  <div class="author">
                    <div class="block block-one"></div>
                    <div class="block block-two"></div>
                    <div class="block block-three"></div>
                    <div class="block block-four"></div>
                    <a href="javascript:void(0)">
                      <img class="avatar" src="${path}/assets/img/mike.jpg" alt="...">
                      <h5 class="title">홍길동</h5>
                    </a>
                    <p class="description">
                      IT부서
                    </p>
                  </div>
                </p>
                <div class="card-description">
                
                </div>
              </div>
              <!-- 
               <div class="card-footer">
                <div class="button-container">
                  <button href="javascript:void(0)" class="btn btn-icon btn-round btn-facebook">
                    <i class="fab fa-facebook"></i>
                  </button>
                  <button href="javascript:void(0)" class="btn btn-icon btn-round btn-twitter">
                    <i class="fab fa-twitter"></i>
                  </button>
                  <button href="javascript:void(0)" class="btn btn-icon btn-round btn-google">
                    <i class="fab fa-google-plus"></i>
                  </button>
                </div>
              </div>
              -->
            </div>
          </div>
        </div>
      </div>
     
    </div>
  </div>
  <%@ include file="../a01_main/plugin.jsp" %>
 <%@ include file="../a01_main/bootstrapBottom.jsp" %>
</body>

</html>