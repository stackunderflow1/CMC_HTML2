<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>
<% LogOnController uc = (LogOnController) session.getAttribute("uc"); 
	StudentUserInteraction sui = new StudentUserInteraction();
	String s = request.getParameter("saveUni");
	University uni = sui.viewUniversity(s);
	Users user = sui.getProfile(request.getParameter("Username"));
	sui.saveUniversity(user, uni);
	
	response.sendRedirect("ViewSavedSchools.jsp");
	%>
