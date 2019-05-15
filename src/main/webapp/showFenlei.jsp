<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path=request.getContextPath();

String base=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/"+path+"/";

%>
<!-- http://localhost:端口号/项目名/ -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看所有分类</title>
<script type="text/javascript">
	window.onload = function() {

		var selectAll = document.getElementById("selectAll");

		selectAll.onclick = function() {

			var chek = document.getElementsByName("ids");

			for (var i = 0; i < chek.length; i++) {

				chek[i].checked = true;
			}
		};

		var noselectAll = document.getElementById("noselectAll");

		noselectAll.onclick = function() {

			var chek = document.getElementsByName("ids");

			for (var i = 0; i < chek.length; i++) {

				chek[i].checked = false;
			}
		};

		var fanxuan = document.getElementById("fanxuan");

		fanxuan.onclick = function() {

			var chek = document.getElementsByName("ids");

			for (var i = 0; i < chek.length; i++) {

				if (chek[i].checked == true) {

					chek[i].checked = false;
				} else {
					chek[i].checked = true;
				}

			}
		};

		var deleteFenlei = document.getElementById("deleteFenlei");

		deleteFenlei.onclick = function() {

			var chek = document.getElementsByName("ids");

			var flag = false;

			for (var i = 0; i < chek.length; i++) {
				if (chek[i].checked == true) {
					flag = true;
					break;
				}
			}

			if (flag == false) {
				alert("请你至少勾选一项进行删除");
				return;
			}

			var str = "";
			for (var i = 0; i < chek.length; i++) {
				if (chek[i].checked == true) {

					str += chek[i].value + ",";
				}
			}

			str = str.slice(0, str.length - 1);

			alert(str);

			//发送给服务器
			var queren = confirm("你确定要删除这些分类吗？");

			if (queren == true) {

				location.href = "FenleiServlet?action=deleteFenlei&ids=" + str;
			} else {
				location.reload();
			}

		}

	};
</script>


<!-- 
<style>
a{
text-decoration: none;
}
</style>

<c:if test="${!(empty deleteMsg) }">
<script>
alert("${deleteMsg}");
</script>
<c:remove var="deleteMsg" scope="session"/>
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
<body background="<%=base %>/imgs/48.jpg">
	   <!--  <form  action="<%=base %>FenleiServlet?action=showFenlei"  method="post">-->
	<table align="center" width="200px" height="100px" border="1px"
		cellspacing="0" bordercolor="silver">
		<caption align="top">
			<h1>
				<font color="#76becc">查看所有分类</font>
			</h1>
			<hr size="2px" color="#76becc" width="600px" />
		</caption>

		<tr align="center">
			<td>选择</td>
			<td>编号</td>
			<td>id</td>
			<td>分类名称</td>
			<td>删除</td>
			<td>修改</td>
		</tr>

		<c:forEach items="${pb.beanList }" var="fenlei" varStatus="ss">
			<tr align="center">
				<td><input type="checkbox" name="ids" value="${fenlei.id }" /></td>
				  <td>${ss.index+1 }</td>
				<td>${fenlei.id }</td>
				<td>${fenlei.fenleiname}</td>
				<td><input type="submit" value="删除" /></td>
				<td><input type="submit" value="修改" /></td>
			</tr>
		</c:forEach>

		<tr align="center">
		<tr>
			<td><button id="selectAll">全选</button>&nbsp;&nbsp;&nbsp;&nbsp;
				<button id="noselectAll">全不选</button>&nbsp;&nbsp;&nbsp;&nbsp;
				<button id="fanxuan">反选</button></td>
		</tr>
		</tr>
		<tr>
			<td align="center" colspon="5"><button id="deleteFenlei">删除</button></td>
		</tr>
	</table>

	<p>
	<p>
	<center>
		第${pb.pageNow }页/共${pb.pages }页 &nbsp;&nbsp;&nbsp;&nbsp; <a
			href="<%=base %>FenleiServlet?action=showFenleiByPage&pageNow=1">首页</a>
		&nbsp;&nbsp;&nbsp;&nbsp;

		<c:if test="${pb.pageNow>1}">
			<a
				href="<%=base %>FenleiServlet?action=showFenleiByPage&pageNow=${pb.pageNow-1}">上一页</a>
		</c:if>
		&nbsp;&nbsp;

		<!-- 分页两种情况:
		     如果页面小于10；
		     如果页面大于10
		 -->
		<c:choose>
			<c:when test="${pb.pages<=10}">
				<c:set var="begin" value="1"></c:set>
				<c:set var="end" value="${pb.pages}"></c:set>
			</c:when>
			<c:otherwise>
				<c:set var="begin" value="${pb.pageNow-5}"></c:set>
				<c:set var="end" value="${pb.pageNow+4}"></c:set>
				<c:if test="${begin<=1}">
					<c:set var="begin" value="1"></c:set>
					<c:set var="end" value="10"></c:set>
				</c:if>
				<c:if test="${end>=pb.pages}">
					<c:set var="begin" value="${pb.pages-9 }"></c:set>
					<c:set var="end" value="${pb.pages }"></c:set>
				</c:if>
			</c:otherwise>
		</c:choose>
		<c:forEach begin="${begin}" end="${end}" var="i">
			<c:choose>
				<c:when test="${pb.pageNow==i}">
		       [${i }]
		     </c:when>
				<c:otherwise>
					<a href="<%=base %>FenleiServlet?action=showFenleiByPage&pageNow=${i}">[${i}]</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		&nbsp;&nbsp;
		<c:if test="${pb.pageNow<pb.pages}">
			<a
				href="<%=base %>FenleiServlet?action=showFenleiByPage&pageNow=${pb.pageNow+1}">下一页</a>
		</c:if>

		&nbsp;&nbsp;&nbsp;&nbsp; <a
			href="<%=base %>FenleiServlet?action=showFenleiByPage&pageNow=${pb.pages}">尾页</a>
	</center>
	<p>
	<table align="center">
		<tr align="center">
			<td>没有您想要的分类？您可以点击这里<a href="<%=base %>addFenlei.jsp">添加分类</a></td>
		</tr>
	</table>
	</form>
</body>
</html>