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
<a href="AdminEditUser.jsp">Manage User Profile</a><br>
<a href="ViewAllUniversities1.jsp">Manage Universities</a><br>
<a href="ManageUsers.jsp"><span style="text-decoration: underline;">Manage
Users</span></a><br>
</body>
</html>

