<%@page language="java" import="edu.csbsju.cs.Controllers.*, edu.csbsju.cs.Entity.*, edu.csbsju.cs.Interface.*"%>

<%
LogOnController uc = (LogOnController) session.getAttribute("uc");
Users user = uc.getCurrentUser();

if(user.getType() == 'u')
	uc.logOut();
else 
	uc.adminLogOut();

response.sendRedirect("index.jsp");
	
%>

