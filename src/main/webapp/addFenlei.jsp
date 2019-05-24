<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<title>添加分类</title>
</head>
<body background="images/03.jpg">
	<div class="container">
		<h1 align="center">图书管理系统----添加分类页面</h1>

         <hr width="1000px">

		<form action="fenlei"  class="form-horizontal" method="post">

			

			<div class="form-group">
				<label for="fid" class="col-sm-4 control-label">分类编号</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="fid"
						name="fid">
				</div>
			</div>

			<div class="form-group">
				<label for="fname" class="col-sm-4 control-label">分类名称</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="fname" name="fname">
				</div>
			</div>

			

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-4">
					<button type="submit" class="btn btn-primary">添加分类</button>
					<button type="reset" class="btn btn-primary">重置</button>
				</div>
			</div>

		</form>

	</div>
</body>
</html>