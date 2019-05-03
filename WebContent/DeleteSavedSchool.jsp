<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>

<%
	String name = request.getParameter("Username");
    out.println("delete user : " + name);
	String uName = request.getParameter("Username");
   	String sName = request.getParameter("SchoolName");
   
LogOnController uc = (LogOnController) session.getAttribute("uc");
StudentUserInteraction ai = new StudentUserInteraction();
Users users = ai.getProfile(uName);
University uni = ai.viewUniversity(sName);
ai.removeSavedSchool(uName, sName);
    
   

response.sendRedirect("StudentMenu.jsp");
%>