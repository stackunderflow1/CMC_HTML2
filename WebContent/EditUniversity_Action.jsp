<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>

	<% AdminInteraction ai = new AdminInteraction();
	University school = ai.viewSchoolDetails(request.getParameter("schoolName"));
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
	String emp1 = request.getParameter("emp1");
	String emp2 = request.getParameter("emp2");
	String emp3 = request.getParameter("emp3");
	ArrayList<String> emp = new ArrayList<String>();
	emp.add(emp1);
	emp.add(emp2);
	emp.add(emp3);
	
	
	ai.editSchool(school.getName(), state, location, control,numStudents,percentF,satV,satM,expenses,financial,numApps,percentA,enrolled,academic,social,qol,emp);
	response.sendRedirect("Menu.jsp");%>