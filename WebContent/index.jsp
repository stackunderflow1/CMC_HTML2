<html>
<head>

<title>Login Form</title>
</head>
<body>
<% String anyErrors = request.getParameter("Error");
  String newVal = request.getParameter("AnotherParam");
    	if(anyErrors!=null && anyErrors.equals("-1")){
    		out.println("Username not found");
	    }
    	else if(anyErrors!=null && anyErrors.equals("-2")){
    		out.println("Incorrect password");
	    }
    	else if(anyErrors!=null && anyErrors.equals("-3")){
    		out.println("User inactive");
	    }
    	/* else if(anyErrors!=null && anyErrors.equals("-4")){
    		out.println("you must be logged in"); 
	    } */
    	else
    	{
    		out.println("Please enter your info:");
    	}
    	%>
<br>
Login form:<br>
<br>
<form method="post" action="Login_action.jsp" name="Login"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="Username"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password" type="password"> </td>
</tr>

  

<td style="vertical-align: top;"><input value="Log in"
name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
Forgot your password? <a href="mailto:rgraham001@csbsju.edu">Send an email to your system manager and request a new password!</a><br>
</form>
<br>
<% if(request.getParameter("Password") != null)
{
response.sendRedirect("Login_action.jsp"); 
}%>
</body>
</html>