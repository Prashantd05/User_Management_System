<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
		<h2>User Details</h2>
		<hr>
		<form action="/users" method="get">
			<table>
				<tr>
					<td>ID:</td>
					<td><input type="text" name="id" value="${user.id}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>First Name:</td>
					<td><input type="text" name="firstName" value="${user.firstName}"></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><input type="text" name="lastName" value="${user.lastName}"></td>
				</tr>
				<tr>
					<td>Phone:</td>
					<td><input type="text" name="phoneNumber" value="${user.phoneNumber}"></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="text" name="email" value="${user.email}"></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><input type="textarea" name="address" value="${user.address}"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" name="b1"
						value="Update"></td>

				</tr>
			</table>
		</form>
	</center>
</body>
</html>