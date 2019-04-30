<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*"%>
<%@include file= "AddUniversity_action.jsp" %>

<%
DataBaseController dbc = (DataBaseController)session.getAttribute("dbc");

String uName = request.getParameter("schoolName");
String state = request.getParameter("stateName");
String location = request.getParameter("locationName");
String control = request.getParameter("controlName");
double females = Integer.parseInt(request.getParameter("percentFemale"));
String numStudents = request.getParameter("numOfStudents");
double SATV = request.getParameter("satVerbal");
double SATM = request.getParameter("satMath");
double expenses = request.getParameter("expensesAmount");
String financialAid = request.getParameter("financialAid");
int numApplicants = request.getParameter("numApplicants");
double admitted = request.getParameter("percentAdmitted");
double enrolled = request.getParameter("percentEnrolled");
int academicScale = request.getParameter("academicScale");
int socialScale = request.getParameter("socialScale");
int qOLScale = request.getParameter("qualityOfLife");
ArrayList<String> emphasesName = request.getParameter("emphasesName");

AdminInteraction uc = (AdminInteraction) session.getAttribute("uc");
uc.addUniversity(uName, state, location, control, numStudents, 
		 females, SATV, SATM, expenses, financialAid, 
		 numApplicants, admitted, enrolled, academicScale, socialScale, 
		 qOLScale, emphasesName);
response.sendRedirect("Menu.jsp");

%>
