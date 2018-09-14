<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
function fn()
{
	var x=document.getElementById("un");
	var y=document.getElementById("pwd");
	
	var htp=new XMLHttpRequest();
	htp.onreadystatechange=function()
	{
		if(htp.readyState==4)
			{
				alert(htp.responseText);
			}
	}
	htp.open("get","1.2.jsp?un="+x.value+"&pwd="+y.value,true);
	htp.send();
}
</script>
</head>
<body>
<form>
Username:<input type="text" id="un"><br/>

Password:<input type="text" id="pwd"><br/>

<input type="button" onclick="fn()" value="Login"/>

</form>
</body>
</html>