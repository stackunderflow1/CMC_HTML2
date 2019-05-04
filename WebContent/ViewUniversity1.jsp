<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*,  edu.csbsju.cs.Controllers.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View All Universities</title>
</head>
<body>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;">
</td>

</tr>
<%
	LogOnController uc = (LogOnController) session.getAttribute("uc");
	AdminInteraction si = new AdminInteraction();
	StudentUserInteraction studentInt = new StudentUserInteraction();
	Users cu = uc.getCurrentUser();
	ArrayList<University> schools = si.getAllSchoolDetails();
	University sc = null;
	String name = request.getParameter("SchoolName");
	for(int i = 0; i< schools.size(); i++)
	{
		if(schools.get(i).getName().toLowerCase().indexOf(name.toLowerCase()) >= 0)
		{
			sc = si.viewSchoolDetails(name); 
		}
	}
	
	//out.println(name);
	
	%>

<tr>
<td style="vertical-align: top;">
<form method="post" action="SaveSchool_Action.jsp" name="Save">
    <input name="Save" value="Save" type="submit">
    <input name="Username" value=<%=cu.getUsername() %> type="hidden">
        <input name="SchoolName" value="<%=sc.getName()%>" type="hidden">
    
</form> 
</td>

<td style="vertical-align: top;"><%out.println(sc.getName()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getState()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getLocation()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getControl()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getNumStudents()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getFemales()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getSATV()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getSATM()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getExpenses()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getFinancialAid()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getNumApplicants()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getAdmitted()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getEnrolled()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getAcademicScale()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getSocialScale()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getqOLScale()); %>
</td>
<td style="vertical-align: top;"><%out.println(sc.getEmphases()); %>
</td>
<form method="post" action="Search.jsp" name="Back">
    <input name="Back" value="Back" type="submit">
</form> 
</tr>

</body>
</html>