<title>View University</title>
<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>

<%
LogOnController uc = (LogOnController) session.getAttribute("uc");
String universityName = request.getParameter("uniName");
StudentUserInteraction si = new StudentUserInteraction();
University sc = si.viewUniversity(universityName);
Users cu = si.getProfile(request.getParameter("Username"));


%>

<form method="post" action="Search.jsp" name="Back">
    <input name="Back" value="Back" type="submit">
</form> 
<tr>
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