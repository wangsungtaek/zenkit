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
<html>
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
            <!-- 
             <input type="hidden" name="p_name"/>
             <input type="hidden" name="r_name"/>
             <input type="hidden" name="r_content"/>
             <input type="hidden" name="r_send"/>
            -->
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
            <form:form modelAttribute="risk" action="${path}/zenkit.do?method=riskInsert" method="post" id="raForm"
            class="form-horizontal">
              <div class="card">
               
                <div class="card-header">
                  <h4 class="card-title">????????? ??????</h4>
                </div>
                <div class="card-body">
                     
                   
                      <div class="row">
                    <label class="col-sm-2 col-form-label">???????????? ???</label>
                    <div class="col-sm-7">
                      <div class="form-group">
                       <select name="p_no" class="selectpicker">
                        <option value="0">???????????? ??? ??????</option>
                        <c:forEach var="risk" items="${risks }">
                        <option value="${risk.p_no}">${risk.p_name }</option>
                        </c:forEach>
                       
                       </select>
                      </div>
                    </div>
                    <label class="col-sm-3 label-on-right">
                      <code>*??????</code>
                    </label>
                  </div>
           
                  
                   
                    <div class="row">
                    <label class="col-sm-2 col-form-label">????????????</label>
                    <div class="col-sm-7">
                      <div class="form-group">
                       <form:input path="r_name" class="form-control mr-sm-2" />
                      
                      </div>
                    </div>
                    <label class="col-sm-3 label-on-right">
                      <code>*??????</code>
                    </label>
                  </div>
          
                         
                   <div class="row">
                    <label class="col-sm-2 col-form-label">????????? ??????</label>
                    <div class="col-sm-7">
                      <div class="form-group">
                        <form:textarea path="r_content" class="form-control" 
                        placeholder="????????? ???????????????" style="color:#D4D4D8; border:1px solid #2b3553; max-height:200px;"></form:textarea>
                      </div>
                    </div>
                    <label class="col-sm-3 label-on-right">
                      <code>*??????</code>
                    </label>
                  </div>
                
                
                
                  <div class="row">
                    <label class="col-sm-2 col-form-label">?????????</label>
                    <div class="col-sm-7">
                      <div class="form-group">
                   <form:input path="r_send" class="form-control" value="${sesMem.u_id}" readonly="true"
                   />
                     
                      </div>
                    </div>
                    <label class="col-sm-3 label-on-right">
                      <code></code>
          
                    </label>
                  </div>
                  
             
                </div>
                <div class="card-footer text-center">
                  
                  <button type="button" class="btn btn-info btn-sm btn-simple" id="saveBtn" >??????</button>
                  <button type="button" class="btn btn-info btn-sm btn-simple" id="delBtn" >??????</button>
                 
                </div>
                
              </div>   
               </form:form>
            
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
	$("#saveBtn").click(function(){
	     if($('[name=p_no]').val()==0) {
	    	 console.log($('[name=p_no]').val());
	         alert('???????????? ????????? ??????????????????');
	         return;
	      }
	     if($('#r_name').val()=="") {
	         alert('??????????????? ??????????????????');
	         return;
	      }
	      if($('#r_content').val()=="") {
	         alert('????????? ????????? ??????????????????');
	         return;
	      }

	     $('[name=p_no]').val($('[name=p_no]').val());
	     $('[name=r_name]').val($('#r_name').val());
	     $('[name=r_content]').val($('#r_content').val());
        $('#raForm').attr('action', '${path}/zenkit.do?method=riskInsert');
         $('#raForm').submit();
	   });
  $(document).ready(function(){	

	  var isInsert="${param.r_name}";
	  if(isInsert!=""){
	 	 if(confirm("?????? ??????!!\n????????? ?????? ???????????? ?????????????????????????")){
	 		 $(location).attr("href","${path}/zenkit.do?method=riskList");
	 	 }
	  }
	  
	  $("#delBtn").click(function(){
		  alert("????????? ?????? ?????????????????????.");
		  location.href="${path}/zenkit.do?method=riskList";
	  });
  });
  </script>
</body>
</html>