<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>
<%@include file= "VerifyLogin.jsp" %>
<%
	String name = request.getParameter("Username");
    out.println("delete user : " + name);
	String uName = request.getParameter("Username");
   	String sName = request.getParameter("SchoolName");
   
StudentUserInteraction uc = (StudentUserInteraction) session.getAttribute("uc");
Users users = uc.getProfile(uName);
University uni = uc.viewUniversity(sName);
uc.removeSavedSchool(uName, sName);
    
   

response.sendRedirect("Menu.jsp");
%>