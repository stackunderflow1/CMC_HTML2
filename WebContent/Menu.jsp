<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title></title>
</head>
<body>
<%@page language="java" import="edu.csbsju.cs.Interface.*, edu.csbsju.cs.Entity.*, edu.csbsju.cs.Controllers.*"%>

<%LogOnController uc = (LogOnController) session.getAttribute("uc"); 
Users u = uc.getCurrentUser();
%>
Welcome Admin: <%out.println(u.getUsername()); %><br>
<br>
<form method="post" action="AdminEditUser.jsp" name="Edit">
    <input name="AdminEditUser" value="Admin Edit User" type="submit"><br>
    <input name="Username" value="<%=u.getUsername() %>" type="hidden">
</form>
<a href="ViewAllUniversities.jsp">Manage Universities</a><br>
<a href="ManageUsers.jsp"><span style="text-decoration: underline;">Manage Users</span></a><br>
<br>
<br>
<br>
<form method="post" action="LogOut_Action.jsp" name="Log Out">
<input value="Log Out" name="Log Out" type="submit">
</form>
</body>
</html>

