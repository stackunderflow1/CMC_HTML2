<%@page language="java"
	import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>
<html>
<head>
<%
	LogOnController uc = (LogOnController) session.getAttribute("uc");
	AdminInteraction ai = new AdminInteraction();
	University uni = ai.viewSchoolDetails(request.getParameter("uniName"));
	System.out.println(uni.getName());
%>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>EditUniversity</title>
<style type="text/css"></style>
</head>
<body>

	<big> Edit a university</big>
	<br>
	<form method="post" action="ViewAllUniversities.jsp" name="Back">
		<input name="Back" value="Back" type="submit">
	</form>
	<form name="EditUniversity">
		<table style="text-align: left; width: 458px; height: 480px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;">School<br>
					</td>
					<td style="vertical-align: top;"><input name="schoolName"
						value="<%=uni.getName()%>" readonly><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">State<br>
					</td>
					<td style="vertical-align: top;"><input name="stateName"
						value="<%=uni.getState()%>"></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Location<br>
					</td>
					<td style="vertical-align: top;"><input name="locationName"
						value=<%=uni.getLocation()%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Control<br>
					</td>
					<td style="vertical-align: top;"><input name="controlName"
						value=<%=uni.getControl()%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Number of Students<br>
					</td>
					<td style="vertical-align: top;"><input name="numOfStudents"
						value=<%=uni.getNumStudents()%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">% Female<br>
					</td>
					<td style="vertical-align: top;"><input name="percentFemale"
						value=<%=uni.getFemales()%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">SAT Verbal<br>
					</td>
					<td style="vertical-align: top;"><input name="satVerbal"
						value=<%=uni.getSATV()%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">SAT Math<br>
					</td>
					<td style="vertical-align: top;"><input name="satMath"
						value=<%=uni.getSATM()%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Expenses<br>
					</td>
					<td style="vertical-align: top;"><input name="expensesAmount"
						value=<%=uni.getExpenses()%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">% Financial Aid<br>
					</td>
					<td style="vertical-align: top;"><input name="financialAid"
						value=<%=uni.getFinancialAid()%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Number of Applicants<br>
					</td>
					<td style="vertical-align: top;"><input name="numApplicants"
						value=<%=uni.getNumApplicants()%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">% Admitted<br>
					</td>
					<td style="vertical-align: top;"><input name="percentAdmitted"
						value=<%=uni.getAdmitted()%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">% Enrolled<br>
					</td>
					<td style="vertical-align: top;"><input name="percentEnrolled"
						value=<%=uni.getEnrolled()%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Academic Scale (1-5)<br>
					</td>
					<td style="vertical-align: top;"><input name="academicScale"
						value=<%=uni.getAcademicScale()%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Social Scale (1-5)<br>
					</td>
					<td style="vertical-align: top;"><input name="socialScale"
						value=<%=uni.getSocialScale()%>></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Quality of Life Scale (1-5)<br>
					</td>
					<td style="vertical-align: top;"><input name="qualityOfLife"
						value=<%=uni.getqOLScale()%>></td>
				</tr>
				<%
					ArrayList<String> list = uni.getEmphases();
					for (int i = 0; i < list.size(); i++) {
				%>
				<tr>
					<td style="vertical-align: top;">Emphases<br>
					</td>
					<td style="vertical-align: top;"><input name="emp"
						value=<%=uni.getEmphases().get(i)%> readonly></td>
				</tr>
				<%
					}
				%>
				<%-- <tr>
					<td style="vertical-align: top;">Emphases 2<br>
					</td>
					<td style="vertical-align: top;"><input name="emp2" <%=uni.getEmphases().get(1)%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Emphases 3<br>
					</td>
					<td style="vertical-align: top;"><input name="emp3" <%=uni.getEmphases().get(2)%>>
					</td>
				</tr> --%>
			</tbody>
		</table>
		<br> <input name="editSchool" value="Edit School"
			action="EditUniversity_Action.jsp" type="submit"> <input
			name="cancel" value="Cancel Changes" type="reset">
	</form>
</body>
</html>

