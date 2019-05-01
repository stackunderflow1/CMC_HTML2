<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>

	<% AdminInteraction ai = new AdminInteraction();
	String school = request.getParameter("schoolName");
	String state = request.getParameter("stateName");
	String location = request.getParameter("locationName");
	String control = request.getParameter("controlName");
	int numStudents = request.getParameter("numOfStudents");
	double percentF = request.getParameter("percentFemale");
	double satV = request.getParameter("satVerbal");
	double satM = request.getParameter("satMath");
	double expenses = request.getParameter("expensesAmount");
	double financial = request.getParameter("financialAid");
	int numApps = request.getParameter("numApplicants");
	double percentA = request.getParameter("percentAdmitted");
	double enrolled = request.getParameter("percentEnrolled");
	int academic = request.getParameter("academicScale");
	int social = request.getParameter("socialScale");
	int qol = request.getParameter("qualityOfLife");
	ArrayList<String> emp = request.getParameter("emp");
	
	ai.editSchool(school, school, state, location, control,numStudents,percentF,satV,satM,expenses,financial,numApps,percentA,enrolled,academic,social,qol,emp);
	response.sendRedirect("Menu.jsp");%>