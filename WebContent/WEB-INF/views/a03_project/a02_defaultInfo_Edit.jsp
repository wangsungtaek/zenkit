<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>       
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../a01_main/bootstrapTop.jsp"%>
</head>
<style>
	.defaultInfo_Edit .card label { color:white; }

</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		$("#canBtn").click(function(){
			location.href="${path}/proInfo.do?p_no"+${proInfo.p_no};
		});
		$("#strBtn").click(function(){
			location.href="";
		});
		$("#delBtn").click(function(){
			if(confirm("프로젝트를 삭제하시겠습니까?")){
				location.href="${path}/delproInfo.do?p_no="+${proInfo.p_no};
			}
		});
		$("#deptselect").change(function(){
			$.ajax({
				type:"post",
				url:"${path}/jsonUser.do?d_no="+$(this).attr("option","selected").val(), 
				dataType:"json",
				success:function(data){
					console.log(data.ulist);
					var list=data.ulist;
					var show="";
					show+="<option disabled selected>사원 선택</option>";
					$.each(list,function(idx,ul,arry){
					 	alert(ul.u_no+":"+ul.u_name);
						show+="<option value='"+ul.u_no+"'>"+ul.u_name+"</option>";
					});
					$("#userselect").html(show);
				},
				error:function(err){
					alert("에러발생");
					console.log(err);
				}  
			});
		});
	});
	


</script>
<body class="sidebar-mini dInfo_edit">
	<div class="wrapper">
	
    <%@ include file="../a01_main/sidebar.jsp"%>
    <div class="main-panel">
    <%@ include file="../a01_main/header.jsp"%>

      <!-- Your content here -->
      <div class="content defaultInfo_Edit">  
      	<%@ include file="project_header.jsp"%>
        <div class="row">
      		<div class="col-md-12">
      			<div class="card">
      				<div class="card-header">
      					<h3 class="card-title">프로젝트 등록 정보</h3>
      				</div>
      				<div class="card-body">
      					<form action="${path}/uptProInfo.do" method="post">
      						<div class="form-group">
      							<div class="row">
		      						<label class="col-md-6" style="font-size:14px;">프로젝트명</label>
		      						<label class="col-md-6" style="font-size:14px;">프로젝트 코드</label>
	      						</div>
	      						<div class="row">
		      						<div class="col-md-6 form-group">
		      							<input type="text" class="form-control" value="${proInfo.p_name}" style="color:white;" readonly>
		      						</div>
		      						<div class="col-md-6 form-group">
		      							<input type="text" class="form-control" value="${proInfo.p_no}" style="color:white;" readonly>
		      						</div>
	      						</div>
	      						<div class="row">
		      						<label class="col-md-6" style="font-size:14px;">프로젝트관리자</label>
	      						</div>
	      						<div class="row">
		      						<div class="col-md-3 form-group">
		      							<div class="dropdown bootstrap-select">
			      							<select class="selectpicker" data-size="5" data-style="btn btn-primary"
			      								tabindex="-98" id="deptselect">
			      								<option disabled selected>부서 선택</option>
			      								<c:forEach var="d" items="${departments}">
													<option value="${d.d_no}">${d.d_name}</option>
												</c:forEach>
			      							</select>
		      							</div>
		      						</div>
		      						<div class="col-md-3 form-group">
		      							<div class="dropdown bootstrap-select">
			      							<select class="selectpicker" data-size="5" data-style="btn btn-primary"
			      								tabindex="-98" id="userselect">
			      								<option disabled selected>사원 선택</option>
			      							</select>
		      							</div>
		      						</div>
	      						</div>
	      						<div class="row">
		      						<label class="col-md-6" style="font-size:14px;">프로젝트 설명</label>
		      						<div class="form-group col-md-12">
		      							<textarea class="form-control pinfo_textarea" rows="5"
		      								style="max-height: 120px;">${proInfo.p_content}</textarea>
		      						</div>
	      						</div>
      						</div>
      					</form>
      				</div>
      				<br><br><br><br>
      				<div class="card-footer">
      					<button type="submit" class="btn btn-success" id="strBtn">
      						<span><i class="tim-icons icon-check-2" style="margin-top:-5px"></i> 저장</span></button>
      					<button class="btn" id="canBtn">
      						<span><i class="tim-icons icon-refresh-01" style="margin-top:-5px"></i> 취소</span></button>
      					<button class="btn btn-danger" id="delBtn"
      						style="float:right">
      					 	<span><i class="tim-icons icon-simple-remove"></i> Delete</span></button>
      				</div>
      			</div>
      		</div>
        </div>
      </div>
      <!--  End content -->

    </div>
  </div>
	<%@ include file="../a01_main/plugin.jsp"%>
	<%@ include file="../a01_main/bootstrapBottom.jsp"%>

   
</body>
</html>