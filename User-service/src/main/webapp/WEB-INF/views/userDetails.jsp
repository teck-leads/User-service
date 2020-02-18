<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DTNA</title>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 15px;
}
</style>
<%@include file="menu.jsp" %> 
</head>
<body>

	<h3>User Details</h3>
	<hr>
	<table>

		<c:choose>

			<c:when test="${empty users}">
				<h4>Users not found</h4>
			</c:when>
			<c:otherwise>
				<tr>

					<th>ID</th>
					<th>NAME</th>
					<th>Join Date</th>
					<th>User Role</th>
					<th>Remove</th>
				</tr>
				<c:forEach items="${users }" var="user">
					<tr>
						<td>${user.id }</td>
						<td>${user.name }</td>
						 <td>${user.joinDate }</td> 
						<td>${user.userRole }</td>
						<td><a href="delete?id=${user.id }">Delete</a></td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	



	</table>
	<pre>




</pre>
</body>
</html>