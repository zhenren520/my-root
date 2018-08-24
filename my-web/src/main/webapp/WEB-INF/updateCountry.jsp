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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="<%=basePath %>countryController/updateCountry.do" method="post">
		<input type="text" name="code" value="${country.code}"><br>
		<input type="text" name="name" value="${country.name}"><br>
		<input type="text" name="region" value="${country.region}"><br>
		<input type="text" name="surfaceArea" value="${country.surfaceArea}"><br>
		<input type="text" name="indepYear" value="${country.indepYear}"><br>
		<input type="submit" value=" 提 交  ">
	</form>

</body>
</html>