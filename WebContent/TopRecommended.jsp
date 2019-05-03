<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Interface.*, edu.csbsju.cs.Controllers.*"%>

<%
String uName = request.getParameter("name");

LogOnController uc = (LogOnController) session.getAttribute("uc");
UniversityController univ = new UniversityController();
univ.topRecommended(uName);

response.sendRedirect("Menu.jsp");

%>