<%-- 
    Author     : Praveenraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="../_css/mainContent.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <!-- <div class ="mainContent">-->
         <jsp:include page="Header.jsp" />
         
        <table width="100%" border="1" style="margin-bottom:500px">
        <tr bgcolor= #4CAF50;>
    		<th>S.No</th>
    		<th>Job Id</th>
    		<th>Company Name</th>
    		<th>Designation</th>
    		<th>Package</th>
    		<th>Location</th>
    		<th style="width:100px">Last Date to Apply</th>
    		<th style="width:10px">Secondary Percentage</th>
    		<th style="width:10px">Senior Secondary Percentage</th>
    		<th>Degree</th>
    		<th>Branch</th>
    		<th style="width:10px">Percentage</th>
    		<th>Job Description</th>
    		<th>Apply</th>
   		</tr>
   		<tr>
   			<td>1</td>
   			<td>100</td>
   			<td>google</td>
   			<td>Programmer</td>
   			<td>1-2 Lakh</td>
   			<td>Chennai</td>
   			<td>20-03-2018</td>
   			<td>75</td>
   			<td>75</td>
   			<td>BE</td>
   			<td>CSE</td>
   			<td>75</td>
   			<td>Above can Apply</td>
   			<td width="10px"> <input type="button" value="Apply" onclick="alert('Applied Successfully')">
   		</tr>
   		<tr>
   			<td>2</td>
   			<td>1001</td>
   			<td>Oracle</td>
   			<td>Data Analyst</td>
   			<td>6-7 Lakh</td>
   			<td>Pune</td>
   			<td>25-03-2018</td>
   			<td>80</td>
   			<td>80</td>
   			<td>BE</td>
   			<td>CSE</td>
   			<td>75</td>
   			<td>Above criteria can Apply</td>
   			<td> <input type="button" value="Apply" onclick="alert('Applied Successfully')">
   		</tr>
        </table>
         <jsp:include page="Footer.jsp" />
    </body>

</html>
