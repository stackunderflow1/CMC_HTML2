<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Controllers.*, edu.csbsju.cs.Interface.*"%>


<%
LogOnController uc = (LogOnController)session.getAttribute("uc");

String uName = request.getParameter("schoolName");
String state = request.getParameter("stateName");
String location = request.getParameter("locationName");
String control = request.getParameter("controlName");
double females = Double.parseDouble(request.getParameter("percentFemale"));
int numStudents = Integer.parseInt(request.getParameter("numOfStudents"));
double SATV = Double.parseDouble(request.getParameter("satVerbal"));
double SATM = Double.parseDouble(request.getParameter("satMath"));
double expenses = Double.parseDouble(request.getParameter("expensesAmount"));
double financialAid = Double.parseDouble(request.getParameter("financialAid"));
int numApplicants = Integer.parseInt(request.getParameter("numApplicants"));
double admitted = Double.parseDouble(request.getParameter("percentAdmitted"));
double enrolled = Double.parseDouble(request.getParameter("percentEnrolled"));
int academicScale = Integer.parseInt(request.getParameter("academicScale"));
int socialScale = Integer.parseInt(request.getParameter("socialScale"));
int qOLScale = Integer.parseInt(request.getParameter("qualityOfLife"));
String emp1 = request.getParameter("emp1");
String emp2 = request.getParameter("emp2");
String emp3 = request.getParameter("emp3");
ArrayList<String> emphasesName = new ArrayList<String>();
emphasesName.add(emp1);
emphasesName.add(emp2);
emphasesName.add(emp3);

AdminInteraction ai = new AdminInteraction();
ai.addUniversity(uName, state, location, control, numStudents, 
		 females, SATV, SATM, expenses, financialAid, 
		 numApplicants, admitted, enrolled, academicScale, socialScale, 
		 qOLScale, emphasesName);
response.sendRedirect("Menu.jsp");

%>
