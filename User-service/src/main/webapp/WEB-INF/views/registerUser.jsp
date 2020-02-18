<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register User</title>

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
<hr>
	<form action="save" method="POST">
		<table>
			<tr>
				<td><input type="text" name="name" placeholder="Enter User Name">

				</td>
			</tr>
			<!-- <tr>
				<td><input type="date" name="joinDate"
					placeholder="Enter Join Date"></td>
			</tr> -->


			<tr>
				<td><input type="text" name="userRole"
					placeholder="Enter User Role"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Add User"></td>
			</tr>
		</table>
	</form>
</body>
</html>