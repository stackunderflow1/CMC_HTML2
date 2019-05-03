<%@page language="java" import="edu.csbsju.cs.Controllers.*, edu.csbsju.cs.Entity.*, edu.csbsju.cs.Interface.*"%>

<%


 String uName = request.getParameter("Username");
String pWord = request.getParameter("Password");
LogOnController uc = new LogOnController();
AdminInteraction ac = new AdminInteraction();
DataBaseController dbc = new DataBaseController();


if(dbc.checkUserName(uName) == true && dbc.checkPassword(uName, pWord) == true)
{
	uc.logOn(uName, pWord);
	session.setAttribute("uc", uc);
	Users u = ac.getUser(uName);
	if((u.getType() == 'u') && (u.getStatus() == 'Y'))
	response.sendRedirect("StudentMenu.jsp");
	
	else if((u.getType() == 'a') && (u.getStatus() == 'Y'))
		response.sendRedirect("Menu.jsp");
	
	else
		response.sendRedirect("index.jsp?Error=-3");

}

else if(dbc.checkUserName(uName) == false)
{
	response.sendRedirect("index.jsp?Error=-1");
}
else if(dbc.checkPassword(uName, pWord) == false)
{
	response.sendRedirect("index.jsp?Error=-2");
}
else
{}


%>

