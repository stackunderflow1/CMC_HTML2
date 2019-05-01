
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

LogOnController uc = (LogOnController) session.getAttribute("uc");
UniversityController uci = new UniversityController();
ArrayList<University> uni = uci.searchAllSchools(uName, state, location, control, numStudents, females, SATV, SATM, expenses, financialAid, numApplicants, admitted, enrolled, academicScale, socialScale, qOLScale);
int i;

%>
<html>
<head>
<title>Search Results</title>
</head>
<body>
<form method="post" action="SearchAct.jsp" name="Back">
    <input name="Back" value="Back" type="submit">
</form> 
<%if(uni != null){ %>
<form name="results">
<table style="text-align: left; width: 100%;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<%for(i = 1; i <= uni.size(); i++){%>
<tr>
<td style="vertical-align: top;"><form method="post" action="ViewUniversity.jsp" name="Back">
    <input name="Back" value="Back" type="submit"><br>
</form> 
</td>
<td style="vertical-align: top;"><br>
	<% out.println(uni.get(i-1).getName());%>
</td>
<td style="vertical-align: top;"><input name="saveSchool"
value="Save School" type="submit"><br>
</td>
</tr>
<%} %>
<%}
else
{
	out.println("There are no results that matches your search.");
}

%>
</tbody>
</table>
<br>
</form>
</body>
</html>

