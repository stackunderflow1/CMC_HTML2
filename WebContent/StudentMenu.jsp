<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title></title>
</head>
<body>
<%@page language="java" import="edu.csbsju.cs.Interface.*, edu.csbsju.cs.Entity.*"%>
<%@include file= "VerifyLogin.jsp" %>
<%LogOnController uc = (LogOnController) session.getAttribute("uc"); 
Users u = uc.getCurrentUser();
%>

Welcome User: <%out.println(u.getUsername()); %><br>
<br>
<a href="Edit.jsp">Manage profile</a><br>
<a href="ViewSavedSchool.jsp">Manage saved schools</a><br>
<a href="SearchAct.jsp">Search for schools</a><br>
</body>
</html>

