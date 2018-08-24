<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function submitCode() { 
	var codeCheckbox = document.getElementsByName("countryCode");
	var submitCode="";
	for(var i = 0; i < codeCheckbox.length; i++){
		var chechbox = codeCheckbox[i];
		if(chechbox.checked){
			submitCode += chechbox.value + ",";
		}
	}
	document.getElementById("countryid").value = submitCode;
	document.getElementById("subForm").submit();
}
</script>
<body>

	<a href="<%=basePath%>countryController/addCountryPage.do">addCountry</a>
	<br>
	<input type="button" value=" 删 除 " onclick="submitCode()">
	<br>
<form action="<%=basePath%>countryController/deleteCountryById.do" id="subForm">
<input type="hidden" name="countryid" id="countryid">
	<table border="1">
		<tr>
			<td></td>
			<td>code</td>
			<td>name</td>
			<td>continent</td>
			<td>surfaceArea</td>
			<td>population</td>
			<td>lifeExpectancy</td>
			<td>gNP</td>
			<td>localName</td>
		</tr>
		<c:forEach items="${list}" var="item">
			<tr>
				<td><input name="countryCode" value="${item.code}" type="checkbox"></td>
				<td><a href="<%=basePath%>countryController/findById.do?countryid=${item.code}">${item.code}</a></td>
				<td>${item.name}</td>
				<td>${item.continent}</td>
				<td>${item.surfaceArea}</td>
				<td>${item.population}</td>
				<td>${item.lifeExpectancy}</td>
				<td>${item.gNP}</td>
				<td>${item.localName}</td>
			</tr>
		</c:forEach>
	</table>
</form>
</body>
</html>