<%@page language="java" import="edu.csbsju.cs.Controllers.*,java.util.*"%>
<%LogOnController uc1 = (LogOnController) session.getAttribute("uc");
if(uc1 == null || uc1.isLoggedOn() == false)
{
	response.sendRedirect("index.jsp?Error=-4");
	return;
}
%>