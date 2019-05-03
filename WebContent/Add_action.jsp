<%@page language="java"
	import="edu.csbsju.cs.Controllers.*,java.util.*, edu.csbsju.cs.Entity.*, edu.csbsju.cs.Interface.*"%>

<%
	LogOnController uc = (LogOnController) session.getAttribute("uc");
	String uName = request.getParameter("Username");
	String pWord = request.getParameter("Password");
	String fName = request.getParameter("FirstName");
	String lName = request.getParameter("LastName");
	String type = request.getParameter("Type");
	String status = request.getParameter("Status");

	AdminInteraction ai = new AdminInteraction();
	ai.addUser(uName, fName, lName, pWord, type.charAt(0), status.charAt(0));

	response.sendRedirect("Menu.jsp");
%>