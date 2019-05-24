<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrapValidator.css" />
<script type="text/javascript" src="bootstrap/js/jquery.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrapValidator.js"></script>
<title>修改</title>

<div class="container">
	<h1 align="center">图书管理系统———修改信息页面</h1>

	<hr width="1000px">

	<form action="add" class="form-horizontal" method="post">
</div>

<div class="form-group">

	<label for="name" class="col-sm-4 control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名</label>

	<div class="col-sm-4">

		<input type="text" class="form-control" id="name">

	</div>

</div>

<div class="form-group">
	<label for="touxiang">;&nbsp;&nbsp;&nbsp;&nbsp;头像</label> <input type="file" id="touxiang" >
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

			<button type="submit" class="btn btn-primary btn-lg">修改</button>

		</div>

		</form>

	</div>
	<div class="col-sm-offset-4 col-sm-4">

		<a href="login.jsp"><font size="2" color="black">返回</font></a>

	</div>

</div>
</div>
</div>
</body>
</html>



