<%
	String s1=request.getParameter("un");
	String s2=request.getParameter("pwd");
	if(s1.equals("admin") && s2.equals("admin"))
	{
		out.println("Welcome "+s1);
	}
	else
	{
		out.println("Incorrect username or password!");
	}
%>