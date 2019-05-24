<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<title>注册</title>

<div class="container">
	<h1 align="center">图书管理系统———注册页面</h1>

	<hr width="1000px">

	<form action="add" class="form-horizontal" method="post">
</div>

<div class="form-group">

	<label for="name" class="col-sm-4 control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名</label>

	<div class="col-sm-4">

		<input type="text" class="form-control" id="name
						name="name">

	</div>

</div>

<div class="form-group">
	<label for="touxiang">;&nbsp;&nbsp;&nbsp;&nbsp;头像</label> <input type="file" id="touxiang">
	<p class="help-block">请选择图片</p>
</div>

<div class="form-group">

	<label for="phone" class="col-sm-4 control-label">手&nbsp;&nbsp;&nbsp;&nbsp;机</label>

	<div class="col-sm-4">

		<input type="text" class="form-control" id="phone" name="phone">

	</div>

</div>

<div class="form-group">

	<label for="username" class="col-sm-4 control-label">用户名</label>

	<div class="col-sm-4">

		<input type="text" class="form-control" id="username" name="username">

	</div>

</div>

<div class="form-group">

	<label for="password" class="col-sm-4 control-label">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>

	<div class="col-sm-4">

		<input type="password" class="form-control" id="password"
			name="password">

	</div>

	<div class="form-group">

		<div class="col-sm-offset-4 col-sm-4">

			<button type="submit" class="btn btn-primary">注册</button>

		</div>

		</form>

	</div>
	<div class="col-sm-offset-4 col-sm-4">

		<a href="login.jsp"><font size="2" color="black">还不是会员？立即注册</font></a>

	</div>

</div>
</div>
</div>
</body>
</html>



