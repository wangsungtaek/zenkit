<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<title>Basic initialization</title>
<script src="/zenkit/a00_com/a02_project/codebase/sources/dhtmlxgantt.js"></script>
<link rel="stylesheet" href="/zenkit/a00_com/a02_project/codebase/sources/dhtmlxgantt.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<!-- icons -->
<link href="${path}/Admin/dist/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css?v=5.2.0">
<style>
html, body {
	height: 100%;
	padding: 0px;
	margin: 0px;
	overflow: hidden;
}

.fa {
	cursor: pointer;
	font-size: 14px;
	text-align: center;
	opacity: 0.2;
	padding: 5px;
}

.fa:hover {
	opacity: 1;
}

.fa-pencil {
	color: #ffa011;
}

.fa-plus {
	color: #328EA0;
}

.fa-times {
	color: red;
}
</style>
</head>
<body>

	<div id="gantt_here" style='width:100%; height:90%;'></div>
	
	<script>
	document.addEventListener("DOMContentLoaded",function(eve){
		$.ajax({
			type:"post",
			url:"${path}/job.do?method=data",
			dataType:"json",
			success:function(data){
				var data = data.job;
				console.log(data);
				gantt.init("gantt_here");
				gantt.parse({
					data
				});
			},
			error:function(err){
				alert("에러발생");
				console.log(err);
			}
		});
		var colHeader = '<div class="gantt_grid_head_cell gantt_grid_head_add" onclick="gantt.createTask()"></div>';
		gantt.config.columns = [
			{ name: "text", tree: true, width: 250, resize: true },
            { name: "start_date", align: "center", resize: true ,width: 150},
            { name: "end_date", align: "center", resize: true ,width: 150},
            { name: "charger", align: "center" ,width: 100},
            { name: "progress", align: "center" ,width: 100},
	        { name: "buttons", label:colHeader, width: 75, template: function(task) {
	            return (
	               '<i class="fa fa-pencil" align="center" data-action="edit"></i>' +
	               '<i class="fa fa-plus" align="center" data-action="add"></i>' +
	               '<i class="fa fa-times" align="center" data-action="delete"></i>'
	               );
	         }}
	      ];
		// 테스크 버튼 클릭 시
	      gantt.attachEvent("onTaskClick", function(id, e){
	         var button = e.target.closest("[data-action]")
	         if(button){
	            var action = button.getAttribute("data-action");
	            switch (action) {
	               case "edit":
	                  gantt.showLightbox(id);
	                  break;
	               case "add":
	                  gantt.createTask(null, id);
	                  break;
	               case "delete":
	                  gantt.confirm({
	                     title: gantt.locale.labels.confirm_deleting_title,
	                     text: gantt.locale.labels.confirm_deleting,
	                     callback: function (res) {
	                        if (res)
	                           gantt.deleteTask(id);
	                     }
	                  });
	                  break;
	            }
	            return false;
	         }
	         return true;
	      });
	      

	      var opts = [
	         { key:1 , label: 'High'},
	         { key:2 , label: 'Normal'},
	         { key:3 , label: 'Low'},
	      ];
	      // lightbox 내부 priority 영역 추가
	      gantt.config.lightbox.sections = [
	    	  {name:"charger", height:30, map_to:"charger", type:"textarea"},
	    	  {name:"pname", height:30, map_to:"pname", type:"textarea"},
	          {name:"description", height:30, map_to:"text", type:"textarea", focus:true},
	          {name:"centent", height:30, map_to:"jcontent", type:"textarea"},
	          {name:"time", height:30, map_to:"start_date", type:"duration"},
	          {name:"endtime", height:30, map_to:"end_date", type:"duration"},
	          {name:"progress", height:30, map_to:"progress", type:"textarea"}
	      ];
	      // undefined ==> Priority 변경 (lightbox)
	      gantt.locale.labels.section_charger="담당자";
	      gantt.locale.labels.section_pname="프로젝트명";
	      gantt.locale.labels.section_endtime="종료날짜";
	      gantt.locale.labels.section_centent="작업설명";
	      gantt.locale.labels.section_progress="완료율";
	      
	      
	      gantt.attachEvent("onLightboxSave", function(id, task, is_new){
	    	  var taskStart = task.start_date;
	    	  var taskEnd = task.end_date;
	    	  var scaleStart = gantt.config.start_date;
	    	  var scaleEnd = gantt.config.end_date;
	    	  alert(taskStart);
	    	  alert(scaleStart);
	          
	          // ajax update 처리
	          updateCall(task,is_new);
	       // 갱신된 데이터 호출 필요
	          return true;
	      })
	});// document 끝
	   // task 생성 및 수정
	   function updateCall(gantt,is_new){
	        // callSch() 입력된 수정된 데이터를 요청값으로 전달
	        if(is_new == false){
	           $.ajax({
	              type:"post",
	              url:"${path}/job.do?method=update2",
	              data:gantt,
	              dataType:"json",
	              success:function(data){
	                 // data.모델명
	                 if(data.success=="Y")
	                    alert("수정완료");
	              },
	              error:function(err){
	                 alert("에러발생: " + err);
	                 console.log(err);
	              }
	           });
	        } else if(is_new == true){
	           
	           var sch = callSch(gantt);
	           console.log(sch);
	           $.ajax({
	              type:"post",
	              url:"${path}/job.do?method=insert",
	              data:sch,
	              dataType:"json",
	              success:function(data){
	                 // data.모델명
	                 if(data.success=="Y")
	                    alert("수정완료");
	              },
	              error:function(err){
	                 alert("에러발생: " + err);
	                 console.log(err);
	              }
	           });
	        }
	        // 갱신된 데이터 호출 필요
	     } 
	   
	   // is_new == true 일 때, 빈 데이터 채우기
	   function callSch(gantt){
	        var sch = {};
	        sch.duration = gantt.duration;
	        sch.parent = gantt.parent;
	        sch.progress = 0;
	        sch.sortorder = 9999; // id
	        sch.id = 9999;   // id
	        sch.text = gantt.text;
	        sch.open = true;
	        sch.start_date = gantt.start_date;
	        
	        return sch;
	     }
	     
	   function getFormatDate(date){
	       var year = date.getFullYear();              //yyyy
	       var month = (1 + date.getMonth());          //M
	       month = month >= 10 ? month : '0' + month;  //month 두자리로 저장
	       var day = date.getDate();                   //d
	       day = day >= 10 ? day : '0' + day;          //day 두자리로 저장
	       return  year + '' + month + '' + day;       //'-' 추가하여 yyyy-mm-dd 형태 생성 가능
	   }
	   
	   function sw(data){
	      var sch = {};
	      sch.id = data.id;
	      //data.start_date = gantt.date.parseDate(data.start_date,"%Y-%m-%d %H:%i:%s");
	      //sch.start_date = data.start_date.toISOString();
	      sch.start_date = data.start_date;
	      sch.duration = data.duration;
	      sch.text = data.text;
	      sch.progress = data.progress;
	      sch.parent = data.parent;
	      sch.sortorder = data.sortorder;
	      sch.open = true;
	      return sch;
	   }
	</script>
	
</body>