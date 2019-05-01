<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>
<% StudentUserInteraction sui = new StudentUserInteraction();
	University uni = sui.viewUniversity(request.getParameter("schoolName"));
	Users user = sui.getProfile(request.getParameter("username"));
	sui.saveUniversity(user, usi);%>
