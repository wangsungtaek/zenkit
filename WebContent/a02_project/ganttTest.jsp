<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<!DOCTYPE html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
	<title>Basic initialization</title>
	<script src="/zenkit/a00_com/a02_project/codebase/dhtmlxgantt.js?v=7.0.13"></script>
	<link rel="stylesheet" href="/zenkit/a00_com/a02_project/codebase/dhtmlxgantt.css?v=7.0.13">
	<style>
		html, body {
			height: 100%;
			padding: 0px;
			margin: 0px;
			overflow: hidden;
		}
	</style>
</head>
<body>

	<div id="gantt_here" style='width:100%; height:100%;'></div>
	
	<script>
		gantt.init("gantt_here");
		
		
		
		gantt.parse({
			data: [
				{ id: 1, text: "Project #2", start_date: "01-04-2018", end_date:"12-04-2018", progress: 0.4, open: true },
				{ id: 2, text: "Task #1", start_date: "02-04-2018", duration: 8, progress: 0.6, parent: 1 },
				{ id: 3, text: "Task #2", start_date: "11-04-2018", duration: 8, progress: 0.6, parent: 1 }
			],
			links: [
				{id: 1, source: 1, target: 2, type: "1"},
				{id: 2, source: 2, target: 3, type: "0"}
			]
		});
		console.log(gantt);
	</script>
</body>