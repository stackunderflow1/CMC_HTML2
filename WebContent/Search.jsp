<%@page language="java"
  import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>
  
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
ArrayList<University> uni = uci.searchAllSchools(uName, state, location, control, numStudents, females,
                                                 SATV, SATM, expenses, financialAid, numApplicants, admitted, enrolled, academicScale, socialScale,
                                                 qOLScale);

%>
  <html>
  <head>
  <title>Search Results</title>
  </head>
  <body>
  <form method="post" action="SearchAct.jsp" name="Back">
  <input name="Back" value="Back" type="submit">
  </form>
  <%
  if (!uni.isEmpty()) {
  %>
    <form name="results">
    <table style="text-align: left; width: 100%;" border="1"
    cellpadding="2" cellspacing="2">
    <tbody>
    <%
    for (int i = 0; i < uni.size(); i++) {
    %>
      <tr>
      <td style="vertical-align: top;">
      <form method="post" action="ViewUniversity1.jsp" name="View">
    <input name="View" value="View" type="submit">
    <input name="Username" value="<%=uc.getCurrentUser().getUsername()%>" type="hidden">
        <input name="SchoolName" value="<%=uni.get(i).getName()%>" type="hidden">
    
</form> 
      </td>
      <td style="vertical-align: top;"><br> <%
      out.println(uni.get(i).getName());
    %>
  </td>
    <td style="vertical-align: top;">
    <form method="post" action="SaveSchool_Action.jsp" name="Save">
    <input name="Save" value="Save" type="submit">
    <input name="Username" value="<%=uc.getCurrentUser().getUsername()%>" type="hidden">
        <input name="SchoolName" value="<%=uni.get(i).getName()%>" type="hidden">
    
</form> 
    </td>
    </tr>
    <%
    
}
%>
  <%
  } else {
  out.println("There are no results that matches your search.");
}
%>
  </tbody>
  </table>
  <br>
  </form>
  </body>
  </html>
  
