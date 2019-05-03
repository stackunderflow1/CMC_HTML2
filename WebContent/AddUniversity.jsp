<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>AddUniversity</title>
<style type="text/css"></style>
</head>
<body>
<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>

<% LogOnController uc = (LogOnController) session.getAttribute("uc");%>
	<big>Add a new university</big>
	<br>
	<form name="AddUniversity">
		<table style="text-align: left; width: 458px; height: 480px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;">School<br>
					</td>
					<td style="vertical-align: top;"><input name="schoolName"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">State<br>
					</td>
					<td style="vertical-align: top;"><input name="stateName">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Location<br>
					</td>
					<td style="vertical-align: top;"><input name="locationName">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Control<br>
					</td>
					<td style="vertical-align: top;"><input name="controlName">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Number of Students<br>
					</td>
					<td style="vertical-align: top;"><input name="numOfStudents">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">% Female<br>
					</td>
					<td style="vertical-align: top;"><input name="percentFemale">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">SAT Verbal<br>
					</td>
					<td style="vertical-align: top;"><input name="satVerbal">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">SAT Math<br>
					</td>
					<td style="vertical-align: top;"><input name="satMath">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Expenses<br>
					</td>
					<td style="vertical-align: top;"><input name="expensesAmount">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">% Financial Aid<br>
					</td>
					<td style="vertical-align: top;"><input name="financialAid">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Number of Applicants<br>
					</td>
					<td style="vertical-align: top;"><input name="numApplicants">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">% Admitted<br>
					</td>
					<td style="vertical-align: top;"><input name="percentAdmitted">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">% Enrolled<br>
					</td>
					<td style="vertical-align: top;"><input name="percentEnrolled">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Academic Scale (1-5)<br>
					</td>
					<td style="vertical-align: top;"><input name="academicScale">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Social Scale (1-5)<br>
					</td>
					<td style="vertical-align: top;"><input name="socialScale">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Quality of Life Scale (1-5)<br>
					</td>
					<td style="vertical-align: top;"><input name="qualityOfLife">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Emphases 1<br>
					</td>
					<td style="vertical-align: top;"><input name="emp1">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Emphases 2<br>
					</td>
					<td style="vertical-align: top;"><input name="emp2">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Emphases 3<br>
					</td>
					<td style="vertical-align: top;"><input name="emp3">
					</td>
				</tr>
			</tbody>
		</table>
		<br> <input name="addSchool" value="Add School" type="submit"><input
			name="cancleChanges" value="Cancle Changes" type="submit"><br>
	</form>
</body>
</html>

