<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
	
	<script src="//cdn.ckeditor.com/4.9.1/full/ckeditor.js"></script>
	<!-- <script src="https://cdn.ckeditor.com/4.9.1/full-all/ckeditor.js"></script> -->
	
	<script type="text/javascript" src="<c:url value='/resources/ckeditor/ckeditor.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/ckeditor/samples/js/sample.js'/>"></script>
	<link rel="stylesheet" href='./resources/css/mystyles.css'/>
	<link rel="stylesheet" href='./resources/ckeditor/samples/toolbarconfigurator/lib/codemirror/neo.css'/>
	<link rel="stylesheet" href='./resources/ckeditor/samples/css/samples.css'/>	
	
	
	
	<script type="text/javascript">
		
		/* 드디어 성공이다!!!!! */
		$(document).ready(function(){
			
			editor.on("instanceReady", function(){
				this.document.on("keyup", function(){
					sendContext();
				});
			});
			
		});
		
		/* 추가 */
		function sendContext(){
			var context = CKEDITOR.instances.editor1.getData();
			console.log('지금 여기~~~~'+myId);
			stompClient.send("/chat/${p_num}/context",{}, JSON.stringify({
				context :context,
				writer: myId
				})
			);
			console.log('컨컨컨컨컨텍텍텍텍-----------'+myId);
		}
	</script>
	
	<style type="text/css">
	
		body {
			padding: 0px;
			display: flex;
			align-items: center;
			text-align: center;
		}
		
		.container {
			margin: 0 auto;
			padding: 0 auto;
		}
	
	</style>

	<div class="container">
		<textarea name="text" id="editor1">
			
			${test}
			
		</textarea>
	</div>
	
	<%@include file="editorSetting.jsp" %>
	
</html>

