<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Controllers.*"%>
<%@include file= "VerifyLogin.jsp" %>
<%  String uName = request.getParameter("Username");
	String pWord = request.getParameter("Password");
 	String fName = request.getParameter("FirstName");
  	String lName = request.getParameter("LastName");
   	
    
DataBaseController uc = (DataBaseController) session.getAttribute("uc");
Users users = uc.getUser(uName);
users.setFirstName(fName);
users.setLastName(lName);
users.setPassword(pWord);
uc.editUser(users);
    
    
    response.sendRedirect("StudentMenu.jsp");
    %>