<%@page language="java" import="edu.csbsju.cs.Controllers.*, edu.csbsju.cs.Entity.*, edu.csbsju.cs.Interface.*"%>

<%


 String uName = request.getParameter("Username");
String pWord = request.getParameter("Password");
LogOnController uc = new LogOnController();
StudentUserInteraction si = new StudentUserInteraction();
AdminInteraction ac = new AdminInteraction();
DataBaseController dbc = new DataBaseController();
int returnValue = 1;
uc.logOn(uName, pWord);


if(dbc.checkUserName(uName) == true && dbc.checkPassword(uName, pWord) == true)
{
	session.setAttribute("uc", uc);
	Users u = ac.getUser(uName);
	if(u.getType() == ('u'))
	response.sendRedirect("StudentMenu.jsp");
	
	else if(u.getType() == 'a')
		response.sendRedirect("Menu.jsp");

}

else if(dbc.checkUserName(uName) == false)
{
	response.sendRedirect("index.jsp?Error=-1");
}
else if(dbc.checkPassword(uName, pWord) == false)
{
	response.sendRedirect("index.jsp?Error=-2");
}
else if(dbc.checkStatus(uName) == false)
{
	response.sendRedirect("index.jsp?Error=-3");
}
else
{}


%>

