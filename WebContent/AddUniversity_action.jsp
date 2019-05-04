<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Controllers.*, edu.csbsju.cs.Interface.*"%>


<%
LogOnController uc = (LogOnController)session.getAttribute("uc");

String uName = request.getParameter("schoolName");
String state = request.getParameter("stateName");
String location = request.getParameter("locationName");
String control = request.getParameter("controlName");
String females = request.getParameter("percentFemale");
String numStudents = request.getParameter("numOfStudents");
String SATV = request.getParameter("satVerbal");
String SATM = request.getParameter("satMath");
String expenses = request.getParameter("expensesAmount");
String financialAid = request.getParameter("financialAid");
String numApplicants = request.getParameter("numApplicants");
String admitted = request.getParameter("percentAdmitted");
String enrolled = request.getParameter("percentEnrolled");
String academicScale = request.getParameter("academicScale");
String socialScale = request.getParameter("socialScale");
String qOLScale = request.getParameter("qualityOfLife");
String emp1 = request.getParameter("emp1");
String emp2 = request.getParameter("emp2");
String emp3 = request.getParameter("emp3");
ArrayList<String> emphasesName = new ArrayList<String>();


if(state== null || state =="")
	state = "-1";
if(location== null || location =="")
	location = "-1";
if(control== null || control =="")
	control = "-1";
if(females== null || females =="")
	females = "-1";
if(numStudents== null || numStudents =="")
	numStudents = "-1";
if(SATV== null || SATV =="")
	SATV = "-1";
if(SATM== null || SATM =="")
	SATM = "-1";
if(expenses== null || expenses =="")
	expenses = "-1";
if(financialAid== null || financialAid =="")
	financialAid = "-1";
if(numApplicants== null || numApplicants =="")
	numApplicants = "-1";
if(admitted== null || admitted =="")
	admitted = "-1";
if(enrolled== null || enrolled =="")
	enrolled = "-1";
if(academicScale== null || academicScale =="")
	academicScale = "-1";
if(socialScale== null || socialScale =="")
	socialScale = "-1";
if(qOLScale== null || qOLScale =="")
	qOLScale = "-1";
if(emp1 == null || emp1 =="")
	emp1 = "";
if(emp2 == null || emp2 == "")
	emp2 = "";
if(emp3==null || emp3 == "")
	emp3 = "";

emphasesName.add(emp1);
emphasesName.add(emp2);
emphasesName.add(emp3);

AdminInteraction ai = new AdminInteraction();
System.out.println(uName + state + location + control + numStudents + females + SATV + SATM + expenses + financialAid + numApplicants + 
		admitted + enrolled + academicScale + socialScale + qOLScale);
 ai.addUniversity2(uName, state, location, control, Integer.parseInt(numStudents), 
		Double.parseDouble(females), Double.parseDouble(SATV), Double.parseDouble(SATM), Double.parseDouble(expenses), Double.parseDouble(financialAid), 
		Integer.parseInt(numApplicants), Double.parseDouble(admitted), Double.parseDouble(enrolled), Integer.parseInt(academicScale), Integer.parseInt(socialScale), 
		Integer.parseInt(qOLScale));
response.sendRedirect("ViewAllUniversities.jsp"); 

%>
