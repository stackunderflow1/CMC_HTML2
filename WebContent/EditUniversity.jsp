<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%LogOnController dbc = (LogOnController) session.getAttribute("uc");
AdminInteraction ai = new AdminInteraction();
  University uni = ai.viewSchoolDetails(request.getParameter("schoolName"));%>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>EditUniversity</title>
<style type="text/css"></style>
</head>
<body>
	Edit
	<big> a university</big>
	<br>
	<form name="EditUniversity">
		<table style="text-align: left; width: 458px; height: 480px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;">School<br>
					</td>
					<td style="vertical-align: top;"><input name="schoolName" <%=uni.getName()%> readonly><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">State<br>
					</td>
					<td style="vertical-align: top;"><input name="stateName" <%=uni.getState()%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Location<br>
					</td>
					<td style="vertical-align: top;"><input name="locationName" <%=uni.getLocation()%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Control<br>
					</td>
					<td style="vertical-align: top;"><input name="controlName" <%=uni.getControl()%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Number of Students<br>
					</td>
					<td style="vertical-align: top;"><input name="numOfStudents" <%=uni.getNumStudents()%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">% Female<br>
					</td>
					<td style="vertical-align: top;"><input name="percentFemale" <%=uni.getFemales()%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">SAT Verbal<br>
					</td>
					<td style="vertical-align: top;"><input name="satVerbal" <%=uni.getSATV()%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">SAT Math<br>
					</td>
					<td style="vertical-align: top;"><input name="satMath" <%=uni.getSATM()%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Expenses<br>
					</td>
					<td style="vertical-align: top;"><input name="expensesAmount" <%=uni.getExpenses()%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">% Financial Aid<br>
					</td>
					<td style="vertical-align: top;"><input name="financialAid" <%=uni.getFinancialAid()%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Number of Applicants<br>
					</td>
					<td style="vertical-align: top;"><input name="numApplicants" <%=uni.getNumApplicants()%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">% Admitted<br>
					</td>
					<td style="vertical-align: top;"><input name="percentAdmitted" <%=uni.getAdmitted()%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">% Enrolled<br>
					</td>
					<td style="vertical-align: top;"><input name="percentEnrolled" <%=uni.getEnrolled()%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Academic Scale (1-5)<br>
					</td>
					<td style="vertical-align: top;"><input name="academicScale" <%=uni.getAcademicScale()%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Social Scale (1-5)<br>
					</td>
					<td style="vertical-align: top;"><input name="socialScale" <%=uni.getSocialScale()%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Quality of Life Scale (1-5)<br>
					</td>
					<td style="vertical-align: top;"><input name="qualityOfLife" <%=uni.getqOLScale()%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Emphases 1<br>
					</td>
					<td style="vertical-align: top;"><input name="emp1" <%=uni.getEmphases().get(0)%>>
					</td>
				</tr>
				<tr>
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
				</tr>
			</tbody>
		</table>
		<br> <input name="editSchool" value="Edit School" type="submit"><input
			name="cancelChanges" value="Cancel Changes" type="submit"><br>
	</form>
</body>
</html>

