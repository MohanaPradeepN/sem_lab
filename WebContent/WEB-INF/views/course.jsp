<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/views/course.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>course register</title>
</head>
<body>
<form:form name="CourseRegister" method="POST" action="register">
		<div align="center">
			<table>
				<tr>
					<td>course Name</td>
					<td><input type="text" name="courseName" /></td>
				</tr>
			
				<tr>
					<td><input type="submit" value="Register" /></td>
					<td><input type="submit" value="Show"
						onclick="document.CourseRegister.action='show'" /></td>
					<td><input type="submit" value="Modify"
						onclick="document.CourseRegister.action='fetch'" /></td>
				</tr>
			</table>
			<div style="color: red">${msg}</div>
		</div>
	</form:form>
</body>
</html>