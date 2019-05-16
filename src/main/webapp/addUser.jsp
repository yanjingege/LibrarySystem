<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- 1.要使用Bootstrap的话，必须是html5文档 -->
<meta charset="UTF-8">
<!-- 2.移动设备优先 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 3.导入核心的css文件 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
<!-- 4.需要引入JQuery文件 -->
<script type="text/javascript" src="bootstrap/js/jquery.js"></script>
<!-- 5.引入BootStrap的核心JS文件 -->
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<title>添加用户</title>
<script type="text/javascript" src="js/ajax.js">
	
</script>

<script type="text/javascript">
	//1.验证名字
	function validateName() {
		var name = document.addUser.name;
		nameReg = /^[\u0391-\uFFE5]{2,10}$/;
		var flag = nameReg.test(name.value);
		var nameMsg = document.getElementById("nameMsg");
		if (flag) {
			nameMsg.style.color = "green";
			nameMsg.innerHTML = "姓名合法";
			return true;
		} else {
			nameMsg.style.color = "#FF4500";
			nameMsg.innerHTML = "姓名必须是2-10位汉字";
			name.focus();
			return false;
		}
	}
	//2.验证用户名
	var flag;
	function validateUsername() {
		var username = document.addUser.username;
		var xmlhttp = getXMLHttpRequest();
		xmlhttp.open("POST", "UserServlet", true);
		xmlhttp.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded");
		xmlhttp.send("action=validateUsername&username=" + username.value);
		var reg = /^[A-z0-9_]{3,15}$/;
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				var content = xmlhttp.responseText;
				var span = document.getElementById("usernameMsg");
				if (content == "0") {
					flag = true;
					if (reg.test(username.value)) {
						usernameMsg.style.color = "green";
						usernameMsg.innerHTML = "用户名合法";
						flag = true;
					} else {
						usernameMsg.style.color = "#FF4500";
						usernameMsg.innerHTML = "必须是3-15位的数字字母下划线";
						username.focus();
						flag = false;
					}
				} else {
					usernameMsg.style.color = "#FF4500";
					usernameMsg.innerHTML = "用户名已存在，请换一个";
					username.focus();
					flag = false;

				}
			}
		}
	}
	//3.验证密码
	function validatePassword() {
		var password = document.addUser.password;
		var reg = /^(w|\w){6,16}$/;
		var passwordMsg = document.getElementById("passwordMsg");
		if (reg.test(password.value)) {
			passwordMsg.style.color = "green";
			passwordMsg.innerHTML = "密码合法";
			return true;
		} else {
			passwordMsg.style.color = "#FF4500";
			passwordMsg.innerHTML = "必须是6-16位的数字字母下划线或者特殊字符";
			password.focus();
			return false;
		}
	}
	//4.确认密码
	function validateRePassword() {
		var password = document.addUser.password;
		var repassword = document.addUser.repassword;
		var repasswordMsg = document.getElementById("repasswordMsg");
		if (repassword.value == password.value) {
			repasswordMsg.style.color = "green";
			repasswordMsg.innerHTML = "两次密码一致";
			return true;
		} else {
			repasswordMsg.style.color = "#FF4500";
			repasswordMsg.innerHTML = "两次密码不一致";
			repassword.focus();
			return false;
		}
	}
	//5.验证手机
	function validatePhone() {
		var reg = /^1[3-9][0-9]{9}$/;
		var phone = document.addUser.phone;
		var phoneMsg = document.getElementById("phoneMsg");
		if (reg.test(phone.value)) {
			phoneMsg.style.color = "green";
			phoneMsg.innerHTML = "手机号码合法";
			return true;
		} else {
			phoneMsg.style.color = "#FF4500";
			phoneMsg.innerHTML = "手机号码不合法";
			phone.focus();
			return false;
		}
	}
	function jiaoyan() {
		return validateName() && validateUsername() && validatePassword()
				&& validateRePassword() && validatePhone();
	}
</script>
</head>
<body background='images/03.jpg'>

	<h1 align="center">图书管理系统---添加用户页面</h1>
	<hr width="1000px">
	<form action="user" class="form-horizontal" method="post">

		<div class="form-group">
			<label for="name" class="col-sm-4 control-label">姓名</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="name" name="name">
			</div>
		</div>

		<div class="form-group">
			<label for="username" class="col-sm-4 control-label">用户名</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="username"
					name="username">
			</div>
		</div>

		<div class="form-group">
			<label for="touxiang" class="col-sm-4 control-label">上传头像</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="touxiang"
					name="touxiang">
			</div>
		</div>

		<div class="form-group">
			<label for="password" class="col-sm-4 control-label">密码</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="password"
					name="password">
			</div>
		</div>

		<div class="form-group">
			<label for="repassword" class="col-sm-4 control-label">确认密码</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="repassword"
					name="repassword">
			</div>
		</div>

		<div class="form-group">
			<label for="phone" class="col-sm-4 control-label">手机号码</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="phone" name="phone">
			</div>
		</div>

		<div class="form-group">
			<label for="phone" class="col-sm-4 control-label">注册时间</label>
			<div class="col-sm-4">
				<input type="date" class="form-control" id="time" name="time">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-4 col-sm-4">
				<button type="submit" class="btn btn-primary">添加用户</button>
			</div>
		</div>
	</form>
</body>
</html>