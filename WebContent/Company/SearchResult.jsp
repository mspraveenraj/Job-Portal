<%@page import="Beans.StudentCompanySearchBean"%>
<%@page import="java.util.*,java.sql.*"%>
<%@ page contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Result</title>
 <link href="_css/Company_Footer.css" rel="stylesheet" type="text/css" />
 <link href="_css/Company_Header.css" rel="stylesheet" type="text/css" />
</head>
<body>  
    <div class="myheader">
       <table width="100%" cellspacing="0" cellpadding="0" align="center">
            	<tr valign="top">
                	<td colspan="2"  height="45" >
                            <pre><a href="Company/Home.jsp" >Home Page</a>   <a href="Company/RegCollege.jsp" >Registered Colleges</a> <a href="Company/Profile.jsp" >Company Profile</a>    <a href="Company/Account.jsp" >Company Account</a>    <a href="Company/JobPosting.jsp" >Job Posting</a> <a href="Company/StudentSearch.jsp" >Student Search</a> <a href="Company/Logout" >Logout</a></pre></td>
                </tr>
        </table>
        </div>
    
    <% String nameFromSession=(String)session.getAttribute("UserName");
    String searchBy = (String)request.getParameter("searchby");
    String searchValue=(String)request.getParameter("searchvalue");
    
    
    LinkedList<StudentCompanySearchBean> scsbObj=new LinkedList<StudentCompanySearchBean>();
	LinkedList<String> studentId=new LinkedList<String>();
	PreparedStatement ps,ps1;
	ResultSet resultSet1,rs1;
	try
	{
		System.out.println("\n-----------------------------------------");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/test","root","");
	if(searchBy.equals("name"))
	{
		ps = con.prepareStatement("select studentid from studentmaster where firstname=?;");
	}
	else if(searchBy.equals("college"))
	{
		ps=con.prepareStatement("select studentid from graduation where collegename=?;");
	}
	else if(searchBy.equals("percentage"))
	{
		ps=con.prepareStatement("select studentid from graduation where val=?;");
	}
	else //if(searchBy.equals("skills"))
	{
		ps=con.prepareStatement("select studentid from studentmaster;");
	}
	ps.setString(1,searchValue);
			
	resultSet1 = ps.executeQuery();
	while(resultSet1.next())
	{
		studentId.add(resultSet1.getString(1));
	}
	System.out.println("done1");
	for(String studId:studentId)
	{
		StudentCompanySearchBean searchBean=new StudentCompanySearchBean();
		ps1=con.prepareStatement("select firstname,emailid from studentmaster where studentid=?;");
		ps1.setString(1,studId);
		rs1=ps1.executeQuery();
		while(rs1.next())
		{
			searchBean.setName(rs1.getString(1));
			searchBean.setEmail(rs1.getString(2));
		}
		System.out.println("ok1");
		ps1=con.prepareStatement("select gender,dateofbirth,countryofresidence,contactnumber from personal where studentid=?;");
		ps1.setString(1,studId);
		rs1=ps1.executeQuery();
		while(rs1.next())
		{
			searchBean.setGender(rs1.getString(1));
			searchBean.setDob(rs1.getString(2));
			searchBean.setCountryOfResidence(rs1.getString(3));
			searchBean.setContact(rs1.getString(4));
		}
		ps1=con.prepareStatement("select secvalue,sensecvalue from academic where studentid=?;");
		ps1.setString(1,studId);
		rs1=ps1.executeQuery();
		while(rs1.next())
		{
			searchBean.setSecValue(rs1.getString(1));
			searchBean.setSenSecValue(rs1.getString(2));
		}
		ps1=con.prepareStatement("select degree,branch,collegename,yop,val from graduation where studentid=?;");
		ps1.setString(1,studId);
		rs1=ps1.executeQuery();
		while(rs1.next())
		{
			searchBean.setDegree(rs1.getString(1));
			searchBean.setBranch(rs1.getString(2));
			searchBean.setCollege(rs1.getString(3));
			searchBean.setYearOfPassing(rs1.getString(4));
			searchBean.setCollegeValue(rs1.getString(5));
		}
		scsbObj.add(searchBean);
	}
}
		catch (Exception e) {
			System.out.print("Problem!! OOPs!!!");
			//e.printStackTrace();
		}
    
    
    
    
    
	//SearchResultDao obj= new SearchResultDao();
	//LinkedList<StudentCompanySearchBean> searchBeanObj=obj.getSearchDetails(searchBy,searchValue);
    %>

<table border="1" width="100%" style="text-align:center;">
  <tr bgcolor= #4CAF50;>
    <th>Serial Number</th>
    <th>Name</th>
    <th>Email</th>
    <th>Gender</th>
    <th>Date of Birth</th>
    <th>Country</th>
    <th>Contact</th>
    <th>Secondary Percentage</th>
   	<th>Senior Secondary Percentage</th>
   	<th>Degree</th>
   	<th>Branch</th>
   	<th>College</th>
   	<th>Year of Passing</th>
   	<th>College Percentage</th>
  </tr>

<% int i=1;
	for(StudentCompanySearchBean x:scsbObj)
	{
%>
		<tr>
	  	<td> <% out.print(i++); %>
	    <td> <% out.print(x.getName()); %></td>
	  	<td> <% out.print(x.getEmail()); %></td>
	 	<td> <% out.print(x.getGender()); %> </td>
	 	<td> <% out.print(x.getDob()); %></td>
	 	<td> <% out.print(x.getCountryOfResidence()); %></td>
	 	<td> <% out.print(x.getContact()); %></td>
	 	<td> <% out.print(x.getSecValue()); %></td>
	 	<td> <% out.print(x.getSenSecValue()); %></td>
	 	<td> <% out.print(x.getDegree()); %></td>
	 	<td> <% out.print(x.getBranch()); %></td>
	 	<td> <% out.print(x.getCollege()); %></td>
	 	<td> <% out.print(x.getYearOfPassing()); %></td>
	 	<td> <% out.print(x.getCollegeValue()); %></td>
	 	</tr>
<%
	}
%>
</table>

         <pre>


























         </pre>
         <div class ="footer">
             
         </div>
</body>
</html>