<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/views/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>users</title>
</head>
<body>
<form name="showForm" action="start">
		<center>
			<table border="2" width=80% height=100>
				<tr>
					<th>User Id</th>
					<th>User Name</th>
				</tr>
				<c:forEach items="${User}" var="user">
					<tr style="color: blue">
						<td>${user.userId}</td>
						<td>${user.userName}</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="5" style="text-align: right;"><input type="submit" value="Back" /></td>

				</tr>
			</table>
		</center>

	</form>
</body>
</html>