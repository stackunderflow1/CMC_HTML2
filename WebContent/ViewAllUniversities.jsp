<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>

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

<td colspan="8" rowspan="1" style="vertical-align: top;"><a
href="AddUniversity.jsp">ADD A UNIVERSITY</a>
</td>

</tr>
<form method="post" action="Menu.jsp" name="Back">
    <input name="Back" value="Back" type="submit">
</form> 
<%
	
    out.println("List of All Universities");

	LogOnController uc = (LogOnController) session.getAttribute("uc");
	AdminInteraction ai = new AdminInteraction();
	ArrayList <University> s = ai.getAllSchoolDetails();
	 for(int i = 0; i < s.size(); i++)
	 {
		University sc = s.get(i);%>

<tr>
<td style="vertical-align: top;">
<form method="post" action="DeleteUniversity.jsp" name="Delete">
    <input name="Delete" value="Delete" type="submit">
    <input name="Username" value=<%=uc.getCurrentUser()%> type="hidden">
    <input name="uniName" value=<%=sc.getName()%> type="hidden">
 </form> 
</td>

<td style="vertical-align: top;"><%out.println(sc.getName());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getState());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getLocation());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getControl());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getNumStudents());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getFemales());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getSATV());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getSATM());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getExpenses());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getFinancialAid());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getNumApplicants());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getAdmitted());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getEnrolled());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getAcademicScale());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getSocialScale());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getqOLScale());%>
</td>
<td style="vertical-align: top;"><%out.println(sc.getEmphases());%>
</td>
<td style="vertical-align: top;">
<form method="post" action="EditUniversity.jsp" name="Edit">
    <input name="Edit" value="Edit" type="submit">
    <input name="Username" value=<%=uc.getCurrentUser()%> type="hidden">
     <input name="uniName" value="<%=sc.getName() %>" type="hidden"> 
</form>
</td>
</tr>
<%} %>



</body>
</html>