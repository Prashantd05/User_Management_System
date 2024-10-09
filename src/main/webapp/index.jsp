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
		<h2>User Management System</h2>
		<hr color="red">
		<form action="/users" method="get">
			<table>
				<tr>
					<td>ID:</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>First Name:</td>
					<td><input type="text" name="firstName"></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><input type="text" name="lastName"></td>
				</tr>
				<tr>
					<td>Phone:</td>
					<td><input type="text" name="phoneNumber"></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><input type="textarea" name="address"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" name="b1"
						value="Add"> <input type="submit" name="b1" value="Delete">
						<input type="submit" name="b1" value="Display"></td>

				</tr>
			</table>
		</form>
		<font color="red">
		${msg}
		${msg1}
		</font>
	</center>
</body>
</html>