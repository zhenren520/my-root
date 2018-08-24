<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
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
<td>${item.code}</td>
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

</body>
</html>