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
<script type="text/javascript">
	function submitCode() {

		if (window.confirm('你确定要删除吗？')) {
			var mainFrame = document.getElementById("mainFrame").contentWindow;
			var codeCheckbox = mainFrame.document
					.getElementsByName("countryCode");
			var submitCode = "";
			
			for ( var i = 0; i < codeCheckbox.length; i++) {
				var chechbox = codeCheckbox[i];
				if (chechbox.checked) {
					submitCode += chechbox.value + ",";
				}
			}
			
			if(submitCode.length == 0){
				return false;
			}
			mainFrame.document.getElementById("countryid").value = submitCode;
			mainFrame.document.getElementById("subForm").submit();
			return true;
		} else {
			//alert("取消");
			return false;
		}
	}
</script>
</head>
<body>
	<table width="100%" height="100%" border="1">
		<tr>
			<td colspan="2"><img src="img/banner.jpg" width="500"
				height="109" alt="banner"></td>
		</tr>
		<tr>
			<td width="17%">
				<table width="100%" border="0">
					<tr>
						<td><a target="mainFrame" height="100%"
							href="<%=basePath%>countryController/addCountryPage.do">addCountry</a>
							<p>
								<input type="button" value=" 删 除 " onclick="submitCode()"></td>
					</tr>
				</table>

			</td>
			<td width="83%"><iframe name="mainFrame" id="mainFrame"
					width="100%" src="<%=basePath%>countryController/getAllCountry.do"></iframe></td>
		</tr>
	</table>

</body>
</html>