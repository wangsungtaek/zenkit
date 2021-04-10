<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="form"
      uri="http://www.springframework.org/tags/form"%>    
  <% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>  
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<!DOCTYPE html>
<html lang="en">

<head>
    <%@ include file="../a01_main/bootstrapTop.jsp" %>
</head>


<body class="login-page">
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-absolute navbar-transparent fixed-top">
    <div class="container-fluid">
      <div class="navbar-wrapper">
        <div class="navbar-toggle d-inline">
          <button type="button" class="navbar-toggler">
            <span class="navbar-toggler-bar bar1"></span>
            <span class="navbar-toggler-bar bar2"></span>
            <span class="navbar-toggler-bar bar3"></span>
          </button>
        </div>
        <a class="navbar-brand" href="javascript:void(0)">로그인 페이지</a>
      </div>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-bar navbar-kebab"></span>
        <span class="navbar-toggler-bar navbar-kebab"></span>
        <span class="navbar-toggler-bar navbar-kebab"></span>
      </button>
      <div class="collapse navbar-collapse" id="navigation">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a href="../a01_main/a01_dashboard.jsp" class="nav-link text-primary">
              <i class="tim-icons icon-minimal-left"></i> 대시보드 이동
            </a>
          </li>
       
          <li class="nav-item ">
            <a href="../a00_login/a02_user.jsp" class="nav-link">
              <i class="tim-icons icon-single-02"></i> LOGIN
            </a>
          </li>
       
     
        </ul>
      </div>
    </div>
  </nav>
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
  <div class="wrapper wrapper-full-page ">
    <div class="full-page login-page ">
      <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
      <div class="content">
        <div class="container">
          <div class="col-lg-4 col-md-6 ml-auto mr-auto">
            <form  method="post" class="form">
              <div class="card card-login card-white">
                <div class="card-header">
                  <img src="${path}/assets/img/card-primary.png" alt="">
                  <h1 class="card-title">LOGIN</h1>
                </div>
                <div class="card-body">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <div class="input-group-text">
                        <i class="tim-icons icon-email-85"></i>
                      </div>
                    </div>
                    <input type="text" name="u_id" class="form-control" placeholder="아이디">
                  </div>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <div class="input-group-text">
                        <i class="tim-icons icon-lock-circle"></i>
                      </div>
                    </div>
                    <input type="password" name="u_pass" placeholder="비밀번호" class="form-control">
                  </div>
                </div>
                <div class="card-footer">
                  
                  <button type="submit" class="btn btn-primary btn-lg btn-block mb-3">로그인</button>
                 
              
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
      
    </div>
  </div>
   <%@ include file="../a01_main/plugin.jsp" %>
 <%@ include file="../a01_main/bootstrapBottom.jsp" %>
 <script>
 $(document).ready(function(){
     var loginSucc="${loginSucc}";
     if(loginSucc=="Y"){
   	  alert("로그인 성공\n조회페이지 이동");
   	  $(location).attr("href","${path}/dashboard.do?method=personalList");
     }
     if(loginSucc=="N"){
   	  alert("로그인 실패\n인증된 계정이 아닙니다!");
   	  $("[name=id]").focus();
  }
  });
 
 </script>
</body>

</html>