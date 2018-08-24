<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

	<form action="<%=basePath %>countryController/insertCountry.do" method="post">
		<input type="text" name="code"><br>
		<input type="text" name="name"><br>
		<input type="text" name="region"><br>
		<input type="text" name="surfaceArea"><br>
		<input type="text" name="indepYear"><br>
		<input type="submit" value=" 提 交  ">
	</form>


</body>
</html>