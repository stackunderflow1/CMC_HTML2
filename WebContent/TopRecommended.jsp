<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>
<%@include file= "VerifyLogin.jsp" %>
<%
String uName = request.getParameter("name");

UniversityController uc = (UniversityController) session.getAttribute("uc");
uc.topRecommended(uName);

response.sendRedirect("Menu.jsp");

%>