<title>View University</title>
<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>

<%
	String[] values = request.getParameterValues("Universities");
	String universityName = request.getParameter("uniName");
	LogOnController uc = (LogOnController) session.getAttribute("uc");
	StudentUserInteraction studentInt = new StudentUserInteraction();
	University u = studentInt.viewUniversity(universityName);
	Users student = studentInt.getProfile(request.getParameter("Username"));
	ArrayList<SavedSchools> savedUniversities = studentInt.viewAllSavedUniversitys(student.getUsername());

	/* if (!savedUniversities.contains(u)) { */
%>
<%-- <form method="post" action="SaveSchool_action.jsp"
	name="SaveUniversity">
	<input name="Save" value="Save" type="submit" class="buttonstyle">
	<input name="University" value='<%=u.getName()%>' type="hidden">
	<input name="FromWhere" value="1" type="hidden">
	<%
		for (int i = 0; i < values.length; i++) {
	%>
	<input name="Universities" value='<%=values[i]%>' type="hidden">
	<%
		}
	%>

</form>
<%
	} else {
		out.print("Saved");
	}
%> --%>
<table style="text-align: left; width: 700px; height: 228px;" border="1">
	<tbody>
		<tr>
			<td style="vertical-align: top;">UNIVERSITY<br>
			</td>
			<td style="vertical-align: top;"><input name="University"
				value='<%=u.getName()%>' readonly style="width: 320px;"><br>
			</td>
		</tr>
		<tr>
		<tr>
			<td style="vertical-align: top;">STATE<br>
			</td>
			<td style="vertical-align: top;"><input name="State"
				value='<%=u.getState()%>' readonly><br></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">LOCATION<br>
			</td>
			<td style="vertical-align: top;"><input name="Location"
				value=<%=u.getLocation()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">CONTROL<br>
			</td>
			<td style="vertical-align: top;"><input name="Control"
				value=<%=u.getControl()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">NUMBER OF STUDENTS<br>
			</td>
			<td style="vertical-align: top;"><input name="NumStudents"
				value=<%=u.getNumStudents()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">% FEMALE<br>
			</td>
			<td style="vertical-align: top;"><input name="PercentFemale"
				value=<%=u.getFemales()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">SAT VERBAL<br>
			</td>
			<td style="vertical-align: top;"><input name="SATVerbal"
				value=<%=u.getSATV()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">SAT MATH<br>
			</td>
			<td style="vertical-align: top;"><input name="SATMath"
				value=<%=u.getSATM()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">EXPENSES<br>
			</td>
			<td style="vertical-align: top;"><input name="Expenses"
				value=<%=u.getExpenses()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">% FINANCIAL AID<br>
			</td>
			<td style="vertical-align: top;"><input
				name="PercentFinancialAid" value=<%=u.getFinancialAid()%>
				readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">NUMBER OF APPLICANTS<br>
			</td>
			<td style="vertical-align: top;"><input name="NumApplicants"
				value=<%=u.getNumApplicants()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">% ADMITTED<br>
			</td>
			<td style="vertical-align: top;"><input name="PercentAdmitted"
				value=<%=u.getAdmitted()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">% ENROLLED<br>
			</td>
			<td style="vertical-align: top;"><input name="PercentEnrolled"
				value=<%=u.getEnrolled()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">ACADEMIC SCALE (1-5)<br>
			</td>
			<td style="vertical-align: top;"><input name="AcademicScale"
				value=<%=u.getAcademicScale()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">SOCIAL SCALE (1-5)<br>
			</td>
			<td style="vertical-align: top;"><input name="SocialScale"
				value=<%=u.getSocialScale()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">QUALITY OF LIFE SCALE (1-5)<br>
			</td>
			<td style="vertical-align: top;"><input
				name="QualityOfLifeScale" value=<%=u.getqOLScale()%>
				readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">EMPHASES<br>
			</td>
			<td style="vertical-align: top;">
				<%
					ArrayList<String> emphases = u.getEmphases();
					for (String emphasis : emphases) {
				%> <input value='<%=emphasis%>' readonly> <br> <%
 	}
 %>
			</td>
		</tr>
	</tbody>
</table>
PLEASE TAKE A LOOK AT THESE SIMILAR SCHOOLS
<br>

