<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>

function fn()
{
	var cn=document.getElementById("country");
	var st=document.getElementById("state");
	
	var htp=new XMLHttpRequest();
	htp.onreadystatechange=function()
	{
		var jsn=JSON.parse(htp.responseText);
		for(var i=0;i<jsn.length;i++)
		{
			var opt=document.createElement("option");
			opt.value=jsn[i].sid;
			opt.text=jsn[i].sname;
			st.options.add(opt);
		}
	}
	
	htp.open("get","2.2.jsp?cn="+cn.value,true);
	htp.send();
}
</script>
</head>
<body>
Country: 
<select id="country" onchange="fn()">
<option>Select</option>
<option>India</option>
<option>USA</option>
</select>
<br/><br/>

State:
<select id="state">
</select>
</body>
</html>