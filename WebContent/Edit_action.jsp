<%@page language="java" import="edu.csbsju.cs.Entity.*,java.util.*, edu.csbsju.cs.Controllers.*, edu.csbsju.cs.Interface.*"%>
<%@include file= "VerifyLogin.jsp" %>
<%  String uName = request.getParameter("Username");
	String pWord = request.getParameter("Password");
 	String fName = request.getParameter("FirstName");
  	String lName = request.getParameter("LastName");
   	
    
LogOnController uc = (LogOnController) session.getAttribute("uc");
AdminInteraction ac = new AdminInteraction();
Users users = uc.getCurrentUser();
users.setFirstName(fName);
users.setLastName(lName);
users.setPassword(pWord);
ac.editUser(users.getUsername(), users.getFirstName(), users.getLastName(), users.getPassword(), users.getStatus(), users.getType());
    
    
    response.sendRedirect("StudentMenu.jsp");
    %>