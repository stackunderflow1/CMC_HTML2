<html>
<head>

<title>Edit User Form</title>
</head>
<body>
	<br> Edit User form:
	<br>
	<br>

	<%@page language="java"
		import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Controllers.*"%>

	<%
		
		LogOnController uc = (LogOnController) session.getAttribute("uc");
		Users cu = uc.getCurrentUser();
		out.println("Edit user : " + cu.getUsername());
	%>
	<form method="post" action="Edit_action.jsp" name="editUser">
		<br>
		<table style="text-align: left; width: 266px; height: 228px;"
			border="1">
			<tbody>
				<tr>
					<td style="vertical-align: top;">First Name<br>
					</td>
					<td style="vertical-align: top;"><input name="FirstName"
						value="<%out.println(cu.getFirstName());%>"><br></td>
				</tr>
				<tr>
				<tr>
					<td style="vertical-align: top;">Last Name<br>
					</td>
					<td style="vertical-align: top;"><input name="LastName"
						value="<%out.println(cu.getLastName());%>"><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Username<br>
					</td>
					<td style="vertical-align: top;"><input name="Username"
						value="<%out.println(cu.getUsername());%>" readonly></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Password<br>
					</td>
					<td style="vertical-align: top;"><input name="Password"
						value="<%out.println(cu.getPassword());%>"></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Type<br>
					</td>
					<td style="vertical-align: top;"><input name="Type"
						value="<%out.println(cu.getType());%>" readonly></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Status<br>
					</td>
					<td style="vertical-align: top;"><input name="Status"
						value="<%out.println(cu.getStatus());%>"readonly></td>
				</tr>

				<tr>
					<td style="vertical-align: top;"><input value="Edit"
						name="Edit" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td style="vertical-align: top;"><input value="Reset"
						name="Reset" type="reset"></td>
				</tr>
			<form method="post" action="StudentMenu.jsp" name="Back">
    <input name="Back" value="Back" type="submit">
</form> 
			</tbody>
		</table>
		<br>
	</form>
	<br>
</body>
</html>

