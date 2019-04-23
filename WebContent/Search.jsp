<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>
<%@include file= "VerifyLogin.jsp" %>
<%
String uName = request.getParameter("name");
String state = request.getParameter("state");
String location = request.getParameter("location");
String control = request.getParameter("control");
String females = request.getParameter("females");
String numStudents = request.getParameter("numStudents");
String SATV = request.getParameter("SATV");
String SATM = request.getParameter("SATM");
String expenses = request.getParameter("expenses");
String financialAid = request.getParameter("financialAid");
String numApplicants = request.getParameter("numApplicants");
String admitted = request.getParameter("admitted");
String enrolled = request.getParameter("enrolled");
String academicScale = request.getParameter("academicScale");
String socialScale = request.getParameter("socialScale");
String qOLScale = request.getParameter("qOLScale");

UniversityController uc = (UniversityController) session.getAttribute("uc");
ArrayList<University> uni = uc.searchAllSchools(uName, state, location, control, females, numStudents, SATV, SATM, expenses, financialAid, numApplicants, admitted, enrolled, academicScale, socialScale, qOLScale);
for (int i = 0; i<uni.size(); i++)
{
	uni.get(i).print();
}
response.sendRedirect("Menu.jsp");

%>
