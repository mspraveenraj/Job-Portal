<%-- 
    Author     : Praveenraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="../_css/College_Footer.css" rel="stylesheet" type="text/css" />
     </head>
    <body>
    <jsp:include page="Header.jsp" />
    <form action="../StudentSearchServlet" method="post">
	<select name="searchby">	
	<option value="name">Name</option>
	<option value="college">College</option>
	<option value="skills">Skills</option>
	<option value="percentage">Percentage</option>
	</select>
	<input type="text" name="searchvalue">
	<select name="skillvalue">
	<option value="c">C</option>
	<option value="c++">C++</option>
	<option value="java">Java</option>
	<option value="c#">C#</option>
	<option value="javascript">Javascript</option>
	</select>
	<input type="submit" value="Search">
	</form>
    <pre>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    </pre>
    <div class ="footer">
        
    </div>
    </body>
</html>
