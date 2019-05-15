<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改分类</title>
<script type="text/javascript" src="JS/ajax.js"></script>
<script type="text/javascript">
	window.onload = function() {
		
		var select = document.getElementById("fenleiList");
		
		ajax({

			method:"POST",
		    url:"FenleiServlet",
		    params:"action=updateshowFenlei",
		    type:"xml",
		    success:function(date){
		    	
		    	var names = date.getElementsByTagName("fenleiname");

				for (var i = 0; i < names.length; i++) {

					var fenleiname = names[i];

					var opt = document.createElement("option");

					var value;

					if (window.addEventListener) {

						value = fenleiname.textContent;

					} else {

						value = fenleiname.text;

					}

					opt.innerHTML = value;

					opt.value = value;

					select.appendChild(opt);

				}

			}
		    		
		});
	}

		/*
		var xmlhttp = getXMLHttpRequest();

		var select = document.getElementById("fenleiList");

		xmlhttp.open("POST", "FenleiServlet", true);

		xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");

		xmlhttp.send("action=updateshowFenlei");

		xmlhttp.onreadystatechange = function() {

			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

				var content = xmlhttp.responseXML;

				var names = content.getElementsByTagName("fenleiname");

				for (var i = 0; i < names.length; i++) {

					var fenleiname = names[i];

					var opt = document.createElement("option");

					var value;

					if (window.addEventListener) {

						value = fenleiname.textContent;

					} else {

						value = fenleiname.text;

					}

					opt.innerHTML = value;

					opt.value = value;

					select.appendChild(opt);

				}

			}

		}
	}*/
</script>
</head>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<body background="./imgs/48.jpg">
	<form action="FenleiServlet?action=update" method="post">
		<table align="center" width="400px" height="200px" border="1px"
			cellspacing="0" bordercolor="silver">
			<caption align="top">
				<h1>
					<font color="#76becc">修改分类页面</font>
				</h1>
				<hr size="2px" color="#76becc" width="600px" />
			</caption>

			<tr align="center">
				<td>请选择你要修改的分类名称</td>
				<td><select name="fenleiname" id="fenleiList">
						<option>----请选择要修改的分类----</option>
						<!--  
				<c:forEach items="${updateList }" var="fenlei">
				<option>${fenlei.fenleiname }</option>
				</c:forEach>
				-->
				</select></td>
			</tr>

			<tr align="center">
				<td>请输入新的分类名称:</td>
				<td><input type="text" name="newfenleiname" /></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="修改" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="reset" value="清空" /></td>
			</tr>
		</table>
	</form>
</body>
</body>
</html>