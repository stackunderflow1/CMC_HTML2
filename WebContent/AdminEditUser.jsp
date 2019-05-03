<%@page language="java"
	import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>




<%
	LogOnController uc = (LogOnController)session.getAttribute("uc");
	AdminInteraction ai = new AdminInteraction();
	ArrayList<Users> user = ai.getAllUsers();
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
    out.println("Edit user : " + uc.getCurrentUser());
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
						value=<%request.getParameter("FirstName");%>><br></td>
				</tr>
				<tr>
				<tr>
					<td style="vertical-align: top;">Last Name<br>
					</td>
					<td style="vertical-align: top;"><input name="LastName"
						value=<%request.getParameter("LastName");%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Username<br>
					</td>
					<td style="vertical-align: top;"><input name="Username"
						value=<%request.getParameter("Username");%> readonly></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Password<br>
					</td>
					<td style="vertical-align: top;"><input name="Password"
						value=<%request.getParameter("Password");%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Type<br>
					</td>
					<td style="vertical-align: top;"><input name="Type"
						value=<%request.getParameter("Type").charAt(0);%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Status<br>
					</td>
					<td style="vertical-align: top;"><input name="Status"
						value=<%request.getParameter("Status").charAt(0);%>></td>
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

