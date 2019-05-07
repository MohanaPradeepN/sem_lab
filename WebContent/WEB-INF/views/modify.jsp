<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/views/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>modify</title>
</head>
<body>
<form:form name="userIdForm" method="POST" action="getUser">
		<div align="left">
			<table>
				<tr>
					<td>Select the user Id:</td>
					<td><select name="userId" onchange="this.form.submit();">
							<option value="">--Choose User Id--</option>
							<c:forEach items="${UserIds}" var="UserId">
								<option value='${UserId}'>${UserId}</option>
							</c:forEach>
					</select></td>
				</tr>

			</table>

		</div>
	</form:form>
</body>
</html>