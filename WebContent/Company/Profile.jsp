<%-- 
    Author     : Praveenraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="../_css/Company_Footer.css" rel="stylesheet" type="text/css" />
      </head>
    <body>
          <jsp:include page="Header.jsp" />
      <h1 align="center">Company Profile</h1>
      <%
     String regId=session.getAttribute("regId").toString();
      String query="select NameOfCompany,CompanyAddress,ContactDetails,CompanySite from CompanyProfile where CompanyID="+ "'"+regId+"'";
      java.sql.ResultSet rs=ConnPack.ConnectionFactory.getInstance().getResultSet(query, "JOBDSN");
      rs.next();

   %>
      <form id="form3" action="../CompanyEntry" method="post">
<table align="center"  width="730">
			<tr >
			<td align="center"  height="35">
			Name of Company:
			</td>
			<td align="center" height="35">
			<input type="text" name="name" value="<%=rs.getString(1)%>">
			</td>
			</tr>
			<tr >
			<td align="center" height="35">
			Company Address:
			</td>
			<td align="center" height="35">
			<input type="text" name="addr" value="<%=rs.getString(2)%>">
			</td>
			</tr>
			<tr >
			<td align="center" height="35">
			Contact Details:
			</td>
			<td align="center" height="35">
			<input type="text" name="cdetails" value="<%=rs.getString(3)%>">
			</td>
			</tr>
			<tr >
			<td align="center" height="35">
			Company URL:
			</td>
			<td align="center" height="35">
			<input type="text" name="url" value="<%=rs.getString(4)%>">
			</td>
			</tr>
			
</table>
<br>

<table align="center" width="730">
<tr >
			<td align="center"  height="35">
			<input type="submit" name="Submit" value="Submit">
			</td>
</tr>
</table>
</form>




















                       <pre>








                        </pre>











                        <div class ="footer">
                        </div>
    </body>
</html>
