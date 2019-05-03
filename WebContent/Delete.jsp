<%@page language="java" import="edu.csbsju.cs.Interface.*, edu.csbsju.cs.Entity.*, edu.csbsju.cs.Controllers.*"%>

<%
LogOnController uc = (LogOnController) session.getAttribute("uc");
String name = request.getParameter("Username");
    out.println("delete user : " + name);
String uName = request.getParameter("Username");
String pWord = request.getParameter("Password");
 String fName = request.getParameter("FirstName");
  String lName = request.getParameter("LastName");
   String type = request.getParameter("Type");
    String status = request.getParameter("Status");
    
    AdminInteraction ai = new AdminInteraction();
    Users user = ai.getUser(name);
    ai.deleteUser(user);
    
   

response.sendRedirect("ManageUsers.jsp");
%>