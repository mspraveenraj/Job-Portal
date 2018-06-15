<%--
    Author     : Praveenraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
</head>

<body>
    <jsp:include page="Header.jsp" /> 
      <h1 align="center">Graduation Information</h1>
       <jsp:useBean class="StudentSignUp.ExtraList" id="allList" scope="page" />
<form id="form2" action="../GraduationAddNew" method="post">
<table align="center"  width="730">
    
			<tr>
			<td align="center"  height="35">
			Degree:
			</td>
                        <%
                        String degree[]=allList.getGdegreeName();
                        %>
                         
                        <td align="center" height="35">
                       
                         <select name="Degree">
                            <%
                            for(int i=0;i<degree.length;i++)
                                {
                            %>
                           
                            <option><%=degree[i]%></option>
                       
                            <%
                            }
                        %>
                         </select>
                        </td>
                        </tr>
			<tr >
			<td align="center" height="35">
			Branch:
                         <%
                         
                        String Branch[]=allList.getBranchName();
                        %>
			</td>
			<td align="center" height="35">
                            <select name="Branch">
                                 <%
                            for(int i=0;i<Branch.length;i++)
                                {
                            %>
                                <option><%=Branch[i]%></option>
                                <%
                            }
                        %>
                            </select>
			</td>
			</tr>


                        <tr >
			<td align="center" height="35">
			Degree Duration:
			</td>
			<td align="center" height="35">
                            <select name="Duration">
                                  <%
                            for(int i=3;i<7;i++)
                                {
                            %>
                                <option><%=i%></option>
                                 <%
                            }
                        %>
                            </select>
			</td>
			</tr>
                        <tr >
			<td align="center" height="35">
			Institute/College:
                         <%

                        String College[]=allList.getOtherCollegeName();
                        %>
			</td>
			<td align="center" height="35">
                            <select name="name">
                                <option selected="selected" >Other</option>
                                 <%
                            for(int i=0;i<College.length;i++)
                                {
                            	if(College[i]!=null)
                            	{
                            %>
                                <option><%=College[i]%></option>
                                <%
                            	}
                            }
                        %>
                            </select>
			</td>
			</tr>
                        <tr >
			<td align="center" height="35">
			if other please specify:
			</td>
			<td align="center" height="35">
			<input type="text" name="name2">
			</td>
			</tr>
		

                        
			<tr >
			<td align="center" height="35">
			University:
			</td>
			<td align="center" height="35">
			<input type="text" name="university">
			</td>
			</tr>
			<tr >
			<td align="center" height="35">
			Year of Beginning:
			</td>
			<td align="center" height="35">
                            <select name="yob">
                                  <%
                            for(int i=1990;i<2020;i++)
                            {
                            %>
                                <option><%=i%></option>
                                 <%
                            }
                        %>
                            </select>
			</td>
			</tr>
			<tr >
			<td align="center" height="35">
			Year Of Passing:
			</td>
			<td align="center" height="35">
                            <select name="yop">
                                  <%
                            for(int i=1990;i<2020;i++)
                                {
                            %>
                            <option><%=i%></option>
                                 <%
                            }
                        %>
                            </select>
			</td>
			</tr>
			<tr >
			<td align="center" height="35">
			Score Type:
			</td>
			<td align="center" height="35">
                            <input type="radio" name="grp1" value="Percentage" checked="checked" />Percentage
                            <input type="radio" name="grp1" value="CGPA"  />CGPA
                            <input type="radio" name="grp1" value="Grade" />Grade
                        </td>
			</tr>
                        <tr >
			<td align="center" height="35">
			Value:
			</td>
			<td align="center" height="35">
                            <input type="text" name="value" value="" />
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
</body>

</html>