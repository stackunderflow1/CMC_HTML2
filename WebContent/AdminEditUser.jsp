<%@page language="java"
	import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>




<%
	LogOnController uc = (LogOnController)session.getAttribute("uc");
	AdminInteraction ai = new AdminInteraction();
	ArrayList<Users> user = ai.getAllUsers();
	String us = request.getParameter("Username");
	Users u = ai.getUser(us);
	
	 %>
<html>
<head>

<title>Edit User Form</title>
</head>
<body>
	<br> Edit User form:
	<br>
	<br>

	<%
    out.println("Edit user : " + u.getUsername());
%>
	<form method="post" action="AdminEditUser_Action.jsp" name="editUser">
		<br>
		<table style="text-align: left; width: 266px; height: 228px;"
			border="1">
			<tbody>
				<tr>
					<td style="vertical-align: top;">First Name<br>
					</td>
					<td style="vertical-align: top;"><input name="FirstName"
						value=<%out.println(u.getFirstName());%>><br></td>
				</tr>
				<tr>
				<tr>
					<td style="vertical-align: top;">Last Name<br>
					</td>
					<td style="vertical-align: top;"><input name="LastName"
						value=<%out.println(u.getLastName());%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Username<br>
					</td>
					<td style="vertical-align: top;"><input name="Username"
						value=<%out.println(u.getUsername());%> readonly></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Password<br>
					</td>
					<td style="vertical-align: top;"><input name="Password"
						value=<%out.println(u.getPassword());%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Type<br>
					</td>
					<td style="vertical-align: top;"><input name="Type"
						value=<%out.println(u.getType());%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Status<br>
					</td>
					<td style="vertical-align: top;"><input name="Status"
						value=<%out.println(u.getStatus());%>></td>
				</tr>

				<tr>
					<td style="vertical-align: top;"><input value="Edit"
						name="Edit" type="submit" href="Menu.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td style="vertical-align: top;"><input value="Reset"
						name="Reset" type="reset"></td>
				</tr>
			</tbody>
		</table>
		<br>
	</form>
	<br>
</body>
</html>

