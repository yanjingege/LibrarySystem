<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加分类</title>
<script type="text/javascript" src="JS/ajax.js"></script>
<script type="text/javascript">

       

		function validateaddFenlei(){
			
			var fenleiname=document.addFenlei.fenleiname;

			 //alert(fenleiname.value);

			fenleinameReg = /^[A-z0-9]{1,15}$/;

			var flag = fenleinameReg.test(fenleinameReg.value);

			var addFenleiMsg = document.getElementById("addFenleiMsg");
			
			if(flag){
				
				var xmlhttp = getXMLHttpRequest();

				xmlhttp.open("POST", "FenleiServlet", true);

				xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");

				xmlhttp.send("action=validateaddFenlei&fenleiname="+fenleiname.value);

				xmlhttp.onreadystatechange = function() {

					if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

						var content = xmlhttp.responseText;
						
						//alert(content);

						if (content == "0") {

							addFenleiMsg.style.color = "green";

							addFenleiMsg.innerHTML = "该分类不存在，可以添加";

							  return true;

						} else {

							addFenleiMsg.style.color = "red";

							addFenleiMsg.innerHTML = "该分类已存在，请选择另一个分类名称进行添加";

							addFenleiMsg.focus();

							return false;

						}

					}
				}
				}else {

					addFenleiMsg.style.color = "red";

					addFenleiMsg.innerHTML = "用户名必须是1-15位的是字母数字下划线";

					addFenleiMsg.focus();

					return false;

				}

			}	
		
		
			
</script>

<!-- 
<c:if test="${!(empty fenleinameisTrue )}">

	<script>
		alert("${ fenleinameisTrue}");
	</script>

	<c:remove var="fenleinameisTrue" scope="session" />
</c:if>
 -->

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
	  <form action="FenleiServlet?action=addFenlei" method="post" name="addFenlei">
		<table align="center" width="200px" height="100px" border="1px"
			cellspacing="0" bordercolor="silver">
			<caption align="top">
				<h1>
					<font color="#76becc">添加分类</font>
				</h1>
				<hr size="2px" color="#76becc" width="600px" />
			</caption>

			<tr align="center">
				<td>请输入分类的名字:</td>
				<td><input type="text" name="fenleiname" onblur="validateaddFenlei()"/><span id="addFenleiMsg"></span></td>
			</tr>

			<tr align="center">
				<td colspan="2"><input type="submit" value="添加" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="reset" value="重填" /></td>
			</tr>
		</table>
	</form>
</body>
</html>