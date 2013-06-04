<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="sy.pageModel.SessionInfo" %>
<%@ page import="sy.util.ResourceUtil" %>
<!DOCTYPE html>
<html>
<head>
<title>Medical Project Management System</title>
<!-- 
inc.jsp为javascript、css、cookie文件
isIe.jsp为判定ie版本
 -->
 <script type="text/javascript" charset="utf-8">
 <%
 SessionInfo sessioninfo = (SessionInfo)request.getSession().getAttribute(ResourceUtil.getSessionInfoName());
 if(sessioninfo.getUserId() == null)
 {
 response.sendRedirect("index.jsp");
 }
 %>
 </script>
<jsp:include page="inc.jsp"></jsp:include>
</head>
<body id="indexLayout" class="easyui-layout">
	<div region="north" class="logo" style="height:80px;overflow: hidden;" href="layout/north.jsp"></div>	
	<div region="center" title="欢迎使用医疗项目管理系统" style="overflow: hidden;" href="layout/center.jsp"></div>
	<div region="west" title="功能导航" split="false" style="width:200px;overflow: hidden;" href="layout/west.jsp"></div>
	<div region="south" style="height:20px;overflow: hidden;" href="layout/south.jsp"></div>
	<jsp:include page="isIe.jsp"></jsp:include>
</body>
</html>