<%
	ArrayList<University> recommendedUniversities = studentInt.viewRecommendedUniversities(u.getName());
	for (University uni : recommendedUniversities) {
%>
<%-- <%
	if (!savedUniversities.contains(uni)) {
%>
<form method="post" action="SaveUniversity_action.jsp"
	name="SaveUniversity">
	<input name="Save" value="Save" type="submit" class="buttonstyle">
	<input name="University" value='<%=uni.getName()%>' type="hidden">
	<input name="FromWhere" value="1" type="hidden"> <input
		name="StartFrom" value='<%=u.getName()%>' type="hidden">
	<%
		for (int i = 0; i < values.length; i++) {
	%>
	<input name="Universities" value='<%=values[i]%>' type="hidden">
	<%
		}
	%>

</form>
<%
	} else {
			out.print("Saved");
		}
%> --%>
<table style="text-align: left; width: 700px; height: 228px;" border="1">
	<tbody>
		<tr>
			<td style="vertical-align: top;">UNIVERSITY<br>
			</td>
			<td style="vertical-align: top;"><input name="University"
				value='<%=uni.getName()%>' readonly style="width: 320px;"><br>
			</td>
		</tr>
		<tr>
		<tr>
			<td style="vertical-align: top;">STATE<br>
			</td>
			<td style="vertical-align: top;"><input name="State"
				value='<%=uni.getState()%>' readonly><br></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">LOCATION<br>
			</td>
			<td style="vertical-align: top;"><input name="Location"
				value=<%=uni.getLocation()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">CONTROL<br>
			</td>
			<td style="vertical-align: top;"><input name="Control"
				value=<%=uni.getControl()%> readonly></td>
		</tr>
		</tbody>
</table>
		<tr>
			<td style="vertical-align: top;">NUMBER OF STUDENTS<br>
			</td>
			<td style="vertical-align: top;"><input name="NumStudents"
				value=<%=uni.getNumStudents()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">% FEMALE<br>
			</td>
			<td style="vertical-align: top;"><input name="PercentFemale"
				value=<%=uni.getFemales()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">SAT VERBAL<br>
			</td>
			<td style="vertical-align: top;"><input name="SATVerbal"
				value=<%=uni.getSATV()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">SAT MATH<br>
			</td>
			<td style="vertical-align: top;"><input name="SATMath"
				value=<%=uni.getSATM()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">EXPENSES<br>
			</td>
			<td style="vertical-align: top;"><input name="Expenses"
				value=<%=uni.getExpenses()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">% FINANCIAL AID<br>
			</td>
			<td style="vertical-align: top;"><input
				name="PercentFinancialAid" value=<%=uni.getFinancialAid()%>
				readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">NUMBER OF APPLICANTS<br>
			</td>
			<td style="vertical-align: top;"><input name="NumApplicants"
				value=<%=uni.getNumApplicants()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">% ADMITTED<br>
			</td>
			<td style="vertical-align: top;"><input name="PercentAdmitted"
				value=<%=uni.getAdmitted()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">% ENROLLED<br>
			</td>
			<td style="vertical-align: top;"><input name="PercentEnrolled"
				value=<%=uni.getEnrolled()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">ACADEMIC SCALE (1-5)<br>
			</td>
			<td style="vertical-align: top;"><input name="AcademicScale"
				value=<%=uni.getAcademicScale()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">SOCIAL SCALE (1-5)<br>
			</td>
			<td style="vertical-align: top;"><input name="SocialScale"
				value=<%=uni.getSocialScale()%> readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">QUALITY OF LIFE SCALE (1-5)<br>
			</td>
			<td style="vertical-align: top;"><input
				name="QualityOfLifeScale" value=<%=uni.getqOLScale()%>
				readonly></td>
		</tr>
		<tr>
			<td style="vertical-align: top;">EMPHASES<br>
			</td>
			<td style="vertical-align: top;">
				<% 
emphases = uni.getEmphases();
for(String emphasis: emphases){
%> <input value=<%=emphasis%> readonly> <br> <%} %>
			</td>
		</tr>
	</tbody>
</table>
<%}
 %>
<form method="post" action="ViewMatchedResults.jsp" name="ViewResults">
	<input name="Return" value="Return to Search Results" type="submit"
		class="buttonstyle">
	<%for(int i = 0; i < values.length; i++) { %>
	<input name="Universities" value='<%=values[i] %>' type="hidden">
	<% } %>
</form>