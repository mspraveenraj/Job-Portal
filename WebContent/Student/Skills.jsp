<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../_css/mainContent.css" rel="stylesheet" type="text/css" />
</head>
<body>
<jsp:include page="Header.jsp" />
Prefered Skill:
<select name="preferedskill">
<option>C</option>
<option>C++</option>
<option>Java</option>
<option>C#</option>
<option>Javascript</option>
<option>Python</option>
<option>Php</option>
<option>Big Data</option>
<option>Networks</option>
</select>
<br/><br/><br/>
Optional Skill 1:
<select name="optionalskill1">
<option>C</option>
<option>C++</option>
<option>Java</option>
<option>C#</option>
<option>Javascript</option>
<option>Python</option>
<option>Php</option>
<option>Big Data</option>
<option>Networks</option>
</select>
<br/><br/><br/>
Optional Skill 2:
<select name="optionalskill2">
<option>C</option>
<option>C++</option>
<option>Java</option>
<option>C#</option>
<option>Javascript</option>
<option>Python</option>
<option>Php</option>
<option>Big Data</option>
<option>Networks</option>
</select>
<br/><br/><br/>
<input type="button" value="Update" onclick="alert('Updated Successfully')">
<pre>












</pre>
<jsp:include page="Footer.jsp" />
</body>
</html>