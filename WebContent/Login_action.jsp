<%@page language="java" import="edu.csbsju.cs.Controllers.*"%>

<%


 String uName = request.getParameter("Username");
String pWord = request.getParameter("Password");
LogOnController uc = new LogOnController();
int returnValue = 1;
uc.logOn(uName, pWord);


if(returnValue == 0)
{
	session.setAttribute("uc", uc);
	response.sendRedirect("Menu.jsp");
}

else if(returnValue == -1)
{
	response.sendRedirect("index.jsp?Error=-1");
}
else if(returnValue == -2)
{
	response.sendRedirect("index.jsp?Error=-2");
}
else if(returnValue == -3)
{
	response.sendRedirect("index.jsp?Error=-3");
}
else
{}


%>

