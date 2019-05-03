<%@page language="java"
	import="edu.csbsju.cs.Interface.*, edu.csbsju.cs.Entity.*, edu.csbsju.cs.Controllers.*, java.util.*"%>

<%
	LogOnController uc = (LogOnController) session.getAttribute("uc");
	String name = request.getParameter("uniName");
	AdminInteraction ai = new AdminInteraction();
	DataBaseController dbc = new DataBaseController();
	ArrayList<University> univ = ai.getAllSchoolDetails();
	for (int i = 0; i < univ.size(); i++) {
		if ((dbc.checkSchoolName(name) == true) && (univ.get(i).getName().equals(name)) ){
			ai.deleteSchool(univ.get(i));
		}
	}
	response.sendRedirect("ViewAllUniversities.jsp");
%>