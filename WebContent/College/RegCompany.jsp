<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registered Colleges</title>
 <link href="../_css/College_Footer.css" rel="stylesheet" type="text/css" />
</head>
<body>
<jsp:include page="Header.jsp" />
  <%
  	PreparedStatement ps,ps1;
	ResultSet resultSet1,rs1;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/test","root","");
		ps = con.prepareStatement("select * from companyprofile;");
		rs1=ps.executeQuery();
	%>
	<table border="1" width="100%" style="text-align:center;">
  <tr bgcolor= #4CAF50;>
    <th>Serial Number</th>
    <th>Company Id</th>
    <th>Company Name</th>
    <th>Address</th>
    <th>Contact</th>
    <th>Website</th>
   	</tr>

<%int i=1;
		while(rs1.next())
		{
	%>
			<tr>
		  	<td> <% out.print(i++); %>
		    <td> <% out.print(rs1.getString(1)); %></td>
		  	<td> <% out.print(rs1.getString(2)); %></td>
		 	<td> <% out.print(rs1.getString(3)); %> </td>
		 	<td> <% out.print(rs1.getString(4)); %></td>
		 	<td> <% out.print(rs1.getString(5)); %></td>
		 	</tr>
<%
		}
%>
	</table>
<%
	}
	catch(Exception e)
	{
		System.out.println("Error in RegCompany.jsp");
	}
  %>
  <pre>  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  </pre>
  <div class ="footer">
             
  </div>
</body>
</html>