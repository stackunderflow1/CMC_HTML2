<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>
	<% 
	LogOnController uc = (LogOnController) session.getAttribute("uc");
	AdminInteraction ai = new AdminInteraction();
	String name = request.getParameter("schoolName");
	System.out.println(name);
	ArrayList<University> univ = ai.getAllSchoolDetails();
	University school = ai.viewSchoolDetails(name);
	
	String state = request.getParameter("stateName");
	String location = request.getParameter("locationName");
	String control = request.getParameter("controlName");
	int numStudents = Integer.parseInt(request.getParameter("numOfStudents"));
	double percentF = Double.parseDouble(request.getParameter("percentFemale"));
	double satV = Double.parseDouble(request.getParameter("satVerbal"));
	double satM = Double.parseDouble(request.getParameter("satMath"));
	double expenses = Double.parseDouble(request.getParameter("expensesAmount"));
	double financial = Double.parseDouble(request.getParameter("financialAid"));
	int numApps = Integer.parseInt(request.getParameter("numApplicants"));
	double percentA = Double.parseDouble(request.getParameter("percentAdmitted"));
	double enrolled = Double.parseDouble(request.getParameter("percentEnrolled"));
	int academic = Integer.parseInt(request.getParameter("academicScale"));
	int social = Integer.parseInt(request.getParameter("socialScale"));
	int qol = Integer.parseInt(request.getParameter("qualityOfLife"));
	
	ai.editSchool(school.getName(), state, location, control,numStudents,percentF,satV,satM,expenses,financial,numApps,percentA,enrolled,academic,social,qol);
	response.sendRedirect("Menu.jsp");%>